library(tidyverse)
library(scales)
library(gridExtra)
library(RColorBrewer)
library(grid)


dicionario <- read.csv("dados/dicionario_grupos.csv", fileEncoding = "UTF-8")

grupos_rds <- readRDS(file = "dados/grupos.rds")

chats <- dicionario %>% select(-lastDateID, -firstDateID)

chats <- chats %>% mutate ("chat.id" = keyID) %>%
  relocate(chat.id, .after = keyID)

lista_ids <- chats %>% group_by(chat.id) %>% 
  summarise(list(keyName)) %>% as.list()

rm(lista_ids)


filtro <- function(key_group = "", ano = "", mes = ""){
  
  recorte <- grupos_rds %>% 
    filter (key.group == key_group)
  
  recorte <- recorte[grep(ano, recorte$key.date.chr), ]
  
  recorte <- recorte %>% 
    filter (month(key.date.date) == mes)
  
  return(recorte)
}

data_lim <- function(dfcol) {
  
  ultimo_dia <- max(dfcol)
  primeiro_dia <- min(dfcol)
  
  # Verificando se a última data termina com 31, 30 ou 28
  u_dia <- as.numeric(str_sub(ultimo_dia, start = 9))
  
  # Determinando o passo com base no último dia
  if (u_dia == 31) {
    
    passo <- 3
    to <- 23
    
  } else if (u_dia == 30) {
    
    passo <- 4
    to <- 30
  } else {
    
    passo <- 4
    to <- 23
  }
  
  info <- list(primeiro_dia = primeiro_dia, 
               ultimo_dia = ultimo_dia,
               passo = passo,
               to = to)
  
  return(info)
}

# Parte 1) Grupos

top10_grupos <- chats %>% 
  filter(keyType == "supergroup") %>% 
  arrange(-docCount) %>% 
  head(10) %>% 
  mutate(keyName = paste("Exemplo", row_number()))

# Criar o gráfico
grafico_grupos <- ggplot(top10_grupos) +
  geom_bar(aes(x = docCount, y = reorder(keyName, docCount)), fill = "#6092C0", stat = "identity") +
  geom_text(aes(label = number_format(decimal.mark = ",", big.mark = ".")(docCount), x = docCount, y = reorder(keyName, docCount)), position = position_stack(vjust = 0.8), size = 3, color = "black") +
  scale_y_discrete(expand = c(0.06, 0.06)) +
  scale_x_continuous(expand = expansion(c(0, 0.05)), labels = number_format(decimal.mark = ",", big.mark = ".")) +
  labs(y = "Grupos", x = "Mensagens", title = NULL) +
  theme_classic() +
  theme(panel.grid.minor = element_line(linetype = "dashed"),
        panel.grid.major = element_line(linetype = "dashed"),
        axis.line.x = element_line(color = "#efefef", linewidth = 0.8),
        axis.line.y = element_line(color = "#efefef", linewidth = 0.8),
        axis.text.y = element_text(size = 8),
        axis.ticks = element_blank(),
        axis.text.x = element_text(angle = 45, hjust = 1),
        panel.background = element_blank())

grafico_grupos

ggsave(filename = "dados/top_10_grupos.png", plot = grafico_grupos, width = 20, height = 10, dpi = 800)

# Exemplo do Elastic ----

exemplo_elastic <- read.csv(file = "dados/exemplo_elastic.csv")

exemplo_elastic <- exemplo_elastic[1:5,] %>%
  mutate(Grupos = factor(paste("Exemplo", row_number())))

exemplo_elastic <- exemplo_elastic %>%
  mutate(Mensagens = as.numeric(gsub(",", "", Mensagens)))

grafico_exemplo <- ggplot(exemplo_elastic) +
  geom_bar(aes(x = Mensagens, y = reorder(Grupos, Mensagens)), fill = "#6092C0", stat = "identity") +
  scale_x_continuous(expand = expansion(c(0, 0.05))) +
  labs(y = "Grupos", x = "Mensagens", title = "Exemplo de Gráfico") +
  theme_classic() +
  theme(panel.grid.minor = element_line(linetype = "dashed"),
        panel.grid.major = element_line(linetype = "dashed"),
        axis.line.x = element_line(color = "#efefef", linewidth = 0.8),
        axis.line.y = element_line(color = "#efefef", linewidth = 0.8),
        axis.text.y = element_text(size = 8),
        axis.ticks = element_blank(),
        axis.text.x = element_text(angle = 45, hjust = 1),
        panel.background = element_blank())

print(grafico_exemplo)

ggsave("dados/grafico_exemplo.png", plot = grafico_exemplo, width = 8, height = 6, dpi = 300)

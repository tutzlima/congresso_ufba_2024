# ElasticSearch e linguagem R para análise de violência política na plataforma Telegram

## Introdução

ElasticSearch e linguagem R para análise de violência política na plataforma Telegram

### Sobre mim

Falando brevemente sobre mim: Sou graduando em ciências sociais, estou no segundo semestre do curso, e sou bolsista do Laboratório de Humanidades Digitais com orientação do Professor Leonardo Fernandes Nascimento.

- Interesses: Epistemologia, Humanidades Digitais, Extrema-direita

### Objetivos da Apresentação

Bem, tenho dois objetivos nessa apresentação:

- Contextualização da pesquisa

Para que seja possível tratar do meu plano de trabalho em si.

- Discussão do plano de trabalho com enfoque no método

Visto que é aí que reside o eixo central do meu plano.

## Resumo da Pesquisa

- Surgimento e objetivos
  
A pesquisa surge da observação dos fenômenos propiciados pela plataforma Telegram no ano de 2020 e 2021 e começa, oficialmente, a partir de um edital pelo InternetLab.

A ideia central da pesquisa é

  - Compreender o papel do Telegram no compartilhamento de desinformação em grupos de extrema-direita

Não apenas como uma plataforma de compartilhamento mas, também, de produção de desinformação e dinâmicas próprias que torna possível os

  - Processo de radicalização

Além da formação do que chamamos de "ecossistema multiplataforma de desinformação", onde o Telegram opera como uma "dobradiça"

- Telegram como "dobradiça"

Um ponto comum de conteúdos extremistas que retroalimentam outras redes "de superfície" como o Youtube e Instagram.

## Metodologia

### Teoria Fundamentada

- Referência: *The discovery of grounded theory* (1967) por Glaser e Strauss

A pesquisa parte da *Teoria Fundamentada em dados*, inaugurada pelos sociólogos Glaser (complete o nome) e Strauss (complete o nome), cuja ideia, de forma muito resumida, é o

- Desenvolvimento da análise teórica a partir dos dados observados

Ou seja, realiza-se um esforço de, primeiro observar as dinâmicas dos dados e suas particularidades, e a partir disso construir a teoria.

Importante destacar que estamos tratando de dados não-estruturados, que engloba texto, vídeos, áudios e imagens, por exemplo.

A pesquisa é feita, então, numa abordagem multimétodo e vou discorrer sobre isso agora.

### Métodos na Primeira Fase

Essa divisão não significa um abandono dos seguintes métodos, apenas uma prevalência de outros.

Então, para começar, temos a

#### Mineração de Dados

- Definição e importância (AGGARWAL, Charu C.)

#### Análise Quantitativa com R

Depois disso, partimos para a análise quantitativa, que é onde entra a liguagem R, uma

- Linguagem voltada à análise estatística e visualização gráfica

- Pacotes: `rvest`, `Rselenium`, `tidyverse`, `jsonlite`, `readr`

#### Visualização com R

O `R` tem algumas ferramentas para visualização de dados, como o

- `ggplot2`, sendo o pacote mais usado pela comunidade do R
- `viridis` e `gridExtra` para complementar a customização desses gráficos, e o
- `Shiny`, uma ferramenta que permite criar dashboards e até mesmo aplicações

#### Análise Qualitativa com Atlas.ti

Na análise qualitativa temos o `Atlas.ti`, que é

- DEFINIÇÃO

- Principais recursos: Codes, Families e Networks

Que são recursos que dialogam diretamente com a Teoria Fundamentada.

Então, entramos na

### Segunda Fase: Elastic Stack

- Introdução ao Elastic Stack: ElasticSearch, Kibana, Beats e Logstash

- ElasticSearch como banco de dados não-estruturados

- Funcionalidade conjunta com Kibana para visualização de gráficos e dashboards

## Impactos Metodológicos

E quais os impactos do uso dessa ferramenta? O que ele possibilita para análise de violência política no Telegram?

Bem, a estrutura do Elastic permite uma

- Melhoria considerável no processo de ETL em tempo real

O que facilita mapear, com precisão, o nascimento e morte de grupos, canais e de determinados tópicos que estejam sendo discutidos na Internet, como foi com a PL (bota o número), conhecida como "PL do Aborto"

- Visualização otimizada

Melhor do que falar, é mostrar!

Então eis um pequeno exemplo de como o ElasticSearch e o Kibana otimizam a visualização dos dados:

## Exemplos

### Gráfico em R

Isso é o código de um único gráfico em `R` usando `ggplot2`, ou seja, além de não ser visualmente atraente, seja à quem comece na área ou quem já está acostumado, o `R` não é o melhor meio de construção de gráficos e tabelas na frequência que uma pesquisa com grande volume de dados e em tempo real exige

- Demonstração de um gráfico utilizando `ggplot2`

### Visualização ElasticSearch

Por outro lado, o ElasticSearch e o Kibana permitem a construção de um gráfico de barras como aquele com alguns cliques; A interface da plataforma lhe permite modificar o tipo de gráfico, os parâmetros, legendas, cores, tudo isso, na mesma tela sem grandes dificuldades.

Qualquer pessoa consegue utilizar do ElasticSearch e do Kibana para produzir seus gráficos sem a menor necessidade de qualquer conhecimento de programação.

- Exemplo de dashboard do Kibana

Junto a isso, gerar dashboards também se torna uma tarefa ridicularmente fácil.

### Análise qualitativa

E, como se isso não bastasse, o ElasticSearch permite a visualização dos dados não-estruturados com grande facilidade, permitindo-lhe buscar globalmente por expressões específicas em toda a base de dados, por links, imagens, nome de grupos e canais...

Recortes essenciais para construção da análise, algo que pelo `R` ou pelo `Atlas.ti` encontra limitações técnicas e exige conhecimentos computacionais um pouco maiores.

## Contribuições da Pesquisa

Gostaria de dar mais exemplos concretos de como isso reflete na análise de violência política, mas, dado o tempo e questões de privacidade e conficialidade dos dados, evitei por trazer exemplos específicos.

Por isso mesmo, trago diretamente os resultados da pesquisa até o momento, desde a produção de relatórios à artigos que tratam desde os métodos aos impactos da desinformação e do discurso de ódio no ecossistema multiplataforma de desinformação.

### Relatórios

- Desinformação e teorias da conspiração no Telegram

- Análise das comunicações do 8 de janeiro

### Artigos

- Racismo, misoginia e antisemitismo em chats do Telegram

- Pautas políticas de Jair Bolsonaro nos jornais brasileiros

- Métodos mistos para a análise de grupos bolsonaristas no Telegram

## Conclusão

- Agradecimento

- Contatos: Email e Github
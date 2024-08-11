# ElasticSearch e linguagem R para análise de violência política na plataforma Telegram

ADICIONAR REFERÊNCIA DAS IMAGENS: ATLAS.TI & EXEMPLO ATLAS.TI

---

## Introdução

ElasticSearch e linguagem R para análise de violência política na plataforma Telegram

### Sobre mim

Falando brevemente sobre mim: Sou graduando em ciências sociais, estou no segundo semestre do curso, sou bolsista do Laboratório de Humanidades Digitais com orientação do Professor Leonardo Fernandes Nascimento.

### Objetivos da Apresentação

Meus objetivos nessa apresentação:

- Contextualização da pesquisa

Para que seja possível tratar do meu plano de trabalho em si.

- Discutir o plano tendo o método como guia

## Resumo da Pesquisa

- Surgimento e objetivos

A pesquisa surge da observação dos fenômenos propiciados pela plataforma Telegram no ano de 2020 e 2021, começando oficialmente a partir de um edital pelo InternetLab.

A ideia central da pesquisa é

  - Compreender o papel do Telegram no compartilhamento de desinformação em grupos de extrema-direita

## Metodologia

Sobre a metodologia em si, a pesquisa está baseada na
 
### Teoria Fundamentada

Elaborada por 

- Barney Glaser e Anselm Strauss

Cuja ideia central é o

- Desenvolvimento da análise teórica a partir dos dados observados

Ou seja, realiza-se um esforço de, primeiro observar as dinâmicas dos dados e suas particularidades, e a partir disso construir a teoria.

Importante destacar que estamos tratando de dados não-estruturados, que engloba texto, vídeos, áudios e imagens, por exemplo.

A pesquisa é feita, então, numa abordagem multimétodo e vou discorrer sobre isso agora.

### Métodos na Primeira Fase

Essa divisão não significa um abandono dos seguintes métodos, apenas uma prevalência de outros.

Então, para começar, temos a

#### Análise Quantitativa com R

- Uma linguagem voltada à análise estatística e visualização gráfica, que é o que possibilita a

#### Mineração de Dados

- o estudo da coleta, limpeza e análise dos dados, o que culmina no processo de

#### ETL

Que corresponde, respectivamente, à

- Extração: Seja por raspagem ou requisições via API; A
- Transformação: Construção de variáveis que contribuam à análise do objeto, sendo portanto uma decisão metodológica e não meramente computacional; e o
- Armazenamento: o formato no qual os dados serão armazenados, que também leva em conta uma série de questões computacionais e analíticas 

#### Visualização com R

O grandioso pacote `ggplot2`, que é a principal biblioteca para construção de gráficos no R, e o `Shiny`, uma biblioteca que lhe permite construir desde dashboards interativos até aplicações ou sites.

#### Análise Qualitativa com Atlas.ti

Na análise qualitativa temos o `Atlas.ti`, que é um

- Software que possibilita a análise qualitativa de dados com o auxílio do computador, que lhe permite analisar grandes base de dados

Seus

- Principais recursos são as codificações, as famílias e as "redes de conexões", recursos que dialogam diretamente com a abordagem da teoria fundamentada

Então, entramos na

### Segunda Fase: um salto metodológico

e para entender por que estou dando essa ênfase é preciso tratar de algumas

- Particularidades do objeto

Em primeiro temos 

  - "Apagões" frequentes, isto é, a partir do momento em que o discurso de ódio ou o conteúdo desinformativo cumpriu seu "papel social", estas mensagens são apagadas, uma prática que ocorre constantemente, algo próprio da dinâmica desses públicos

Junto a isso temos o

  - Nascimento e morte de grupos e canais, que assumem uma postura de "zumbi", como chamamos na pesquisa. Ou seja, determinado chat para de enviar mensagens e "nasce", entre aspas, um novo que contêm ou nome ou conteúdo semelhante, sendo isso uma forma de evitar a vigilância desses indivíduos

Assim chegamos nas

- Limitações do `R` e do `Atlas.ti`

Resumidamente, o `R` não permite a realização do ETL com tanta qualidade quanto o recurso que veremos logo mais e, para qualquer análise exploratória, ele exige um mínimo de conhecimento que, para quem nunca programou, pode se tornar um grande obstáculo; No sentido do `Atlas.ti`, por mais que ele seja voltado à análise de grandes bases de dados, ele não te oferece uma visualização tão boas desses dados de forma geral, para uma análise exploratória por exemplo, além de não comportar recursos básicos de análise quantitativa.

Então, trago dois breves exemplos sobre essas limitações: Isso é o código necessário para construir um simples gráfico de barras no `R`; e esta é visualização ofertada pelo `Atlas.ti`:

#### ElasticSearch & Kibana

Dados essas limitações, recorremos então ao uso do `ElasticSearch`, uma estrutura para bancos de dados não-estruturados, que funciona conjuntamente ao `Kibana`, responsável pela construção de gráficos e dashboards.

E quais os impactos do uso dessa ferramenta? O que ele possibilita para análise de violência política no Telegram?

Bem, a estrutura do Elastic permite uma

- Melhoria considerável no processo de ETL em tempo real

O que facilita mapear, com precisão, o nascimento e morte de grupos, canais e de determinados tópicos que estejam sendo discutidos na Internet; uma

- Visualização otimizada

Que já mostrei como é feito um gráfico em `R` e logo veremos como é feito pelo uso do `ElasticSearch` e do `Kibana`; e uma

- Análise qualitativa otimizada

Que também irei demonstrar como e porquê.

Então, partindo para os

## Exemplos

Essa é a interface disponibilizada pelo `ElasticSearch` e do `Kibana`, onde você pode construir aquele mesmo gráfico de barras como aquele com alguns cliques; Além disso, a interface da plataforma lhe permite modificar o tipo de gráfico, os parâmetros, legendas, cores, tudo isso, na mesma tela sem grandes dificuldades, qualquer pessoa consegue utilizar do ElasticSearch e do Kibana para produzir seus gráficos sem a menor necessidade de qualquer conhecimento de programação.

E, no âmbito da análise qualitativa, o ElasticSearch permite a visualização dos dados não-estruturados com grande facilidade como é possível perceber nessa seção (*data explore*), onde mostra os dados e já lhe oferece gráficos de barras simples; Na barra de busca, você pode pesquisar por expressões específicas em toda a base de dados e, a depender das variáveis que foram construídas no processo dito anteriormente, você pode buscar por links, imagens, nome de grupos e canais etc...

Por fim, temos a ferramente Períodos de tempo, algo essencial para a análise e que, pelo `R` ou pelo `Atlas.ti`, encontra limitações técnicas e exige conhecimentos computacionais um pouco maiores.

## Contribuições da Pesquisa

E gostaria de dar mais exemplos concretos de como isso reflete na análise de violência política, mas, dado o tempo e, principalmente, questões de privacidade e conficialidade dos dados, evitei por trazer exemplos explícitos com dados da pesquisa em si.

Por isso mesmo, trago a produção de alguns relatórios e artigos que tratam desde os métodos aos impactos da desinformação e do discurso de ódio no ecossistema multiplataforma de desinformação.

## Conclusão

Deixarei as referências à consulta pelo Qr code ou por um link externo, uma página que contêm apenas as referências, e me despeço e agradeço pela atenção!

---
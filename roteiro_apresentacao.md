# ElasticSearch e linguagem R para análise de violência política na plataforma Telegram

---

## Introdução

Boa tarde, me chamo Arthur e vou apresentá-los ao plano de trabalho que realizei na Iniciação Científica:

**ElasticSearch e linguagem R para análise de violência política na plataforma Telegram**

Falando brevemente sobre mim: Sou graduando em ciências sociais, estou no terceiro semestre do curso, sou membro do Laboratório de Humanidades Digitais com orientação do Professor Leonardo Fernandes Nascimento.

### Objetivos da Apresentação

Meus objetivos nessa apresentação dois:

Breve contextualização da pesquisa, para que seja possível tratar do meu plano de trabalho em si.

Discutí-lo tendo o método como guia, visto que esse é o foco do plano.

## Resumo da Pesquisa

- Surgimento e objetivos

A pesquisa surge da observação dos fenômenos propiciados pela plataforma Telegram no ano de 2020 e 2021, começando oficialmente a partir de um edital pelo InternetLab, um centro independente de pesquisa, em junho de 2021.

A ideia central da pesquisa é compreender o papel do Telegram na produção e compartilhamento de desinformação em grupos de extrema-direita.

## Desinformação

DEFINIÇÃO DO TSE E UMA OTA AÍ

Ou seja, Desinformação compreende a informação falsa e a má informação.

## Metodologia

Sobre a metodologia em si, a pesquisa se baseia na
 
### Teoria Fundamentada

Elaborada por Anselm Strauss e Barney Glaser no "A descoberta da teoria fundamentada", cuja ideia central é o

-Desenvolver a análise a partir dos dados observados

Ou seja, realiza-se um esforço de, primeiro observar as dinâmicas dos dados e suas particularidades, e a partir disso construir a teoria, uma metodologia essencialmente *indutiva*.

Sobre os dados, é importante destacar que estamos tratando de dados não estruturados, que englobam textos, vídeos, áudios e imagens, por exemplo.

A pesquisa é feita, então, numa abordagem multimétodo.

### Métodos na Primeira Fase

#### Análise Quantitativa com R

R é Uma linguagem voltada à análise estatística e visualização gráfica mas não se limita a isso. Apesar da coleta da pesquisa se basear no `Pyrogram`, um framework em Python, o R também possibilita esse processo.

#### Mineração de Dados

- o estudo da coleta, limpeza, processamento e análise dos dados, o que culmina no processo de

#### ETL

Que corresponde, respectivamente, à

- Extração: Seja por raspagem da web ou requisições via API (["APIs são mecanismos que permitem que dois componentes de software se comuniquem usando um conjunto de definições e protocolos"](https://aws.amazon.com/pt/what-is/api/)), que tanto o Python quanto o R fazem; 

- Transformação ou manipulação dos dados: que diz respeito a filtragem dos dados ou construção de variáveis que contribuam à análise do objeto. Ou seja, a construção de categorias analíticas, sendo uma decisão metodológica e não meramente computacional;

Para exemplificar, pense que você quer coletar mensagens de um grupo no WhatsApp e quer saber quais os indivíduos que mais interagem entre si naquele grupo, caso essa variável não exista no conjunto de variáveis que a API lhe fornece, você terá que fazê-la.  

- Armazenamento: o formato no qual os dados serão armazenados, que também leva em conta uma série de questões computacionais, como o tamanho dos dados, e analíticas, pois o formato dos dados refletem neles mesmos e, a depender, o formato implica algumas dificuldades numa próxima análise.

No caso da pesquisa, os dados são extraídos pela API; armazenados "em sua forma original numa instância do PostgreSQL", um "sistema de banco de dados relacional", um banco de dados que organizam os dados em relações predefinidas, armazenado-os em uma ou mais tabelas; depois são transformados nesse mesmo SQL.

Antes, o processo de ETL da pesquisa finalizava aí, hoje em dia, essa etapa de armazenamento deveria estar subdivida em: armazenamento no SQL, transformação dos dados no SQL e, então, ingestão dos dados no ElasticSearch.

Então, o R entra precisamente nessa parte da análise quantitativa, como eu disse, ele é uma linguagem de análise estátistica e visualização gráfica.

#### Visualização com R

O R comporta o `ggplot2`, um sistema de criação declarada de gráficos, disponibilizado como pacote, e o `Shiny`, uma pacote que para construção de dashboards interativos ou webApps.

#### Análise Qualitativa com Atlas.ti

Na análise qualitativa temos o `Atlas.ti`, que é um

- Software de análise qualitativa de dados com o auxílio do computador, que lhe permite analisar grandes volumes de dados

- Seus principais recursos são as codificações, as famílias e as "redes de conexões", recursos que dialogam diretamente com a abordagem da teoria fundamentada.

ARANTES AQUI!!

Porém, dada as condições da pesquisa, foram necessárias algumas melhorias no método, tanto no ETL quanto na análise qualitativa.

### Melhorias no método

E para entendermos isso vou destacar duas

- Particularidades do objeto

Em primeiro temos 

  - "Apagões" frequentes, isto é, a partir do momento em que o discurso de ódio ou o conteúdo desinformativo cumpriu seu "papel social", produziu o efeito que se pretendia, estas mensagens são apagadas, uma prática que ocorre constantemente, algo próprio da dinâmica desses públicos

Junto a isso temos o

  - Nascimento e morte de grupos e canais, que frequentemente assumem uma postura de "zumbi", como chamamos na pesquisa. Ou seja, determinado chat para de enviar mensagens, cessa o funcionamento, e "nasce", entre aspas, um novo que contêm nome ou conteúdo semelhante, sendo isso uma forma de evitar a vigilância e o rastreamento dessas pessoas


Então, como se não bastasse lidarmos com grandes volumes de dados, produzidos diariamente, são dados extremamente frágeis, são voláteis a ponto de coletarmos um chat hoje e amanhã nada daquilo existir.

Assim chegamos nas

- Limitações do `R` e do `Atlas.ti`

Resumidamente, o `R` para qualquer análise exploratória exige um mínimo de conhecimento que, para quem nunca programou, é um grande obstáculo; No sentido do `Atlas.ti`, por mais que ele seja voltado à análise de grandes bases de dados, ele não te oferece uma visualização tão boa desses dados de forma geral, e ele náo é a ferramenta ideal para lidarmos com dados tão efêmeros e que exigem não só a coleta e o armazenamento, mas a análise em tempo real.

Então, trago dois breves exemplos sobre essas limitações: 

- Esse é o código necessário para construir um gráfico de barras minimamente bonito no `R`;

- E esta é visualização ofertada pelo `Atlas.ti`, no caso uma simples nuvem de palavras.

#### ElasticSearch & Kibana

Dados essas limitações, recorremos então ao uso do `ElasticSearch`, um bancos de dados não estruturados, que funciona conjuntamente ao `Kibana`, responsável pela construção de gráficos e dashboards.

E quais os impactos do uso dessa ferramenta? O que ele possibilita para análise de violência política no Telegram?

Bem, a estrutura do Elastic permite uma

- Melhoria considerável no processo de ETL, especialmente no armazenamento em tempo real, aquela limitação que apontei no uso exclusivo do R

O que facilita mapear, com precisão, o nascimento e morte de grupos, canais e de determinados tópicos que estejam sendo discutidos na Internet; uma

- Visualização otimizada

Que já mostrei como é feito um gráfico em `R` e logo veremos como é feito pelo uso do `ElasticSearch` e do `Kibana`; e uma

- Análise qualitativa otimizada

Que também irei demonstrar como e porquê.

Então, partindo para os

## Exemplos

Essa é uma imagem que compila os recursos ofertados pelo ElasticSearch e o Kibana, mostrando que você pode fazer aquele mesmo gráfico de barras como aquele com alguns cliques; Além disso, a interface da plataforma lhe permite modificar o tipo de gráfico, os parâmetros, legendas, cores, tudo isso, na mesma tela sem grandes dificuldades, qualquer pessoa consegue utilizar o ElasticSearch e o Kibana sem qualquer conhecimento de programação.

E, no âmbito da análise qualitativa, o ElasticSearch permite a visualização dos dados não estruturados com grande facilidade como é possível perceber nessa seção (*data explore*), onde mostra os dados e já lhe oferece gráficos de barras simples; Na barra de busca, você pode pesquisar por expressões específicas em toda a base de dados e, a depender das variáveis que foram construídas no processo dito anteriormente, você pode buscar por links, imagens, nome de grupos e canais etc...

Por fim, temos a ferramente Períodos de tempo, algo essencial para a análise e que, pelo `R` ou pelo `Atlas.ti`, encontra limitações técnicas e exige conhecimentos computacionais um pouco maiores.

## Exemplo real

Então, para demonstrar o uso disso tudo, vou simular uma análise exploratória com nossos dados que realmente ocorreu.




## Contribuições da Pesquisa

E gostaria de dar mais exemplos concretos de como isso reflete na análise de violência política, mas, dado o tempo e, principalmente, questões de privacidade e conficialidade dos dados, evitei por trazer exemplos explícitos com dados da pesquisa em si.

Por isso mesmo, trago a produção de alguns relatórios e artigos que tratam desde os métodos aos impactos da desinformação e do discurso de ódio no ecossistema multiplataforma de desinformação.

## Conclusão

Deixarei as referências à consulta pelo Qr code ou por um link externo, uma página que contêm apenas as referências, e me despeço e agradeço pela atenção!

---

## Referências soltas

https://shiny.posit.co/

https://ggplot2.tidyverse.org/

https://www.postgresql.org/

https://docs.pyrogram.org/

https://cloud.google.com/learn/what-is-a-relational-database?hl=pt-BR

https://revista.internetlab.org.br/publicos-refratados-grupos-de-extrema-direita-brasileiros-na-plataforma-telegram/


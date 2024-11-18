# ElasticSearch e linguagem R para análise de violência política na plataforma Telegram

---

## Introdução

Boa tarde, me chamo Arthur e vou apresentá-los o plano de trabalho que realizei na Iniciação Científica:

**ElasticSearch e linguagem R para análise de violência política na plataforma Telegram**

### Objetivos da Apresentação

Meus objetivos nessa apresentação são três:

- Breve contextualização da pesquisa, para que seja possível tratar do meu plano de trabalho em si.

- Expôr a "evolução" dos métodos utilizados e, por fim, 

- Apresentar as potencialidades do R e do ElasticSearch numa pesquisa em ciências sociais computacionais, visto a ênfase do plano de trabalho na questão metodológica.

## Resumo da Pesquisa

- Surgimento e objetivos

A pesquisa surge da observação de determinados fenômenos ocorridos pela ou na plataforma Telegram, que já tem o histórico de ser uma plataforma que propicia processos de radicalização e diversas atividades ilegais visto seus mecanismos de automação e privacidade, mas o interesse principal da pesquisa surge pelo impacto do Telegram nos anos de 2020 e 2021 no Brasil, como a presença do aplicativo em mais da metade dos celulares no país [^1] unida à movimentação ou retorno ao app por figuras da direita [^2], a suspenção das contas de Donald Trump no Instagram e no Facebook [^3] que acabou minando a imagem do WhatsApp, fora atualizações de privacidade realizadas na época... enfim, uma série de fatores que influenciaram na movimentação da direita e da extrema-direita no Telegram. A pesquisa começa oficialmente a partir de um edital pelo InternetLab, em junho de 2021.

[^1]: https://www.em.com.br/app/noticia/tecnologia/2021/09/02/interna_tecnologia,1301935/telegram-esta-em-53-dos-smartphones-brasileiros-veja-mais.shtml

[^2]: https://www.poder360.com.br/brasil/direita-ensaia-migracao-ao-telegram-por-relacao-de-whatsapp-com-facebook/

[^3]: https://www.poder360.com.br/internacional/perfis-de-trump-no-facebook-e-instagram-sao-bloqueados-por-tempo-indeterminado/

A ideia central da pesquisa é compreender o papel do Telegram na produção e compartilhamento de desinformação em chats brasileiros de extrema-direita.

## (VAMOS VER SE A GENTE MANTEM ISSO AQUI) Desinformação

DEFINIÇÃO DO TSE E UMA OTA AÍ

Ou seja, Desinformação compreende a informação falsa e a má informação.

## Metodologia e sua "evolução"

Sobre a metodologia em si, a pesquisa se baseia na
 
### Teoria Fundamentada

Elaborada por Anselm Strauss e Barney Glaser no "A descoberta da teoria fundamentada", cuja ideia central é o

- Desenvolver a análise a partir dos dados observados

Se realiza um esforço de, primeiro, observar as dinâmicas dos dados e suas particularidades, e a partir disso construir a teoria, uma metodologia essencialmente *indutiva*.

Sobre os dados, é importante destacar que estamos tratando de dados não estruturados, que englobam textos, vídeos, áudios e imagens, por exemplo.

A pesquisa é feita, então, numa abordagem multimetodológica e, na análise quantitativa, temos o `R`.

>Quais são os métodos da teoria fundamentada? Para simplificar, seus mé-
todos baseiam-se em diretrizes sistemáticas, ainda que flexíveis, para coletar
e analisar os dados visando à construção de teorias "fundamentadas" nos
próprios dados. Essas diretrizes fornecem um conjunto de princípios gerais
e dispositivos heurísticos, em vez de regras pré-formuladas (ver também
Atkinson, Coffey e Delamont, 2003). Assim, os dados formam a base da nossa
teoria, e a nossa análise desses dados origina os conceitos que construímos.
Os pesquisadores que utilizam a teoria fundamentada reúnem dados para
elaborar análises teóricas desde o início de um projeto. Tentamos descobrir o
que ocorre nos ambientes de pesquisa nos quais integramos e como é a vida
dos nossos participantes de pesquisa. Estudamos a forma como eles explicam
seus enunciados e ações, bem como questionamos a compreensão analítica
que podemos ter sobre eles.

#### Análise Quantitativa com R

R é uma linguagem voltada à análise estatística e visualização gráfica mas não se limita a isso. O R permite ralizarmos, por exemplo, a

#### Mineração de Dados

- o estudo da coleta, limpeza, processamento e análise dos dados, o que culmina no processo de

Que desagua no processo

#### ETL

- Extração: Seja por raspagem da web ou requisições via API

- Transformação ou manipulação dos dados: que diz respeito a filtragem dos dados ou construção de variáveis que contribuam à análise do objeto. Ou seja, a construção de categorias analíticas, sendo uma decisão metodológica e não meramente computacional;

- Armazenamento: que também leva em conta uma série de questões computacionais, como o tamanho dos dados, e, de novo, metodológicas, pois o formato dos dados refletem neles mesmos e, a depender, o formato implica algumas dificuldades numa próxima análise.

#### Visualização com R

O R comporta o `ggplot2`, um sistema de criação declarada de gráficos disponibilizado como pacote, e o `Shiny`, uma pacote que para construção de dashboards interativos ou webApps.

Então, o R entra precisamente nessa parte da análise exploratória, visualizar medidas de posição ("são utilizadas para resumir, em um único número, o conjunto de dados observados da variável em estudo") e dispersão ("variabilidade" dos dados), na mineração de dados e na visualização gráfica.

O R também permite análise qualitativa mas não é a melhor ferramenta pra isso.

#### Análise Qualitativa com Atlas.ti

Na análise qualitativa temos o `Atlas.ti`, que é um

- Software de análise qualitativa de dados com o auxílio do computador, que lhe permite analisar grandes volumes de dados

- Seus principais recursos são as codificações, as famílias e as "redes de conexões", recursos que dialogam diretamente com a abordagem da teoria fundamentada.

Porém, dada as condições da pesquisa, foram necessárias algumas melhorias no método, tanto no ETL quanto na análise qualitativa.

## Melhorias no método: ElasticSearch

E para entendermos isso vou destacar duas

- Particularidades do objeto

Em primeiro temos 

  - "Apagões" frequentes, isto é, a partir do momento em que o discurso de ódio ou o conteúdo desinformativo cumpriu seu "papel social", produziu o efeito que se pretendia, estas mensagens são apagadas, uma prática que ocorre constantemente, algo próprio da dinâmica desses públicos

Junto a isso temos o

  - Nascimento e morte de grupos e canais que, quando não são deletados mesmos, frequentemente assumem uma postura de "zumbi", como chamamos na pesquisa. Ou seja, determinado chat para de enviar mensagens, cessa o funcionamento, e "nasce", entre aspas, um novo que contêm nome ou conteúdo semelhante, sendo isso uma forma de driblar a vigilância do conteúdo compartilhado e o rastreamento dessas pessoas

Então, como se não bastasse lidarmos com grandes volumes de dados, produzidos diariamente, são dados efêmeros, voláteis a ponto de coletarmos um chat hoje e amanhã nada daquilo existir.

Disso temos as

- Limitações do `R` e do `Atlas.ti`

No `R`m resumidamente, para tanto o ETL quanto qualquer análise exploratória , é necessário um mínimo de conhecimento que, para quem nunca programou, é um grande obstáculo; No sentido do `Atlas.ti`, por mais que ele seja voltado à análise de grandes bases de dados, ele não te oferece uma visualização tão boa desses dados de forma geral, e ele náo é a ferramenta ideal para lidarmos com dados tão efêmeros e que exigem não só a coleta e o armazenamento, mas a análise em tempo real.

Assim chegamos no uso do

#### ElasticSearch & Kibana

`ElasticSearch` é um bancos de dados não estruturados, que funciona conjuntamente ao `Kibana`, responsável pela construção de gráficos e dashboards.

Quero argumentar como o ElasticSearch (e o Kibana) dão conta, em boa medida, dessas limitações que falei, e por consequência vou mostrar a potencialidade do ElasticSearch numa pesquisa em Ciências Sociais Computacionais, expondo os impactos dessas ferramentas, o que elas possibilitam para análise de violência política no Telegram, por exemplo.

Bem, a estrutura do Elastic permite uma

- Melhoria considerável no processo de ETL, especialmente no armazenamento em tempo real, aquela limitação que apontei no uso exclusivo do R e mesmo na inserção dos dados no Atlas.ti para análise qualitativa

E isso facilita "mapear", com precisão, o nascimento e morte de grupos, canais e de determinados tópicos que estejam sendo discutidos na Internet; uma

- Visualização otimizada

(UNIR O GRÁFICO DO R COM A IMAGEM DO ELASTIC)

Essa é uma imagem que compila os recursos ofertados pelo ElasticSearch e o Kibana, mostrando que você pode fazer aquele mesmo gráfico de barras como aquele com alguns cliques; Além disso, a interface da plataforma lhe permite modificar o tipo de gráfico, os parâmetros, legendas, cores, tudo isso, na mesma tela sem grandes dificuldades, qualquer pessoa consegue utilizar o ElasticSearch e o Kibana sem qualquer conhecimento de **programação**.

- Análise qualitativa otimizada

E, no âmbito da análise qualitativa, o ElasticSearch facilita a visualização dos dados, como é possível perceber nessa seção (*data explore*), onde mostra os dados e já lhe oferece gráficos de barras simples; Na barra de busca, você pode pesquisar por expressões específicas em toda a base de dados e, a depender das variáveis que foram construídas no processo dito anteriormente, você pode buscar por links, imagens, nome de grupos e canais... Temos também a ferramenta de Períodos de tempo, algo essencial para a análise e que, pelo `R` exige conhecimentos computacionais e pelo `Atlas.ti` requer um novo recorte, uma nova seleção dos documentos primários.

## Contribuições da Pesquisa

E gostaria de dar mais exemplos concretos de como isso reflete na análise de violência política, mas, dado o tempo e, principalmente, questões de privacidade e fragilidade dos dados, evitei por trazer exemplos explícitos com dados da pesquisa em si.

Por isso mesmo, trago a produção de alguns relatórios e artigos que tratam desde os métodos aos impactos da desinformação e do discurso de ódio no ecossistema multiplataforma de desinformação observado.

## Conclusão

Deixarei as referências à consulta pelo Qr code ou por um link externo, uma página que contêm apenas as referências, e me despeço e agradeço pela atenção!

---

No lugar do exemplo do Boulos, poderíamos demonstrar tudo isso que falamos reproduzindo a metodologia da pesquisa mesmo: entramos num GRUPO (mais interessante), raspamos as mensagens (via RSelenium, provavelmente), armazenamos isso, e ou fazemos tudo pelo atlas.ti & R ou vemos como subir tudo isso pro elastic mesmo, um elastic nosso (caso ele tenha uma versão gratuita).

## Referências soltas

https://www.em.com.br/app/noticia/tecnologia/2021/09/02/interna_tecnologia,1301935/telegram-esta-em-53-dos-smartphones-brasileiros-veja-mais.shtml

https://www.poder360.com.br/brasil/direita-ensaia-migracao-ao-telegram-por-relacao-de-whatsapp-com-facebook/

https://www.poder360.com.br/internacional/perfis-de-trump-no-facebook-e-instagram-sao-bloqueados-por-tempo-indeterminado/

https://shiny.posit.co/

https://ggplot2.tidyverse.org/

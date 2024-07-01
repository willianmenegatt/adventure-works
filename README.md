# Desafio - Adventure Works

# Contexto

A seguinte empresa contratou você: Adventure Works (AW), uma indústria de bicicletas em franco crescimento que se orgulha de possuir mais de 500 produtos distintos, 20.000 clientes e 31.000 pedidos. Para manter seu ritmo de crescimento e se diferenciar da concorrência, a Adventure Works quer utilizar seus dados de forma estratégica, norteando suas decisões para se tornar uma empresa data driven. A diretoria da Adventure Works já listou uma série de perguntas que ela quer responder através de cruzamentos dos dados, e que devem guiar o desenvolvimento das tabelas de fatos e dimensões do data warehouse. Para iniciar o projeto e obter resultados rápidos, a opção foi iniciar pela área de vendas (sales), mas algumas tabelas de outras áreas podem ser necessárias para conseguir as informações desejadas.

Nas conversas iniciais, você também identificou que o projeto não é unanimidade dentro da empresa e que há dúvidas sobre o cronograma, custos envolvidos e se haverá retorno sobre o investimento realizado.

O projeto foi idealizado e patrocinado pelo diretor de inovação da AW, João Muller, e também tem apoio do CEO da empresa, Carlos Silveira, que vê no uso de dados um diferencial estratégico em longo prazo. Porém, na visão da diretora comercial, Silvana Teixeira, o valor investido no projeto poderia ter sido direcionado para ações promocionais que geram, em sua opinião, resultados de venda imediatos. Além disso, ela ainda não consegue enxergar como a criação de uma infraestrutura moderna de dados vai auxiliar em seu departamento comercial, já que promessas de tornar a área data driven, feitas por fornecedores de outros sistemas (como o CRM e Web Analytics), não conseguiram atingir os resultados prometidos.

Um pedido especial do CEO, Carlos Silveira, é que com a construção dessa plataforma de dados haja uma garantia da qualidade e veracidade dos dados de saída, ou seja, que time de Analytics Engineers consiga confirmar que a informação está de acordo com o levantado pela equipe de auditoria da contabilidade. Um exemplo que Carlos mencionou, foi de que as vendas brutas no ano de 2011 foram de $12.646.112,16. Portanto, ele gostaria que fossem realizados testes para garantir a veracidade desse valor nos modelos que serão construídos conforme um workshop do Modern Data Stack que ele assistiu recentemente.

Além dessas pessoas, o diretor de TI, Nilson Ramos, é responsável por garantir o acesso aos dados e indicou um analista, Gabriel Santos, para auxiliá-lo nesse acesso. Gabriel atualmente é responsável por administrar os bancos de dados e responder perguntas pontuais das áreas de negócio que necessitem o uso de SQL. Ele tem uma agenda bem limitada, então a coordenação da comunicação e a agilidade nas interações são essenciais para garantir que todos os dados necessários estejam disponíveis para o projeto.

Descrição dos dados
A Adventure Works possui um banco de dados transacional (PostgreSQL) que armazena os dados de suas diferentes áreas. Esses dados estão distribuídos em 68 tabelas divididas em 5 schemas: HR (recursos humanos), sales (vendas), production (produção) e purchasing (compras).

Para acessar esse diagrama completo, ver o arquivo AdventureWorksERD.jpeg neste projeto.

Instruções para ingestão de dados (EL)
Existe um schema chamado raw_adventure_works no database usado no curso e deve ser usado como os dados brutos.

Entrega
A Adventure Works confia na sua capacidade técnica para desenhar e implementar a sua infraestrutura moderna de analytics do início ao fim, que deverá conter os itens de 1 a 5 a seguir.

1 - Diagrama conceitual do data warehouse em formato PDF: crie o modelo conceitual com as tabelas de fatos e dimensões necessárias para responder às perguntas de negócio do item 4. Mostrar de forma resumida quais as tabelas fonte que foram utilizadas para criar cada dimensão e a tabela fato. (Sugestão de ferramenta: draw.io)

2 - Configuração de um data warehouse na nuvem e configuração do dbt. Sugestão: Snowflake e dbt Cloud.

3 - Transformação de dados: transforme os dados brutos utilizando o dbt (sugestão: dbt Cloud). Essa transformação deve incluir os seguintes pontos:
a - documentação das tabelas e colunas nos marts
b - testes de sources
c - testes nas primary keys das tabelas de dimensão e fatos
d - teste de dados (lembro do pedido do Carlos)
e - O código precisa estar em um repositório (sugestão: github). Você deve disponibilizar o link do repositório no Github.

4 - Painéis de BI: crie em uma ferramenta à sua escolha, mas que permita você responder as seguintes perguntas de negócio:
a - Qual o número de pedidos, quantidade comprada, valor total negociado por produto, tipo de cartão, motivo de venda, data de venda, cliente, status, cidade, estado e país?
b - Quais os produtos com maior ticket médio por mês, ano, cidade, estado e país? (ticket médio = Faturamento bruto - descontos do produto / número de pedidos no período de análise)
c - Quais os 10 melhores clientes por valor total negociado filtrado por produto, tipo de cartão, motivo de venda, data de venda, status, cidade, estado e país?
d - Quais as 5 melhores cidades em valor total negociado por produto, tipo de cartão, motivo de venda, data de venda, cliente, status, cidade, estado e país?
e - Qual o número de pedidos, quantidade comprada, valor total negociado por mês e ano (dica: gráfico de série de tempo)?
f - Qual produto tem a maior quantidade de unidades compradas para o motivo de venda “Promotion”?

Essas são as perguntas mínimas que têm de serem respondidas por análises feitas no dashboard criado, porém um dashboard completo e bem estruturado também contará na avaliação final da entrega do quesito BI.


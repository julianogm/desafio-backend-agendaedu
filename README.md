Link para o repositório com a descrição do desafio : https://github.com/agendakids/desafio-backend

A aplicação utiliza Ruby 2.6.5, e Rails 6.0. 
Para os testes, é utilizado Rspec 3.10, junto com outras gems, como FactoryBot 6.2. 
Como banco de dados é utilizado sqlite3. 
Uma gem utilizada que vale destacar é a activerecord-import, pois com ela o processo de carregar o arquivo csv e salvar os dados no banco teve o tempo bastante reduzido (em torno de 1 minuto).

A aplicação consiste em uma tela inicial com opções para carregar um arquivo, listar todos os deputados, ou listar os deputados por estado. Na tela onde são listados os deputados, é exibido um link no nome dos mesmos para carregar os detalhes das despesas de cada um. Na tela dos detalhes são exibidos a foto do deputado em questão, junto de informações públicas e a soma do gasto total dos mesmos, e em uma tabela são exibidos os detalhes de cada despesa do deputado que foi solicitado o reembolso.

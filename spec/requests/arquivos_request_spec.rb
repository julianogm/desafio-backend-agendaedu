RSpec.describe 'arquivos requests', type: :request do
  describe 'controller methods' do

    let(:legislatura) { FactoryBot.create :legislatura }
    let(:deputado) { FactoryBot.create :deputado, legislatura: legislatura }
    let(:file) { File.new(fixture_path + '/arquivo.csv')}
    
    describe '#index' do
      it 'retorna status 200 para todos os deputados' do
        get carregar_path
        expect(response).to have_http_status(200)
        expect(response.body).to include("Carregar Arquivo")
      end
    end
    
    describe '#import' do
      it 'carrega o arquivo' do
        post carregar_path , params: { import_file: file }
        expect(response).to redirect_to(carregar_path)
      end
    end
  end
end
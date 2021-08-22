RSpec.describe 'deputados requests', type: :request do

  describe 'controller methods' do
    let(:legislatura) { FactoryBot.create :legislatura }
    let(:deputado) { FactoryBot.create :deputado, legislatura: legislatura }
    
    describe '#index' do
      it 'retorna status 200 para todos os deputados' do
        get deputado_path
        expect(response).to have_http_status(200)
      end

      it 'retorna status 200 para deputados de um estado e exibe os deputados desse estado' do
        get deputado_path, :params => { :sgUF => deputado.sgUF }
        expect(response).to have_http_status(200)
        expect(response.body).to include(deputado.txNomeParlamentar)
      end
    end
    describe '#show' do
      it 'retorna status 200 e exibe os dados do deputado' do
        get despesas_deputado_path(deputado.id)
        expect(response).to have_http_status(200)
        expect(response.body).to include(deputado.txNomeParlamentar)
      end
    end
  end
end
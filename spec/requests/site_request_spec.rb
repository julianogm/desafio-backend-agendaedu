RSpec.describe 'site requests', type: :request do
  context 'controller methods' do
    it '#index - should have status 200' do
      get root_path
      expect(response).to have_http_status(200)
      expect(response.body).to include("Bem Vindo")
    end
  end
end
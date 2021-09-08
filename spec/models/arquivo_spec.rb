RSpec.describe Arquivo do
  let(:file) { File.new(fixture_path + '/arquivo.csv')}

  describe 'metodos' do
    subject { Arquivo.loadfile(file) }
    it 'enfileira arquivo no job' do
      expect { subject }.to have_enqueued_job(CarregarArquivoJob)
    end
  end
end
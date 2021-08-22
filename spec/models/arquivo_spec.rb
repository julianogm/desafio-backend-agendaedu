RSpec.describe Despesa do

  describe 'metodos' do
    subject { Arquivo.loadfile(file_fixture('arquivo.csv')) }
    it { expect(subject).to be_truthy }
  end
end
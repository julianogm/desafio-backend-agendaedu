RSpec.describe Despesa do
  let(:legislatura) { FactoryBot.create :legislatura }
  let(:tipodespesa) { FactoryBot.create :tipo_despesa }
  let(:deputado) { FactoryBot.create :deputado , legislatura: legislatura}
  let(:despesa) { FactoryBot.create :despesa , tipo_despesa: tipodespesa, deputado: deputado}

  describe 'validacoes' do
    subject { despesa } 
    it { expect(subject).to validate_presence_of(:txtNumero) }
    it { expect(subject).to validate_presence_of(:vlrLiquido) }
    it { expect(subject).to validate_presence_of(:vlrGlosa) }
    it { expect(subject).to validate_presence_of(:vlrDocumento) }  
  end

  describe 'associacoes' do
    subject { despesa }
    it { expect(subject).to belong_to(:deputado) }
    it { expect(subject).to belong_to(:tipo_despesa) }
  end

  let(:hash_row) do
    { "txtFornecedor" => 'abc', "txtCNPJCPF" => '123', 
      "txtNumero" => '123456', "vlrDocumento" => 3.5 ,
      "vlrGlosa" => 1.0, "vlrLiquido" => 2.5 , 
      "deputado_id" => 1, "tipo_despesa_id" => 1
    }
  end

  describe 'methods' do
    subject {} 
  end
end
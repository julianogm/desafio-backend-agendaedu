RSpec.describe Despesa do
  let(:legislatura) { FactoryBot.create :legislatura }
  let(:deputado) { FactoryBot.create :deputado , legislatura: legislatura}
  
  describe 'validacoes' do
    subject { deputado } 
    it { expect(subject).to validate_presence_of(:txNomeParlamentar) }
    it { expect(subject).to validate_presence_of(:cpf) }
    it { expect(subject).to validate_presence_of(:nuCarteiraParlamentar) }
    it { expect(subject).to validate_presence_of(:sgUF) }  
  end

  describe 'associacoes' do
    subject { deputado } 
    it { expect(subject).to belong_to(:legislatura) }
    it { expect(subject).to have_many(:despesa) }
  end

  describe 'metodos' do
    context 'calcular_gasto' do
      let(:tipodespesa) { FactoryBot.create :tipo_despesa }
      let(:despesa) { FactoryBot.create :despesa , tipo_despesa: tipodespesa, deputado: deputado}

      subject { deputado.calcular_gasto([despesa]) }
      it { expect(subject).to be_a(BigDecimal)}
    end
  end
end
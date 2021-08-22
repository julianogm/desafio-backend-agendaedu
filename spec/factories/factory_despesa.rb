FactoryBot.define do
  factory :despesa do
    txtFornecedor { 'Fornecedor Teste' }
    txtCNPJCPF { '12345678900' }
    sequence(:txtNumero) { |n| "#{n}" }
    datEmissao { '10/10/2020' }
    vlrDocumento { 5.0 }
    vlrGlosa { 1.0 }
    vlrLiquido { 3.0 }

    association :deputado
    association :tipo_despesa
  end
end
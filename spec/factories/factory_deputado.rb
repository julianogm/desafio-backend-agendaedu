FactoryBot.define do
  factory :deputado do
    sequence(:txNomeParlamentar) { |n| "parlamentar-#{n}" }
    cpf { rand.to_s[2..12] }
    nuCarteiraParlamentar { '1' }
    sgUF { 'RJ' }
    sgPartido { 'Partido' }
    
    association :legislatura
  end
end
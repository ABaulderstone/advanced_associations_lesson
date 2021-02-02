FactoryBot.define do
  factory :address do
    author
    street { "34 Wentworth Street" }
    city { "Glebe" }
    state { "NSW" }
    postcode { "2037" }
    
  end
end

FactoryGirl.define do
  factory :deploy do
    sequence(:uid)
    sha '10f0393d'
    username 'Jesper'
    environment 'production'
    time { Time.now }
  end

  factory :deployer do
  end

  factory :deploy_with_deployer, class: Deploy do
    sequence(:uid)
    sha '10f0393d'
    username 'jesper@example.com'
    association :deployer, factory: :deployer, real_name: 'Jesper Viking', deployer_name: 'jesper@example.com'
    environment 'production'
    time { Time.now }
  end
end

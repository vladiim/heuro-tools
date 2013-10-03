require 'factory_girl'

FactoryGirl.define do
  factory :service_record do
    name { "GOOGLs #{rand(10000)}" }
    url { "http://www.google.com/ #{rand(10000)}" }
    description 'Its da googlez'
  end

  factory :user do
    email { "email-#{rand(1000)}@gmail.com" }
    password "password"
  end
end
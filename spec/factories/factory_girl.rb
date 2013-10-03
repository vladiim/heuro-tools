require 'factory_girl'

FactoryGirl.define do
  factory :service_record do
    name { "GOOGLs #{rand(10000)}" }
    url { "http://www.google.com/ #{rand(10000)}" }
    description 'Its da googlez'
  end
end
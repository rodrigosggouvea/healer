# frozen_string_literal: true

FactoryBot.define do
  factory :organization do
    name { FFaker::Company.name }
  end
end

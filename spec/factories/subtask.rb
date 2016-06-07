# encoding: utf-8
# frozen_string_literal: true

FactoryGirl.define do
  factory :subtask do
    label        Faker::Lorem.sentence
    completed_at Faker::Time.forward(10)
  end
end

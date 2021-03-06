# encoding: utf-8
# frozen_string_literal: true

FactoryGirl.define do
  factory :goal do
    label        { generate(:label) }
    note         { generate(:note) }
    position     { Faker::Number.digit }
    due_at       { Faker::Time.forward(10) }
    deferred_at  { [Faker::Time.forward(10), Faker::Time.forward(10)] }
    completed_at { Faker::Time.forward(10) }
    specific     { Faker::Boolean.boolean }
    measurable   { Faker::Boolean.boolean }
    attainable   { Faker::Boolean.boolean }
    relevant     { Faker::Boolean.boolean }
    timely       { Faker::Boolean.boolean }
    difficulty   { Faker::Number.between(0, 5) }
    importance   { Faker::Number.between(0, 3) }
    urgency      { Faker::Number.between(0, 3) }

    trait :undeferred do
      deferred_at []
    end

    trait :not_due do
      due_at nil
    end

    trait :incomplete do
      completed_at nil
    end
  end
end

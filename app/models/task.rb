# encoding: utf-8
# frozen_string_literal: true

# An individual piece of work the completion of which moves the user a step
# closer to achieving a Goal.
class Task < ActiveRecord::Base
  validates :label,      presence:     true
  validates :position,   numericality: { greater_than_or_equal_to: 0 }
  validates :position,   numericality: { only_integer: true }
  validates :difficulty, numericality: { only_integer: true }
  validates :difficulty, inclusion:    { in: 0..5 }
  validates :importance, numericality: { only_integer: true }
  validates :importance, inclusion:    { in: 0..3 }
  validates :urgency,    numericality: { only_integer: true }
  validates :urgency,    inclusion:    { in: 0..3 }
end

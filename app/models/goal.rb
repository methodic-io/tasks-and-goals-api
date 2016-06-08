# encoding: utf-8
# frozen_string_literal: true

# The object of ambition and effort. The completeion of associated tasks move
# the user closer to the desired achievement.
class Goal < ActiveRecord::Base
  validates :label,      presence:     true
  validates :position,   numericality: { greater_than_or_equal_to: 0 }
  validates :position,   numericality: { only_integer: true }
  validates :difficulty, numericality: { only_integer: true }
  validates :difficulty, inclusion:    { in: 0..5 }
  validates :difficulty, exclusion:    { in: [-1, 6] }
  validates :importance, numericality: { only_integer: true }
  validates :importance, inclusion:    { in: 0..3 }
  validates :importance, exclusion:    { in: [-1, 4] }
  validates :urgency,    numericality: { only_integer: true }
  validates :urgency,    inclusion:    { in: 0..3 }
  validates :urgency,    exclusion:    { in: [-1, 4] }

  belongs_to :focus
  has_many   :lists

  serialize :deferred_at, Array
end
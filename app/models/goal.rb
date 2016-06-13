# encoding: utf-8
# frozen_string_literal: true

# The object of ambition and effort. The completeion of associated tasks move
# the user closer to the desired achievement.
class Goal < ActiveRecord::Base
  include Deletable
  include Deferrable
  include Completable
  include Positionable
  include Classifiable

  validates :label, presence: true

  belongs_to :focus
  has_many   :lists

  def due?
    !due_at.blank? && due_at.future?
  end

  def overdue?
    !due_at.blank? && due_at.past?
  end

  def smart?
    specific? && measurable? && attainable? && relevant? && timely?
  end
end

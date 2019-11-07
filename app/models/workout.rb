class Workout < ApplicationRecord
  has_many :workout_sessions
  has_many :plans, through: :workout_sessions
  belongs_to :user
  has_many :exercises

  accepts_nested_attributes_for :exercises
end

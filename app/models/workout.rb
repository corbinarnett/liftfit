class Workout < ApplicationRecord
  has_many :workout_sessions
  has_many :plans, through: :workout_sessions
  has_many :exercises
  belongs_to :user
end

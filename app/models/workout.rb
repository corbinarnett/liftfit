class Workout < ApplicationRecord
  has_many :workout_sessions
  has_many :plans, through: :workout_sessions
  belongs_to :user
end

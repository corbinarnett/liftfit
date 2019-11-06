class Plan < ApplicationRecord
  belongs_to :user
  has_many :workout_sessions
  has_many :workouts, through: :workout_sessions
end

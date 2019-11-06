class User < ApplicationRecord
  has_many: :created_workouts, foreign_key: "user_id", class_name: "Workout"
  has_many :plans
  # The :source option specifies the source association name for a has_many :through association
  has_many :completed_workouts, through: :plans,  source: :workouts

end

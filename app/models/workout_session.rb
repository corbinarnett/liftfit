class WorkoutSession < ApplicationRecord
  belongs_to :plan
  belongs_to :workout
end

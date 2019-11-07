class AddAttributesToWorkouts < ActiveRecord::Migration[6.0]
  def change
    add_column :workouts, :sets_per_exercise, :integer
    add_column :workouts, :rep_range, :integer
    add_column :workouts, :rest_time_between_sets, :integer
  end
end

class AddCategoryToWorkout < ActiveRecord::Migration[6.0]
  def change
    add_column :workouts, :category, :string
  end
end

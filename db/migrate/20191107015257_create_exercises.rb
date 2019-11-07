class CreateExercises < ActiveRecord::Migration[6.0]
  def change
    create_table :exercises do |t|
      t.text :name
      t.text :muscle_group
      t.text :equipment
      t.integer :sets
      t.integer :weight
      t.integer :reps
      t.belongs_to :workout, null: false, foreign_key: true

      t.timestamps
    end
  end
end

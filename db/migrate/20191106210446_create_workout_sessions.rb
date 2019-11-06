class CreateWorkoutSessions < ActiveRecord::Migration[6.0]
  def change
    create_table :workout_sessions do |t|
      t.datetime :date
      t.string :feeling
      t.boolean :complete
      t.belongs_to :plan, null: false, foreign_key: true
      t.belongs_to :workout, null: false, foreign_key: true

      t.timestamps
    end
  end
end

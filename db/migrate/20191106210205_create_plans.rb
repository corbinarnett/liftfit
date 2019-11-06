class CreatePlans < ActiveRecord::Migration[6.0]
  def change
    create_table :plans do |t|
      t.string :title
      t.text :description
      t.boolean :active
      t.belongs_to :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end

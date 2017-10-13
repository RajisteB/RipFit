class CreateExercises < ActiveRecord::Migration[5.1]
  def change
    create_table :exercises do |t|
      t.string :category
      t.string :name
      t.string :reps
      t.string :example
      t.string :progression

      t.timestamps
    end
  end
end

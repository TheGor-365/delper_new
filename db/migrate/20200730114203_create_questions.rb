class CreateQuestions < ActiveRecord::Migration[6.0]
  def change
    create_table :questions do |t|
      t.text :question
      t.text :snippet
      t.references :technology, null: false, foreign_key: true

      t.timestamps
    end
  end
end

class CreateProjects < ActiveRecord::Migration[6.0]
  def change
    create_table :projects do |t|
      t.string :title
      t.text :body
      t.references :technology, null: false, foreign_key: true

      t.timestamps
    end
  end
end

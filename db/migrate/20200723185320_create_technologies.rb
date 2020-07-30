class CreateTechnologies < ActiveRecord::Migration[6.0]
  def change
    create_table :technologies do |t|
      t.string :title
      t.string :purpose
      t.text :description
      t.string :doc

      t.timestamps
    end
  end
end

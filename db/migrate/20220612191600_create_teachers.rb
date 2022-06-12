class CreateTeachers < ActiveRecord::Migration[7.0]
  def change
    create_table :teachers do |t|
      t.string :name
      t.belongs_to :subject, null: false, foreign_key: true

      t.timestamps
    end
  end
end

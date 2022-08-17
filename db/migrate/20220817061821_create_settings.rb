class CreateSettings < ActiveRecord::Migration[6.1]
  def change
    create_table :settings do |t|
      t.string :name
      t.string :value
      t.string :default
      t.string :comment

      t.timestamps null: false
    end
  end
end

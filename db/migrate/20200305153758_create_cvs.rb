class CreateCvs < ActiveRecord::Migration[6.0]
  def change
    create_table :cvs do |t|
      t.string :name
      t.string :title
      t.string :location

      t.timestamps
    end
  end
end

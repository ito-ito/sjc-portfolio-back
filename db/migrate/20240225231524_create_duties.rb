class CreateDuties < ActiveRecord::Migration[7.1]
  def change
    create_table :duties do |t|
      t.string :title
      t.date :start_date
      t.date :end_date

      t.timestamps
    end
  end
end

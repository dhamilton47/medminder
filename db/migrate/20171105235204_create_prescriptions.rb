class CreatePrescriptions < ActiveRecord::Migration[5.1]
  def change
    create_table :prescriptions do |t|
      t.string :rx_number
      t.string :name
      t.string :dosage
      t.string :taken_how
      t.integer :quantity
      t.date :written_date
      t.date :fill_date
      t.date :expiration_date
      t.string :manufacturerer
      t.text :purpose
      t.integer :remaining_refills
      t.boolean :generic?

      t.timestamps
    end
  end
end

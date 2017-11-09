class CreatePrescriptions < ActiveRecord::Migration[5.1]
  def change
    create_table :prescriptions do |t|
      t.belongs_to :patient, index: true
      t.belongs_to :provider, index: true
      t.belongs_to :supplier, index: true
      t.boolean :active, index: true, default: false
      t.string :rx_number, null: false
      t.string :name, null: false
      t.string :dosage, null: false
      t.string :taken_how, null: false
      t.integer :quantity, null: false
      t.date :written_date, null: false
      t.date :script_good_til_date, null: false
      t.date :fill_date, null: false
      t.date :medication_expiration_date
      t.string :manufacturer
      t.text :purpose
      t.integer :remaining_refills, default: 0
      t.boolean :generic, default: false

      t.timestamps
    end
  end
end

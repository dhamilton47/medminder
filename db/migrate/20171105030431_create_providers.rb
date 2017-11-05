class CreateProviders < ActiveRecord::Migration[5.1]
  def change
    create_table :providers do |t|
      t.string :name
      t.string :phone
      t.string :email
      t.references :active, foreign_key: true
      t.references :history, foreign_key: true
      
      t.timestamps
    end
  end
end

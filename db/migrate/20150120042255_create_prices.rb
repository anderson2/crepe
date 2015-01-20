class CreatePrices < ActiveRecord::Migration
  def change
    create_table :prices do |t|
      t.integer :base_cents
      t.integer :sale_cents
      t.references :game, index: true
      t.references :store, index: true

      t.timestamps
    end
  end
end

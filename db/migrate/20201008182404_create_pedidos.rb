class CreatePedidos < ActiveRecord::Migration[6.0]
  def change
    create_table :pedidos do |t|
      t.integer :cliente_id
      t.float :valor_total
      t.string :status

      t.timestamps
    end
  end
end

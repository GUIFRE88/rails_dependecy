class CreateItemPedidos < ActiveRecord::Migration[6.0]
  def change
    create_table :item_pedidos do |t|
      t.references :pedido, null: false, foreign_key: true
      t.float :valor

      t.timestamps
    end
  end
end

class Pedido < ApplicationRecord
    has_many :item_pedidos
end

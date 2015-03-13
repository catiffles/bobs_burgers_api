class OrderSerializer < ActiveModel::Serializer
  attributes :id, :burgers, :total_price, :stripe_transaction, :created_at

  def created_at
    object.created_at.strftime('%d-%m-%Y')
  end

end

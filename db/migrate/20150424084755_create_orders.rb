class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :productname
      t.integer :quantity
      t.string :price
      t.string :name
      t.string :address
      t.string :cellphone
      t.string :tel
      t.string :email
      t.string :receivetime
      t.string :receiveday
      t.string :bonuscode
      t.string :payment
      t.boolean :paymentstatus
      t.text :remark

      t.timestamps null: false
    end
  end
end

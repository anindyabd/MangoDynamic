class AddStateZipcodeAndPhoneToOrders < ActiveRecord::Migration
  def change
    add_column :orders, :phone_number, :string
    add_column :orders, :state, :string
    add_column :orders, :zip_code, :string
  end
end

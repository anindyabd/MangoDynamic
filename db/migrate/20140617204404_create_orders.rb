class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :name
      t.string :email
      t.string :college_name
      t.text :address
      t.string :plan_type

      t.timestamps
    end
  end
end

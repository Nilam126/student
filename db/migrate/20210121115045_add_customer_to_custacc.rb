class AddCustomerToCustacc < ActiveRecord::Migration[6.1]
  def change
    add_reference :custaccs, :customer
  end
end

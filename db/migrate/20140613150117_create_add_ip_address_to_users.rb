class CreateAddIpAddressToUsers < ActiveRecord::Migration
  def change
    create_table :add_ip_address_to_users do |t|
      t.string :ip_address

      t.timestamps
    end
  end
end

class AddIpAddressToUser < ActiveRecord::Migration
  def change
  	add_column :users, :ip_address, :string

  	if ActiveRecord::Base.connection.table_exists? "add_ip_address_to_users"
      drop_table "add_ip_address_to_users" 
    end
  end
end

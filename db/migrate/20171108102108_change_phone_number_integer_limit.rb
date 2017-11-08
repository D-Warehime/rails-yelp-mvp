class ChangePhoneNumberIntegerLimit < ActiveRecord::Migration[5.1]
  def change
    change_column :restaurants, :phone_number, :integer, limit: 20
  end
end

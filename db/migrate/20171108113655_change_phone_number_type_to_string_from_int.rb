class ChangePhoneNumberTypeToStringFromInt < ActiveRecord::Migration[5.1]
  def change
    change_column :restaurants, :phone_number, :text
  end
end

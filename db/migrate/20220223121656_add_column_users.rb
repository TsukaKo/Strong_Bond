class AddColumnUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :group_id, :integer
    add_column :users, :last_name, :string
    add_column :users, :first_name, :string
    add_column :users, :last_name_kana, :string
    add_column :users, :first_name_kana, :string
    add_column :users, :postal_code, :string
    add_column :users, :address, :string
    add_column :users, :telephone_number, :string
    add_column :users, :self_introduction, :text
    add_column :users, :comment_id, :integer
    remove_column :users, :comment_id, :inteher
  end
end

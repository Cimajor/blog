class AddReciveNewsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :recive_news, :boolean
  end
end

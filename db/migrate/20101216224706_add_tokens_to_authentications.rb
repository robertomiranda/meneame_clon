class AddTokensToAuthentications < ActiveRecord::Migration
  def self.up
    add_column :authentications, :twitter_token, :string 
    add_column :authentications, :twitter_secret, :string
    add_column :authentications, :facebook_token, :string
  end

  def self.down
    remove_column :authentications, :twitter_token
    remove_column :authentications, :twitter_secret
    remove_column :authentications, :facebook_token
  end
end

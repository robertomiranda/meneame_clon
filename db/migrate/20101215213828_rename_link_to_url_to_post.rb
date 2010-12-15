class RenameLinkToUrlToPost < ActiveRecord::Migration
  def self.up
    rename_column :posts,:link, :url
  end

  def self.down
  end
end

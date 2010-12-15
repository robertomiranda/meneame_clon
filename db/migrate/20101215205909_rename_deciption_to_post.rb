class RenameDeciptionToPost < ActiveRecord::Migration
  def self.up
    rename_column :posts,:desciption, :description
  end

  def self.down
  end
end

class ChangeDataTypeForStoryContent < ActiveRecord::Migration
  def up
    change_table :stories do |t|
      t.change :content, :text
  end

  def down
    change_table :stories do |t|
      t.change :content, :string
  end
end

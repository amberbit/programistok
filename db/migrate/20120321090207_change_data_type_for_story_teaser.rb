class ChangeDataTypeForStoryTeaser < ActiveRecord::Migration
  def up
    change_table :stories do |t|
      t.change :teaser, :text
  end

  def down
    change_table :stories do |t|
      t.change :teaser, :string
  end
end

class AddColumnToFeed < ActiveRecord::Migration[5.2]
  def change
    add_column :feeds, :title, :string
    add_column :feeds, :content, :text
    add_reference :feeds, :user, index:true
  end
end

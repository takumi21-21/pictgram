class RenamePostIdColumnToComments < ActiveRecord::Migration[5.0]
  def change
    rename_column :comments, :post_id, :topic_id
  end
end

class RenameTableActivityToTask < ActiveRecord::Migration
  def change
    rename_table :activities, :tasks
  end
end

class AddPreTaskIdToTasks < ActiveRecord::Migration
  def change
    add_column :tasks, :pre_task_id, :integer
  end
end

class RenameTypeasWhatKind < ActiveRecord::Migration
  def change
    rename_column :feedbacks, :type, :whatkind
  end
end

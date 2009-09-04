class <%= migration_name %> < ActiveRecord::Migration
  def self.up
    create_table :<%= table_name %> do |t|
      t.string :from, :to
      t.integer :priority, :default => 100
      t.integer :last_send_attempt, :default => 0
      t.text :mail
      t.timestamps
    end
    add_index :<%= table_name %>, [:priority, :id]
  end

  def self.down
    drop_table :<%= table_name %>
  end
end

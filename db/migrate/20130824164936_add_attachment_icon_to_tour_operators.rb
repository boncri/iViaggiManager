class AddAttachmentIconToTourOperators < ActiveRecord::Migration
  def self.up
    change_table :tour_operators do |t|
      t.attachment :icon
    end
  end

  def self.down
    drop_attached_file :tour_operators, :icon
  end
end

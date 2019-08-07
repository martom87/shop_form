class CreateSettings < ActiveRecord::Migration[5.2]
  def change
    create_table :settings do |t|
      t.string   :picture_dimensions, null: false, default: ''
    end
  end
end

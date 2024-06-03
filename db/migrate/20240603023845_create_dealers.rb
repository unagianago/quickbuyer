class CreateDealers < ActiveRecord::Migration[7.0]
  def change
    create_table :dealers do |t|
      t.integer    :category_id, null: false
      t.timestamps
    end
  end
end

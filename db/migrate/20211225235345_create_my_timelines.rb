class CreateMyTimelines < ActiveRecord::Migration[7.0]
  def change
    create_table :my_timelines do |t|
      t.string :post
      t.string :body

      t.timestamps
    end
  end
end

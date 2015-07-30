class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :url
      t.string :desc
      t.string :user_id

      t.timestamps
    end
  end
end

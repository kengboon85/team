class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :nric
      t.string :email
      t.string :image_url

      t.timestamps
    end
  end
end

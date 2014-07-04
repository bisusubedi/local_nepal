class CreateBusinesses < ActiveRecord::Migration
  def change
    create_table :businesses do |t|
      t.references :user, index: true
      t.string :url
      t.string :email
      t.integer :phone

      t.timestamps
    end
  end
end

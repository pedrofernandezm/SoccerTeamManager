class CreateAuthentications < ActiveRecord::Migration
  def change
    create_table :authentications do |t|
      t.string :access_token
      t.string :secret_token
      t.string :provider
      t.string :uid
      t.integer :user_id

      t.timestamps
    end
  end
end

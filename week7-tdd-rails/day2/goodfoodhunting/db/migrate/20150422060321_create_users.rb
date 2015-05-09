class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email
      t.string :password_digest
      t.timestamps # this creates additional column created_at, updated_at
    end
  end
end

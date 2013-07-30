class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :surname
      t.string :name
      t.string :patronymic
      t.string :date_of_birth
      t.string :login
      t.string :email
      t.string :password_digest
      t.string :avatar_url

      t.timestamps
    end
  end
end

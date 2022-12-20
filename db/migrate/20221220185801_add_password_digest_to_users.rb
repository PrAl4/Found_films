class AddPasswordDigestToUsers < ActiveRecord::Migration[7.0]
  def change
    #Миграция для добавления столбца password_digest к таблице users.
    add_column :users, :password_digest, :string
  end
end

class AddIndexToUsersEmail < ActiveRecord::Migration[7.0]
  def change
    #Миграция для реализации уникальности адреса электронной
        add_index :users, :email, unique: true
  end
end

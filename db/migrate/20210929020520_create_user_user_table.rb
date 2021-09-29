class CreateUserUserTable < ActiveRecord::Migration[6.1]
  def change
    create_table :user_user do |t|
      t.references :follower, null: false, foreign_key: {to_table: :users}, index: true
      t.references :followed, null: false, foreign_key: {to_table: :users}, index: true
      t.timestamps
    end
  end
end

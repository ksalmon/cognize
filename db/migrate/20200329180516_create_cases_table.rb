class CreateCasesTable < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :username
      t.string :email
      t.string :avatar
      t.string :github

      t.timestamps
    end

    create_table :articles do |t|
      t.string :headline
      t.string :default_image
      t.string :description
      t.string :source
      t.string :url
      t.datetime :published_at

      t.timestamps
    end

    create_table :user_articles do |t|
      t.belongs_to :user
      t.belongs_to :article
    end
  end
end

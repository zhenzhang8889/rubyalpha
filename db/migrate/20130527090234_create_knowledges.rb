class CreateKnowledges < ActiveRecord::Migration
  def change
    create_table :knowledges do |t|
      t.string :topic
      t.string :product
      t.string :software
      t.string :description
      t.string :videos
      t.string :screenshots
      t.string :related_tickets
      t.string :companies
      t.string :author
      t.string :eidts
      t.string :related_articles
      t.text :notes
      t.string :related_devices
      t.string :date_created

      t.timestamps
    end
  end
end

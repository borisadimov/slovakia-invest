class CreateSocialNetworkLinks < ActiveRecord::Migration[5.0]
  def change
    create_table :social_network_links do |t|
      t.string :url
      t.string :logo
      t.references :footer, index: true, foreign_key: true
    end
  end
end

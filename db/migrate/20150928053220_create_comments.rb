
class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :commenter
      t.text :body
       t.references :post, index: true
       t.references :user, index: true
       t.integer :point
 
      t.timestamps
    end
  end
end

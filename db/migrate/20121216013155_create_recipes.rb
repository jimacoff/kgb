# encoding: utf-8

class CreateRecipes < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
      t.references :recipe_category,:null=>false      
      t.string :title, :null=>false
      t.text :description, :null=>false
      t.string :photo,:null=>false
      t.timestamps
    end
        
    create_table :recipe_contents do |t|
      t.text :content,:null=>false
    end
    
    create_table :recipe_comments do |t|
      t.references :recipe,:null=>false      
      t.references :user
      t.string :name
      t.string :password
      t.text :content,:null=>false
      t.timestamps
    end
    
    add_index :recipes, :recipe_category_id
    add_index :recipe_comments, :recipe_id 
  end
end

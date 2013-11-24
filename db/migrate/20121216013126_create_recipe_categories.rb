# encoding: utf-8

class CreateRecipeCategories < ActiveRecord::Migration
  def change
    create_table :recipe_categories do |t|
      t.string :title,:null=>false
      t.timestamps
    end
  end
end

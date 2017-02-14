class InitialSchema < ActiveRecord::Migration
  def change

    create_table :posts do |t|
      t.string :title
      t.string :location
      t.string :skills
      t.text :description
    end

    create_table :agencies do |t|
      t.string :name
      t.string :logo
      t.string :zipcode
      t.integer :rating
    end

    create_table :category do |t|
      t.string :cat_name
    end

    create_table :sub_category do |t|
      t.string :subcat_name
    end
  end
end

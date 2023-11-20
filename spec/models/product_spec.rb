require 'rails_helper'

RSpec.describe Product, type: :model do
  describe "validations" do
    it "intial saves with all category" do
      category=Category.create(name:"shrub")
      product=Product.new(
        name:'rosemary',
        price_cents: 1000,
        quantity: 5,
        category: category
        )
      expect(product.save).to be true
    end
    it 'is not valid without a name' do
      category = Category.create(name: 'Shrub1')
      product = Product.new(
        price_cents: 1000,
        quantity: 5,
        category: category
      )
      product.save
      expect(product.errors.full_messages).to include("Name can't be blank")
    end
    
    it "Its not valid without a price" do
      category=Category.create(name:"Shrub2")
      product=Product.new(
      name:"orchid",
      quantity:4,
      category:category
      )
      product.save
      expect(product.errors.full_messages).to include("Price can't be blank")
    end
    
    it "Its not valid without a quantity" do
      category=Category.create(name: "Shrub6")
      product=Product.new(
      name: "orchid",
      price_cents: 1000,
      category: category
      )
      product.save
      expect(product.errors.full_messages).to include("Quantity can't be blank")
    end
    it "Its not valid without a category" do
      product=Product.new(
      name:"rose",
      price_cents:1000,
      quantity:4,
      )
      product.save
      expect(product.errors.full_messages).to include("Category can't be blank")
    end
  
   
  end
 
end

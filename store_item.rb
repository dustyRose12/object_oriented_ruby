# item_1 = {item_name: "earrings", color: "blue", metal: "silver", price: 50 }
# item_2 = {item_name: "necklace", color: "rose", metal: "gold", price: 80 }
# item_3 = {:item_name => "bracelet", :color => "silver", :metal => "platinum", price: 100 }

# puts "The #{item_1[:color]} #{item_1[:metal]} #{item_1[:item_name]} cost #{item_1[:price]} dollars."
# puts "The #{item_2[:color]} #{item_2[:metal]} #{item_2[:item_name]} costs #{item_2[:price]} dollars."
# puts "The #{item_3[:color]} #{item_3[:metal]} #{item_3[:item_name]} costs #{item_3[:price]} dollars."

class Store_item

  attr_reader :item_name, :color, :metal, :price, :info
  attr_writer :price

  def initialize(input_options)
    @item_name = input_options[:item_name]
    @color = input_options[:color]
    @metal = input_options[:metal]
    @price = input_options[:price]
  end

  # def item_name
  #   @item_name
  # end

  # def color
  #   @color
  # end

  # def metal
  #   @metal
  # end

  # def price
  #   @price
  # end

  # def price=(new_price)
  #   @price = new_price
  # end

  def info
    if @item_name.end_with?("s")
      return "The #{@item_name} are #{@color} and are made out of #{@metal}.They cost $#{@price}."
    else
      return "The #{@item_name} is #{@color} and is made out of #{@metal}.It costs $#{@price}."
    end
  end

end

item_1 = Store_item.new(
                                        item_name: "earrings", 
                                        color: "blue", 
                                        metal: "silver", 
                                        price: 50)
p item_1.info
item_1.price = 100
p item_1.info

item_2 = Store_item.new(
                                        item_name: "necklace", 
                                        color: "rose", 
                                        metal: "gold", 
                                        price: 80)
p item_2.info

class Food < Store_item

  def initialize(input_options)
    super
    @shelf_life = input_options[:shelf_life]
  end

end

item3 = Food.new(
                              item_name: "baguette",
                              color: "beige",
                              metal: "non-metallic",
                              price: 5,
                              shelf_life: 2)
p item3
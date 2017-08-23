
class Store_item

  attr_reader :item_name, :color, :price, :info
  attr_writer :price

  def initialize(input_options)
    @item_name = input_options[:item_name]
    @color = input_options[:color]
    @price = input_options[:price]
  end

  def info
    if @item_name.end_with?("s")
      return "The #{@item_name} are #{@color} and cost $#{@price}."
    else
      return "The #{@item_name} is #{@color} and costs $#{@price}."
    end
  end

end

item_1 = Store_item.new(
                                        item_name: "earrings", 
                                        color: "red", 
                                        price: 50)
p item_1.info
item_1.price = 100
p item_1.info

item_2 = Store_item.new(
                                        item_name: "jeans", 
                                        color: "dark blue", 
                                        price: 80)
p item_2.info

class Food < Store_item

  def initialize(input_options)
    super
    @shelf_life = input_options[:shelf_life]
  end


end

item_3 = Food.new(
                              item_name: "tomatoes",
                              color: "red",
                              price: 5,
                              shelf_life: 7)
p item_3.info
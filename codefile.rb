TAX_RATE = 0.05

  def calculate_total(line_item)
    total_price = 0
    line_item.each do | hsh |
        total_price += hsh[:quantity]*hsh[:unit_price]
    end
      "$%.2f" % "#{total_price+(total_price*TAX_RATE)}"
  end

# line_item = [{quantity: 2, unit_price: 2},{quantity: 3, unit_price: 0.89}]

# How do you calculate the total of just one of the hashes in an array
# of multiple hashes?  Some kind of nested .each iteration I suppose.

# For loop attempt:
  # def calculate_total(line_item)
  #   total_price = 0
  #     for order in line_item
  #     #  total_price = line_item[:quantity]*line_item[:unit_price]
  #       total_price = line_item[:quantity, :unit_price]
  #     end
  #   "$%.2f" % "#{total_price+(total_price*TAX_RATE)}"
  # end


# Chris's solution (no need for if statements):
  # def calculate_total(orders)
  #   total_price = 0
  #     if orders.is_a?(hash)
  #       price +=(orders[:quantity]*orders[:unit_price])
  #     if orders.is_a?(array)
  #       orders.each {|item| price += item[:quantity]*item[:unit_price]}
  #     end
  #     end
  #     "$%.2f" % "#{total_price+(total_price*TAX_RATE)}"

  # end

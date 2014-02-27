TAX_RATE = 0.05

#line_item = ([{quantity: 2, unit_price: 2},{quantity: 3, unit_price: 0.89}])


  def calculate_total(line_item)
    line_item.each do | hsh |
      hsh.each do | q,up |
        total_price = hsh[:q]*hsh[:up]
     end
    end
      "$%.2f" % "#{total_price+(total_price*TAX_RATE)}"
  end



# def calculate_total(line_item)
#   total_price = 0
#     for order in line_item
#     #  total_price = line_item[:quantity]*line_item[:unit_price]
#       total_price = line_item[:quantity, :unit_price]
#     end
#   "$%.2f" % "#{total_price+(total_price*TAX_RATE)}"
# end

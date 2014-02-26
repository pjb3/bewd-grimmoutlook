TAX_RATE = 0.05

  # def calculate_total(line_item)
  #   line_item.each do |total_price|
  #     total_price = [:quantity]*[:unit_price]
  #     print "$%.2f" % total_price*TAX_RATE
  #   end
  # end


def calculate_total(line_item)
  total_price = 0
    for order in line_item
      total_price += line_item[:quantity]*line_item[:unit_price]
    end
  print "$%.2f" % "#{total_price+(total_price*TAX_RATE)}"
end

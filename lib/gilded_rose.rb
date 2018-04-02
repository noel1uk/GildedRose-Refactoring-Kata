require_relative 'type_checker'
require_relative 'legendary_item'
require_relative 'cheese_item'
require_relative 'ticket_item'

class GildedRose

  def initialize(items)
    @items = items
  end

  def update_quality()
    @items.each do |item|
      type = TypeChecker.new(item.name)
      if type.check == 'legendary'
        Legendary.new(item)
      elsif type.check == 'cheese'
        Cheese.new(item).update_item()
      elsif type.check == 'ticket'
        Ticket.new(item).update_item()
      else
        if item.sell_in < 0 && item.quality > 1
            item.quality = item.quality - 2
        end
        if item.quality > 0
          item.quality = item.quality - 1
        end
      item.sell_in = item.sell_in - 1
      end
    end
  end
end

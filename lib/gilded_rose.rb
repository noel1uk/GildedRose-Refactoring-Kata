require_relative 'type_checker'
require_relative 'legendary_item'
require_relative 'cheese_item'
require_relative 'ticket_item'
require_relative 'normal_item'

class GildedRose

  def initialize(items)
    @items = items
  end

  def update_quality()
    @items.each do |item|
      type = TypeChecker.new(item.name)
      if type.check == 'legendary'
        LegendaryItem.new(item)
      elsif type.check == 'cheese'
        CheeseItem.new(item).update_item()
      elsif type.check == 'ticket'
        TicketItem.new(item).update_item()
      else
        NormalItem.new(item).update_item()
      end
    end
  end
end

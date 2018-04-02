require_relative 'type_checker'
require_relative 'legendary'
require_relative 'cheese'

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
        if item.quality < 50
          item.quality = item.quality + 1
        end
        if item.sell_in < 11
          if item.quality < 50
            item.quality = item.quality + 1
          end
        end
        if item.sell_in < 6
          if item.quality < 50
            item.quality = item.quality + 1
          end
        end
        if item.sell_in < 1
          item.quality = item.quality - item.quality
        end
        item.sell_in = item.sell_in - 1
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

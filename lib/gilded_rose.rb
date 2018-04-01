class GildedRose

  def initialize(items)
    @items = items
    @is_legendary_item = false
    @is_cheese = false
    @is_ticket = false
  end

  def update_quality()
    @items.each do |item|
      type_checker(item)
      if @is_legendary_item
        return
      elsif @is_cheese
        if item.quality < 50
          item.quality = item.quality + 1
        end
        if item.quality < 50
          item.quality = item.quality + 1
        end
        item.sell_in = item.sell_in - 1
        return
        #type acts stop here
      elsif @is_ticket
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
        return
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

  def type_checker(item)
    if item.name == 'Aged Brie'
      #run this code
      @is_cheese = true
    elsif item.name == 'Backstage passes to a TAFKAL80ETC concert'
      @is_ticket = true
      #run this code
    elsif item.name == 'Sulfuras, Hand of Ragnaros'
      @is_legendary_item = true
    else
      #run this code
    end
  end
end

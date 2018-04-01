class GildedRose

  def initialize(items)
    @items = items
    @legendary_item = false
  end

  def update_quality()
    @items.each do |item|
      type_checker(item)
      if @legendary_item
        return
      else
        if item.name != "Aged Brie" and item.name != "Backstage passes to a TAFKAL80ETC concert"
          if item.quality > 0
              item.quality = item.quality - 1
          end
        else
          if item.quality < 50
            item.quality = item.quality + 1
            if item.name == "Backstage passes to a TAFKAL80ETC concert"
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
            end
          end
        end
          item.sell_in = item.sell_in - 1
        if item.sell_in < 0
        if item.name != "Aged Brie"
          if item.name != "Backstage passes to a TAFKAL80ETC concert"
            if item.quality > 0
                item.quality = item.quality - 1
            end
          else
            item.quality = item.quality - item.quality
          end
        else
          if item.quality < 50
            item.quality = item.quality + 1
          end
        end
      end
      end
    end
  end

  def type_checker(item)
    if item.name == 'Aged Brie'
      #run this code
    elsif item.name == 'Backstage passes to a TAFKAL80ETC concert'
      #run this code
    elsif item.name == 'Sulfuras, Hand of Ragnaros'
      #run this code
      @legendary_item = true
    else
      #run this code
    end
  end
end

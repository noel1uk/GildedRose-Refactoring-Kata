class GildedRose

  def initialize(items)
    @items = items
    @legendary_item = false
    @cheese = false
  end

  def update_quality()
    @items.each do |item|
      type_checker(item)
      if @legendary_item
        return
      elsif @cheese
        if item.quality < 50
          item.quality = item.quality + 1
        end
        if item.quality < 50
          item.quality = item.quality + 1
        end
        item.sell_in = item.sell_in - 1
        return
        #type acts stop here

        
      else
        if item.name != "Backstage passes to a TAFKAL80ETC concert"
          if item.quality > 0
              item.quality = item.quality - 1
          end
        else
          #this is taken for cheese
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
          #this is taken for cheese
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
      @cheese = true
    elsif item.name == 'Backstage passes to a TAFKAL80ETC concert'
      #run this code
    elsif item.name == 'Sulfuras, Hand of Ragnaros'
      @legendary_item = true
    else
      #run this code
    end
  end
end

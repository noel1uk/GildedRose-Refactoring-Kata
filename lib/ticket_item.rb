class TicketItem

  def initialize(item)
    @item = item
  end

  def update_item()
    if @item.quality < 50
      @item.quality = @item.quality + 1
    end
    if @item.sell_in < 11
      if @item.quality < 50
        @item.quality = @item.quality + 1
      end
    end
    if @item.sell_in < 6
      if @item.quality < 50
        @item.quality = @item.quality + 1
      end
    end
    if @item.sell_in < 1
      @item.quality = @item.quality - @item.quality
    end
    @item.sell_in = @item.sell_in - 1
  end

end

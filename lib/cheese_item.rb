class CheeseItem

  def initialize(item)
    @item = item
  end

  def update_item()
    if @item.quality < 50
      @item.quality = @item.quality + 1
    end
    if @item.quality < 50
      @item.quality = @item.quality + 1
    end
    @item.sell_in = @item.sell_in - 1
  end

end

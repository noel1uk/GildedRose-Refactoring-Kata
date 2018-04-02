class ConjuredItem

  def initialize(item)
    @item = item
  end

  def update_item()
    if @item.sell_in > -1
      @item.quality -= 2
    else
      @item.quality -= 4
    end
    @item.sell_in = @item.sell_in - 1
  end

end

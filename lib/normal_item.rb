class NormalItem

  def initialize(item)
    @item = item
  end

  def update_item()
    if @item.sell_in < 0 && @item.quality > 1
        @item.quality = @item.quality - 2
    elsif @item.quality > 0
      @item.quality = @item.quality - 1
    end
    @item.sell_in = @item.sell_in - 1
  end

end

class TypeChecker
  attr_accessor :type

  def initialize(item_name)
    @item_name = item_name

  end

  def check()
    if @item_name == 'Aged Brie'
      'cheese'
    elsif @item_name == 'Backstage passes to a TAFKAL80ETC concert'
      'ticket'
    elsif @item_name == 'Sulfuras, Hand of Ragnaros'
      'legendary'
    else
      'normal'
    end
  end
end

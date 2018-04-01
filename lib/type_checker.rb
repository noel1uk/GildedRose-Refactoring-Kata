class TypeChecker

  def initialize(name)
    @name = name

  end

  def check_type()
    if item.name == 'Aged Brie'
      'cheese'
    elsif item.name == 'Backstage passes to a TAFKAL80ETC concert'
      'ticket'
    elsif item.name == 'Sulfuras, Hand of Ragnaros'
      'legendary'
    else
      'normal'
    end
  end

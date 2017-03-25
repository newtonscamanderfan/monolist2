class RankingController < ApplicationController
<<<<<<< master
    
=======
  def want
    item_ids = Want.group(:item_id).order('count_all desc').limit(10).count.keys
     @items = Item.find(item_ids).sort_by{ |o| item_ids.index(o.id) }
  end

  def have
    item_ids = Have.group(:item_id).order('count_all desc').limit(10).count.keys
    @items = Item.find(item_ids).sort_by{ |o| item_ids.index(o.id) }
  end
>>>>>>> local
end

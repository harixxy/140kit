class AnalysisMetadata < SiteData
  attr_accessor :function, :instance_id, :collection_id, :finished, :id, :collection, :processing, :scrape_id, :scrape, :rest

  ###############Relation methods

  def collection
    if @collection.nil?
      @collection = Collection.find({:id => @collection_id})
      return @collection
    else
      return @collection
    end
  end
  
  # def scrape
  #   if @scrape.nil?
  #     @scrape = Scrape.find({:id => @scrape_id})
  #     return @scrape
  #   else
  #     return @scrape
  #   end
  # end
end
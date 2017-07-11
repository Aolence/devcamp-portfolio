module DefaultPageContent
  extend ActiveSupport::Concern
  
  included do
    before_filter :set_page_defaults
  end
  
  def set_page_defaults
    @page_title = "Cristian Becerril | My Portfolio - Devcamp"
    @seo_keywords = "Cristian Becerril Portfolio"
  end
end
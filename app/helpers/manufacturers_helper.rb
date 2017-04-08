module ManufacturersHelper
  def render_highlight_content(manufacturer,query_string)
    excerpt_cont = excerpt(manufacturer.name, query_string, radius: 500)
    highlight(excerpt_cont, query_string)
  end
end

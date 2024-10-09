module MoviesHelper
    def sortable(column, title = nil)
      title ||= column.titleize
      css_class = (column == session[:sort]) ? 'current' : ''
      
      # Determine the sort direction
      direction = (column == session[:sort] && session[:direction] == 'asc') ? 'desc' : 'asc'
      symbol = (column == session[:sort] && session[:direction] == 'asc') ? ' ▲' : (column == session[:sort] ? ' ▼' : '')
  
      # Create the link with the new sort direction
      link_to "#{title}#{symbol}".html_safe, { sort: column, direction: direction }, { class: css_class }
    end
  end
  
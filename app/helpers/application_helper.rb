module ApplicationHelper

  def sortable(column, title = nil)
    title ||= column.titleize
    css_class = column == sort_column ? "hilite" : nil
    css_id = column == sort_column ? "#{column}_header" : nil
    #direction = column == sort_column && sort_direction == "asc" ? "desc" : "asc"
    #link_to title, {:sort => column, :direction => "asc" }, {:class => css_class, :id => css_id }
    link_to title, {:sort => column}, {:class => css_class, :id => css_id}
  end

	def is_checked?(rating)
#debugger
		return true unless session[:ratings]
    session[:ratings][rating] == 1.to_s ? true : false
  end

end

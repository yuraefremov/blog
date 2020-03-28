module ApplicationHelper
  def build_breadcrumb(category)
    result = []
    category.ancestors.each do |ancestor|
      result << content_tag(:li, class: "breadcrumd-item") do link_to(ancestor.name, ancestor)
      end
    end
    result << content_tag(:li, category.name, class: "breadcrumd-item active")
    result.join('').html_safe
  end
end

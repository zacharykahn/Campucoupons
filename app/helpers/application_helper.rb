module ApplicationHelper

  def list_for(collection, params = {}, &block)
    options = {
      :partial => 'item',
      :empty_content => 'Nothing to show'
    }.update(params)
    if !collection || collection.empty?
      block_given? ?
        content_tag(:li, :class => 'empty_content', &block) :
        content_tag(:li, options[:empty_content], :class => 'empty_content')
    else
      render :partial => options[:partial], :collection => collection
    end
  end

  def inside_layout(layout = 'application', &block)
    render :inline => capture_haml(&block), :layout => "layouts/#{layout}"
  end

  def error_messages!
    return "" if resource.errors.empty?
    messages = resource.errors.full_messages.map { |msg| content_tag(:li, msg) }.join

    html = <<-HTML
    <div id="error_explanation">
      <ul>#{messages}</ul>
    </div>
    HTML

    html.html_safe
  end
end

module PostsHelper
  def status_label status
    status_span_generator status
  end

  private

    def status_span_generator status
      case status
        when 'approved'
          content_tag(:span, status, class: 'label label_success')
        when 'submitted'
          content_tag(:span, status, class: 'label label_primary')
        when 'rejected'
        content_tag(:span, status, class: 'label label_danger') 
      end
    end
end
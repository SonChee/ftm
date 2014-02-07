module ApplicationHelper

  def full_title page_title
    base_title = "Framgia Training Test Management"
    if base_title.empty?
      base_title
    else
      "#{base_title} | #{page_title}"
    end
  end
end

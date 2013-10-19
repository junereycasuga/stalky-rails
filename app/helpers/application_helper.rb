module ApplicationHelper
    def app_title(page_title)
        base_title = 'Stalky'
        if page_title.empty?
            base_title
        else
            "#{base_title} | #{page_title}"
        end
    end
end

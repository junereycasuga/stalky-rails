module ApplicationHelper
    #CLIENT_ID = "61B8222CBCB84EAA"
    #CLIENT_SECRET = "7929A7C4F79CE489"
    
    def app_title(page_title)
        base_title = 'Stalky'
        if page_title.empty?
            base_title
        else
            "#{base_title} | #{page_title}"
        end
    end
end

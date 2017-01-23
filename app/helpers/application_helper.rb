module ApplicationHelper
    def allow_line_break(text)
        text.gsub(/\n/, '<br/>').html_safe
    end
end

module ApplicationHelper
    def allow_line_break(text)
        text.gsub(/\n/, '<br/>').html_safe
    end

    def google_analytics
        "<script>"\
        "  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){"\
        "  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),"\
        "  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)"\
        "  })(window,document,'script','https://www.google-analytics.com/analytics.js','ga');"\
        "  ga('create', 'UA-97921084-1', 'auto');"\
        "  ga('send', 'pageview');"\
        "</script>".html_safe
    end

    def recaptcha_script
        "<script src='https://www.google.com/recaptcha/api.js' async defer></script>".html_safe
    end
end

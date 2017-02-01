module AboutHelper

    def time(t)
        t.strftime "%Y/%m/%d"
    end

    def time_range(start_t, end_t)
        s = time(start_t)
        if end_t == nil
            e = 'Now'
        else
            e = time(end_t)
        end
        if s.eql?(e)
            s
        else
            s + ' - ' + e
        end
    end

    def gpa(gpa, scale)
        if scale == nil
            gpa.to_s
        else
            gpa.to_s + ' / ' + scale.to_s
        end
    end

    def split_line(str)
        str.split(/\n/)
    end

    def project_detail_tag(project)
        description_tag = nil
        if !project.description.blank?
            description_tag = "<ul class='project-description-list'>"
            project.description.split(/\n/).each do |line|
                description_tag += "<li><p class='project-description'>#{line}</p></li>"
            end
            description_tag += "</ul>"
        end
        ("<div class='project-area'>\n" +
         "  <p class='project-name'>#{project.name}</p>\n" +
         "  <p class='gray project-time'>#{time_range project.start_time, project.end_time}</p>\n" +
         "  #{description_tag}\n" +
         "</div>").html_safe
    end
end

# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$ -> 
    $('[data-toggle="popover"]').popover({      
        trigger: 'hover',
        html: true
    })

    $('.expand-link').click((event) -> 
        link_id = event.target.id
        content_id = link_id.replace('-expand-', '-content-')
        $("##{link_id}").attr('hidden', true)
        $("##{content_id}").removeAttr('hidden')
    )

    $('.hide-link').click((event) -> 
        id = event.target.id
        link_id = id.replace('-hide-', '-expand-')
        content_id = id.replace('-hide-', '-content-')
        $("##{link_id}").removeAttr('hidden')
        $("##{content_id}").attr('hidden', true)
    )



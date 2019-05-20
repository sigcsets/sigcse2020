module Jekyll
  class HeaderTag < Liquid::Tag

    def initialize(tag_name, text, tokens)
      super
      @text = text
    end

    def render(context)
      header = @text
      html = "" 
      html += "<div class='col-sm-12' "
      html += "style = 'padding: 3px;'>"
      html += "<hr>"
      html += "<h2 style='color: black; text-shadow: 1px 1px 1px rgb(85,30,130);'>"
      html += header
      # html += "<hr>"
      html += "</h2>"
      html += "</div>"
      html
    end
  end
end

Liquid::Template.register_tag('section', Jekyll::HeaderTag)
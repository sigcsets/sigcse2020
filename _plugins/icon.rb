module Jekyll
  class IconTag < Liquid::Tag

    def initialize(tag_name, text, tokens)
      super
      @text = text
    end

    def render(context)
      tag = @text
      "<i class='fa fa-#{@text}'></i>"
    end
  end
end

Liquid::Template.register_tag('icon', Jekyll::IconTag)
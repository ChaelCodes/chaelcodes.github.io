# frozen_string_literal: true

# Jekyll
module Jekyll
  # Liquid tag for embedding Google Slides
  class GoogleSlides < Liquid::Tag
    def initialize(_tag_name, content, _tokens)
      super

      @slides_url = content.strip
    end

    def render(_context)
      %(<iframe src="#{@slides_url}?start=true&loop=true&delayms=3000"
          frameborder="0" width="960" height="569" allowfullscreen="true"
          mozallowfullscreen="true" webkitallowfullscreen="true"></iframe>)
    end
  end

  Liquid::Template.register_tag('google', Jekyll::GoogleSlides)
end

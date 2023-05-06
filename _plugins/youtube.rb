# frozen_string_literal: true

# Jekyll
module Jekyll
  # Liquid tag for embedding Google Slides
  class YouTube < Liquid::Tag
    def initialize(_tag_name, content, _tokens)
      super

      @video_url = content.strip
    end

    def render(_context)
      %(<iframe src="#{@video_url}"
        title="YouTube video player"
        height=780
        width=1280
        frameborder="0"
        allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share"
        allowfullscreen>
      </iframe>)
    end
  end

  Liquid::Template.register_tag('youtube', Jekyll::YouTube)
end

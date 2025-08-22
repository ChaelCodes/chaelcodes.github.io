# frozen_string_literal: true

# Jekyll
module Jekyll
  # Liquid tag for embedding Google Slides
  class Steam < Liquid::Tag
    def initialize(_tag_name, content, _tokens)
      super

      @steam_game_id = content.strip
    end

    def render(_context)
      %(<iframe src="https://store.steampowered.com/widget/#{@steam_game_id}/" frameborder="0"
      width="646" height="190"></iframe>)
    end
  end

  Liquid::Template.register_tag('steam', Jekyll::Steam)
end

module ApplicationHelper
    def main_title(separator = " | ")
        [content_for(:title), 'AnimeRuby'].compact.join(separator)
      end
      
      def selected_anime_page_title(title)
        content_for(:title){ title }
        content_tag(:h1, title)
      end
end

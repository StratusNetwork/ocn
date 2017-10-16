class User
    module Themes
        extend ActiveSupport::Concern

        included do
            field :web_theme, type: String
            attr_accessible :web_theme, as: :user

            field :dyslexia_assist, type: Boolean
            attr_accessible :dyslexia_assist, as: :user
        end

        def dark_theme?
            web_theme == "Dark Theme"
        end

        def dyslexia_assist?
            dyslexia_assist == true
        end
    end
end

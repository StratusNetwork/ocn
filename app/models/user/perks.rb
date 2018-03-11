class User
    module Perks
        extend ActiveSupport::Concern

        included do
            field :death_screen, type: String, default: nil

            attr_accessible :death_screen
            attr_accessible :death_screen, as: :user
            api_property :death_screen
        end

        module ClassMethods
            def death_screens
            {
                'default' => 'You died!',
                'headshot' => 'Headshot!',
                'zoinks' => 'Zoinks!',
                'jinkies' => 'Jinkies!',
                'jeepers' => 'Jeepers!',
                'skadoosh' => 'Skadoosh.',
                'kachow' => 'Ka-Chow!',
                'ayy' => 'Ayy!',
                'gandalf' => 'You shall not pass!',
                'gf' => 'Good Fight.',
                'ggwp' => 'GG WP.',
                'bazinga' => 'Bazinga!',
                'looksee' => 'Did you see that?',
                'cheer' => '*crowd cheering*',
                'modpoints' => '-1 mod point',
                'run' => 'Gotta run!',
                'dejavu' => 'Deja vu',
                'kenobi' => 'Hello there!',
                'back' => 'I\'ll be back.',
                'hasta' => 'Hasta la vista!',
                'gladiator' => 'Are you not entertained?',
                'rip' => 'R.I.P.',
                'triple' => 'Oh baby a triple!',
                'next' => 'Next time!',
                'luigi' => 'Itza Me!',
                'crazy' => 'That\'s Crazy_',
                'hec' => 'What the hec!',
                'piston' => 'You\'re piston me off!',
                'mamamia' => 'Mama Mia!',
                'everyone' => '@everyone'
            }
            end

            def valid_death_screen?(key)
                key == nil || death_screens.include?(key) || death_screens.values.include?(key)
            end
        end

        def can_set_death_screen?
            premium? || death_screen != nil
        end

    end
end

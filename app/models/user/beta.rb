class User
    module Beta
        extend ActiveSupport::Concern

        included do
            field :beta_participant, type: Boolean
            attr_accessible :beta_participant, as: :user

            after_save do
                if trophy = Trophy.find('beta-participant')
                    if beta_participant?
                        trophy.give_to(self)
                    else
                        trophy.take_from(self)
                    end
                end
            end
        end

        def beta_participant?
            beta_participant
        end

        def can_set_beta_participant?
            premium?
        end
    end
end

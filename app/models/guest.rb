class Guest < ApplicationRecord
    has_many :applications
    has_many :episodes, through: :applications

end

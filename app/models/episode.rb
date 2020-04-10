class Episode < ApplicationRecord
    has_many :applications
    has_many :guests, through: :applications
end

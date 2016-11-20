class Note < ApplicationRecord
  belongs_to :admin
  belongs_to :inquiry
end

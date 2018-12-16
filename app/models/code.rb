class Code < ApplicationRecord
    belongs_to :user, :optional => true
    before_create :set_code

end

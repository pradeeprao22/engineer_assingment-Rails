class Code < ApplicationRecord
    belongs_to :user, :optional => true
end

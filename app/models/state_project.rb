class StateProject < ApplicationRecord
  belongs_to :project
  belongs_to :state
end

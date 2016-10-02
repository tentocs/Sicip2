class Project < ApplicationRecord
  belongs_to :category
  belongs_to :investigation_area
  belongs_to :research_unit
  belongs_to :state
end

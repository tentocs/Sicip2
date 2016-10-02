class ProjectArea < ApplicationRecord
  belongs_to :project
  belongs_to :investigation_area
end

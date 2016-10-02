class InvestigationProject < ApplicationRecord
  belongs_to :investigator
  belongs_to :project
end

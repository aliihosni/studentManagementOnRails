class Absence < ActiveRecord::Base
    belongs_to :cour
    belongs_to :student
  end
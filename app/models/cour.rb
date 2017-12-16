class Cour < ActiveRecord::Base
    belongs_to :classe
    has_many :absences
  end
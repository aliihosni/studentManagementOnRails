class Student < ActiveRecord::Base
    belongs_to :classe
    has_many :absences
  end
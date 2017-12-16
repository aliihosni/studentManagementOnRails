class Classe < ActiveRecord::Base
    has_many :cours
    has_many :students
  end
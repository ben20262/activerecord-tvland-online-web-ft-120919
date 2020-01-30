class Show < ActiveRecord::Base
  has_many :characters
  belongs_to :network

  def actors_list
    self.characters.map do |role|
      role.actor
    end
  end
end

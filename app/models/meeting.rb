class Meeting < ActiveRecord::Base
  has_and_belongs_to_many :users
  has_many :agenda_items
  has_many :action_items
end

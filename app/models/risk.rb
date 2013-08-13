class Risk < ActiveRecord::Base
  validates :title, presence: true
  validates :impact, presence: true
  validates :likeliness, presence: true
end

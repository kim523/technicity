class Region < ActiveRecord::Base
  extend FriendlyId
  friendly_id :name, use: :slugged

  attr_accessible :name, :public, :slug, :user_id, :description

  has_many :locations
  has_many :region_set_memberships
  has_many :region_sets, :through => :region_set_memberships
  belongs_to :user

  # Returns true if this is editable by the current user
  def editable?
    User::current_id == self.user_id
  end

  def show
    @locations = self.locations
  end
end

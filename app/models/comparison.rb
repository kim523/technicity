class Comparison < ActiveRecord::Base

  attr_accessible :chosen_location_id, :rejected_location_id, :remote_ip

  belongs_to :study
  belongs_to :chosen_location, :class_name => 'Location', :foreign_key => 'chosen_location_id'
  belongs_to :rejected_location, :class_name => 'Location', :foreign_key => 'rejected_location_id'

end
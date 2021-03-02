class Bucket < ActiveRecord::Base
  # NOTE: If one wanted to, one could only change some of the models or change an abstract_class = true mode and then inherit from it
  # def self.connection_specification_name
  #   Connections.instance.current_connection_specification_name
  # end
end

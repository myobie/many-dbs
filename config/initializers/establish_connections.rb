# AFAIK rails should have auto connected to all the dbs nested under
# development, but it doesn't appear to be doing that for me
ActiveRecord::Base.connection_handler.establish_connection :two

module DynamicConnectionSpecificationName
  def connection_specification_name
    Connections.instance.current_connection_specification_name
  end
end

ActiveRecord::Base.extend DynamicConnectionSpecificationName

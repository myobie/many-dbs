class Connections
  include Singleton

  @@default_connection_specification_name = "primary"

  @@connections = {
    two: "two",
    one: "primary"
  }

  def current_connection_specification_name
    Thread.current[:connections_current_connection_specification_name] || @@default_connection_specification_name
  end

  def current_connection_specification_name=(new_name)
    name = @@connections[new_name] || @@default_connection_specification_name
    Thread.current[:connections_current_connection_specification_name] = name
  end

  def with_connection(name)
    original = current_connection_specification_name
    self.current_connection_specification_name = name
    yield
  ensure
    self.current_connection_specification_name = original
  end
end

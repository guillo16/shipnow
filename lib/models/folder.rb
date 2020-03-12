class Folder
  attr_reader :name
  def initialize(attributes = {})
    @name = attributes[:name]
    @files = []
  end
end

class Folder
  attr_reader :name
  def initialize(atributes = {})
    @name = atributes[:name]
    @files = []
  end
end

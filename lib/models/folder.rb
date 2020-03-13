class Folder
  attr_reader :name, :files
  def initialize(atributes = {})
    @name = atributes[:name]
  end
end

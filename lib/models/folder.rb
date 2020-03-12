class Folder
  attr_reader :name, :files
  def initialize(atributes = {})
    @name = atributes[:name]
    @files = []
  end

  def add_file(file)
    @filess << file
    file.folder = self
  end
end

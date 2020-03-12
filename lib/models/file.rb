class File
  attr_reader :title, :content
  attr_accessor :folder
  def initialize(attributes = {})
    @title = attributes[:title]
    @content = attributes[:content]
    @folder = attributes[:folder]
  end
end

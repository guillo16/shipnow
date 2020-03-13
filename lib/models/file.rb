class File
  attr_reader :title, :content
  def initialize(attributes = {})
    @title = attributes[:title]
    @content = attributes[:content]
  end
end

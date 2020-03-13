require_relative "../models/file"

class FileRepository
  def initialize
    @files = []
  end

  def all
    @files
  end

  def add(file)
    @files << file
  end

  def find_by_title(title)
    @files.find { |file| file.title == title }
  end

  def remove_at(title)
    @files.delete(title)
  end
end

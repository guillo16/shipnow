require_relative "../models/file"
require_relative "../models/folder"

class FileRepository
  def initialize(folder_repo)
    @files = []
    @folder_repo = folder_repo
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

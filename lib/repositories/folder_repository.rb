require_relative "../models/folder"

class FolderRepository
  def initialize
    @folders = []
  end

  def all_folder
    @folders
  end

  def add_folder(folder)
    @folders << folder
  end

  def find_by_name(name)
    @folders.find { |folder| folder.name == name }
  end

  def delete_at(name)
    @folders.delete(name)
  end
end

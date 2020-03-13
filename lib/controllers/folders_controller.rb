require_relative "../models/folder"
class FoldersController
  def initialize(folders_repo)
    @folders_repo = folders_repo
  end

  def create_folder(title)
    folder = Folder.new(name: title)
    @folders_repo.add_folder(folder)
  end

  def show(name)
    folder = @folders_repo.find_by_name(name)
    puts folder
  end

  def destroy(name)
    folder = @folders_repo.find_by_name(name)
    @folders_repo.delete_at(folder)
  end
end

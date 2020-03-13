require_relative "../views/folders_view"
require_relative "../models/folder"
class FoldersController
  def initialize(folders_repo)
    @folders_repo = folders_repo
    @view = FoldersView.new
  end

  def create_folder
    title = @view.ask_for_name
    folder = Folder.new(name: title)
    @folders_repo.add_folder(folder)
  end

  def show
    name = @view.ask_user_show
    folder = @folders_repo.find_by_name(name)
    @view.display_content(folder)
  end

  def destroy
    name = @view.ask_for_user_name
    folder = @folders_repo.find_by_name(name)
    @folders_repo.delete_at(folder)
    display_folders
  end

  private

  def display_folders
    folder = @folders_repo.all_folder
    @view.display_folder(folder)
  end
end

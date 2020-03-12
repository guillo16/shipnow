require_relative "../views/files_view"
require_relative "../models/file"

class FilesController
  def initialize(files_repo, folder_repo)
    @files_repo = files_repo
    @view = FilesView.new
    @folder_repo = folder_repo
  end

  def create_file
    title = @view.ask_for_title
    content = @view.ask_for_content
    file = File.new(title: title, content: content)
    @files_repo.add(file)
  end

  def create_folder_file
    title = @view.ask_for_title
    content = @view.ask_for_content
    file = File.new(title: title, content: content)
    persisted_folder = @folder_repo.find_by_name(folder.name)
    persisted_folder.add_file(file)
    @file_repo.add(file)
  end

  def show
    title = @view.ask_for_user_name
    files = @files_repo.find_by_title(title)
    @view.display_content(files)
  end

  def destroy
    title = @view.ask_for_user_name
    files = @files_repo.find_by_title(title)
    @files_repo.remove_at(files)
    display_files
  end

  private

  def display_files
    files = @files_repo.all
    @view.display(files)
  end
end

require_relative "../views/files_view"
require_relative "../models/file"

class FilesController
  def initialize(files_repo)
    @files_repo = files_repo
    @view = FilesView.new
  end

  def create_file
    title = @view.ask_for_title
    content = @view.ask_for_content
    file = File.new(title: title, content: content)
    @files_repo.add(file)
  end

  def show
    title = @view.ask_for_file_name
    files = @files_repo.find_by_title(title)
    @view.display_content(files)
  end

  def destroy
    title = @view.ask_for_file_destroy
    files = @files_repo.find_by_title(title)
    @files_repo.remove_at(files)
  end
end

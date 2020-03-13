require_relative "../models/file"

class FilesController
  def initialize(files_repo)
    @files_repo = files_repo
  end

  def create_file(title, content)
    file = File.new(title: title, content: content)
    @files_repo.add(file)
  end

  def show(name)
    files = @files_repo.find_by_title(name)
    p files.content unless files.nil?
  end

  def destroy(name)
    files = @files_repo.find_by_title(name)
    @files_repo.remove_at(files)
  end
end

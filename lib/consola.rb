require_relative "repositories/file_repository"
require_relative "controllers/files_controller"
require_relative "repositories/folder_repository"
require_relative "controllers/folders_controller"
require_relative "router"

files_repo = FileRepository.new
folders_repo = FolderRepository.new
files_controller = FilesController.new(files_repo)
folders_controller = FoldersController.new(folders_repo)
router = Router.new(files_controller, folders_controller)
router.run

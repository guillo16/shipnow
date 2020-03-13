class Router
  def initialize(files_controller, folders_controller)
    @files_controller = files_controller
    @folders_controller = folders_controller
    @running = true
  end

  def run
    puts '---------------------------------'
    puts 'Welcome to consola'
    puts '---------------------------------'
    while @running
      print '-->'
      action = gets.chomp
      route(action)
    end
    puts 'Bye bye!'
  end

  private

  def print_menu
    puts '----------------------------'
    puts 'Consola Shipnow'
    puts '----------------------------'
    puts 'create_file --> crear un archivo'
    puts 'show_file --> mostrar el contenido del archivo'
    puts 'destroy_file --> destruir el archivo'
    puts 'create_folder --> crear una carpeta'
    puts 'destroy_folder --> destruir una carpeta'
    puts 'ls --> ver el contenido de la carpeta'
    puts 'help --> ayuda'
    puts 'exit --> salis del programa'
    print '> '
  end

  def create_files
    name = gets.chomp
    title = gets.chomp
    @files_controller.create_file(name, title)
  end

  def show_files
    name = gets.chomp
    @files_controller.show(name)
  end

  def destroy_files
    name = gets.chomp
    @files_controller.destroy(name)
  end

  def create_folders
    name = gets.chomp
    @folders_controller.create_folder(name)
  end

  def show_folders
    name = gets.chomp
    @folders_controller.show(name)
  end

  def destroy_folders
    name = gets.chomp
    @folders_controller.destroy(name)
  end

  def route(action)
    case action
    when 'help' then print_menu
    when 'create_file' then create_files
    when 'show_file' then show_files
    when 'destroy_file' then destroy_files
    when 'create_folder' then create_folders
    when 'ls' then show_folders
    when 'destroy_folder' then destroy_folders
    when 'exit' then @running = false
    else
      puts 'try again'
    end
  end
end

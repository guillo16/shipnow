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

  def route(action)
    case action
    when 'create_file' then @files_controller.create_file
    when 'show_file' then @files_controller.show
    when 'destroy_file' then @files_controller.destroy
    when 'help' then print_menu
    when 'create_folder' then @folders_controller.create_folder
    when 'ls' then @folders_controller.show
    when 'destroy_folder' then @folders_controller.destroy
    when 'exit' then @running = false
    else
      puts 'try again'
    end
  end
end

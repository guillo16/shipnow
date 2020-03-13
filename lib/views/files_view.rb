class FilesView
  def ask_for_file_name
    puts 'Nombre del archivo:'
    print '>> '
    gets.chomp
  end

  def ask_for_title
    puts 'Nombre del archivo:'
    print '> '
    gets.chomp
  end

  def ask_for_content
    puts 'Contenido del archivo:'
    print '> '
    gets.chomp
  end

  def ask_for_file_destroy
    puts 'Nombre del archivo que quieres destruir:'
    print '> '
    gets.chomp
  end

  def display_content(file)
    puts file.content
  end
end

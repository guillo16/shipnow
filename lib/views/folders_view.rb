class FoldersView
  def ask_for_name
    puts 'nombre de la carpeta'
    print '> '
    gets.chomp
  end

  def ask_for_user_name
    puts 'nombre de la carpeta que quieres destruir:'
    print '>> '
    gets.chomp
  end

  def ask_user_show
    puts 'nombre de la carpeta que quieres ver:'
    print '>> '
    gets.chomp
  end

  def display_content(folder)
    puts folder
  end
end

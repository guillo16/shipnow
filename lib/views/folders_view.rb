class FoldersView
  def display_folder(folders)
    folders.each_with_index do |folder, index|
      puts "#{index + 1} - #{folder.name}"
    end
  end

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

  def ask_user_for_index
    puts 'numero del archivo que quieres destuir?'
    print '> '
    gets.chomp.to_i - 1
  end

  def display_content(folder)
    puts folder
  end
end

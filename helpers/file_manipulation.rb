module FileManipulation
  def create_folder(folder_name)
    Dir.mkdir(folder_name) unless File.directory?(folder_name)
  end
end
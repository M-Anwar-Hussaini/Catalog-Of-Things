module FileManipulation
  def create_folder(folder_name)
    Dir.mkdir(folder_name) unless File.directory?(folder_name)
  end

  def create_default_file(path)
    default = JSON.pretty_generate([])
    File.write(path, default) unless File.exist?(path)
  end
end
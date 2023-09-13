require_relative 'paths'

module FileManipulation
  include Paths

  def create_folder(folder_name)
    Dir.mkdir(folder_name) unless File.directory?(folder_name)
  end

  def create_default_file(path)
    default = JSON.pretty_generate([])
    File.write(path, default) unless File.exist?(path)
  end

  def create_files_folders
    create_folder('json')
    create_default_file(AUTHORS_PATH)
    create_default_file(GENRES_PATH)
    create_default_file(LABELS_PATH)
    create_default_file(SOURCES_PATH)
    create_default_file(ITEMS_PATH)
  end

  def save_file(file_path, json_data)
    File.write(file_path, json_data)
  end
end
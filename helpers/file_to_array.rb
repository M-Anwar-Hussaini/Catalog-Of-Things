require 'json'

module FileToArray
  def read_file(path)
    JSON.parse(File.read(path))
  end
end

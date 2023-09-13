require 'json'

module FileToArray
  def read_file(path)
    JSON.parse(File.read(path))
  end

  def create_album_obj(album_hash)
    on_spotify = album_hash['On Spotify']
    publish_date = album_hash['Publish Date']
    id = album_hash['ID']
    MusicAlbum.new(on_spotify, publish_date, id: id)
  end
end

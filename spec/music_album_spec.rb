require 'spec_helper'
require_relative '../src/music_album'

RSpec.describe MusicAlbum do
  let(:music_album) { MusicAlbum.new(on_spotify, publish_date) }
  let(:on_spotify) { true }
  let(:publish_date) { '2018-01-01' }

  describe '#initialize' do
    it 'should create a new music album' do
      expect(music_album).to be_an_instance_of MusicAlbum
    end
  end

  describe '#can_be_archieved?' do
    context 'when the music album is not on spotify' do
      let(:on_spotify) { false }

      it 'should return false' do
        expect(music_album.can_be_archieved?).to be false
      end
    end

    context 'when the music album is older than 2 years' do
      let(:publish_date) { '2016-01-01' }

      it 'should return false' do
        expect(music_album.can_be_archieved?).to be false
      end
    end
  end
end

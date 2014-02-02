require 'spec_helper'

describe Mechanize::File do
  before(:each) do
    files_directory = File.expand_path(File.join(File.dirname(__FILE__), '..', 'files'))
    html_file = File.join(files_directory, 'test.html')
    @file = Mechanize::File.new(nil, nil, File.read(html_file))
  end

  describe '#browse' do
    it 'runs the open command' do
      Time.stub(:now) { Time.mktime(1970, 1, 1) }
      @file.stub(:save)
      @file.should_receive(:system).with(/^open -a 'Google Chrome' 'file:\/\/.*?\/28800_0\.html'$/)
      @file.browse
    end
  end
end
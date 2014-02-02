class Mechanize::File
  def browse
    timestamp_string = Time.now.to_f.round(3).to_s.sub('.', '_')
    file_name = timestamp_string + '.html'
    if uri
      file_name = uri.to_s.parameterize + '_' + file_name
    end
    file_path = Pathname.new(ENV['TMPDIR']).join(file_name)
    save(file_path)
    system("open -a 'Google Chrome' 'file://#{file_path}'")
  end
end

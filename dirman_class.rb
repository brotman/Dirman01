=begin
files = Dir["/work/myfolder/**/*.txt"]
files = Dir["D:\RubyTest"]

While getting all the file names in a directory, this snippet can be used to reject both directories [., ..] and hidden files which start with a .

files = Dir.entries("your/folder").reject {|f| File.directory?(f) || f[0].include?('.')}
=end
#--------------------
=begin
require 'win32ole'

file_system = WIN32OLE.new("Scripting.FileSystemObject")
drives = file_system.Drives
drives.each do |drive|
  puts "Available space: #{drive.AvailableSpace}"
  puts "Drive letter: #{drive.DriveLetter}"
  puts "Drive type: #{drive.DriveType}"
  puts "File system: #{drive.FileSystem}"
  puts "Is ready: #{drive.IsReady}"
  puts "Path: #{drive.Path}"
  puts "Root folder: #{drive.RootFolder}"
  puts "Serial number: #{drive.SerialNumber}"
  puts "Share name: #{drive.ShareName}"
  puts "Total size: #{drive.TotalSize}"
  puts "Volume name: #{drive.VolumeName}"

=begin
files.each do |file_name|
  if !File.directory? file_name
    puts file_name
    File.open(file_name) do |file|
      file.each_line do |line|
        if line =~ /banco1/
          puts "Found: #{line}"
        end
      end
    end
  end
end
=end
=begin

def get_path_content(dir)
  queue = Queue.new
  result = []
  queue << dir
  until queue.empty?
    current = queue.pop
    Dir.entries(current).each { |file|
      full_name = File.join(current, file)
      if not (File.directory? full_name)
        result << full_name
      elsif file != '.' and file != '..'
        queue << full_name
      end
    }
  end
  result
end


end

=end

=begin
files = Dir["/work/myfolder/**/*.txt"]
files = Dir["D:\RubyTest"]

While getting all the file names in a directory, this snippet can be used to reject both directories [., ..] and hidden files which start with a .

files = Dir.entries("your/folder").reject {|f| File.directory?(f) || f[0].include?('.')}
=end
#--------------------
=begin



#--------------------

=begin
D:\RubyTest
=end

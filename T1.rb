


=begin
mybase= "D:\RubyTest"
glob="**"
p= mybase
# puts mybase
d= Dir.chdir(mybase)
# puts d, mybase
# puts d.inspect
# puts  d.entries()
puts Dir[glob]
=end
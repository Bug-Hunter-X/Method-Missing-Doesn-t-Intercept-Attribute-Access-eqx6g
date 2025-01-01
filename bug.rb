```ruby
class MyClass
  def initialize(value)
    @value = value
  end

  def method_missing(method_name, *args, &block)
    puts "Method '#{method_name}' not found"
  end

end

my_object = MyClass.new(10)
my_object.non_existent_method # This will print the message
my_object.value # This will raise a NoMethodError
```
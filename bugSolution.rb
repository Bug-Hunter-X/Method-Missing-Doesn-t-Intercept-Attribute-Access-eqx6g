```ruby
class MyClass
  def initialize(value)
    @value = value
  end

  def method_missing(method_name, *args, &block)
    if method_name.to_s =~ /^value$/ #check if it's accessing @value
      return @value
    else
      puts "Method '#{method_name}' not found"
    end
  end

  def respond_to_missing?(method_name, include_private = false)
    method_name.to_s =~ /^value$/ || super #Check if method is value or use default
  end
end

my_object = MyClass.new(10)
my_object.non_existent_method # This will print the message
puts my_object.value # This will now print 10
```
require 'pry'

class Hash
  def keys_of(*arguments)
    arr = []
    arguments.each do |arg|
      keys.each do |k|
        if values[keys.index(k)] == arg
          arr << k
        end
      end
    end
    arr
  end
end

#{"sugar glider"=>"Australia","aye-aye"=> "Madagascar","red-footed tortoise"=>"Panama","kangaroo"=> "Australia","tomato frog"=>"Madagascar","koala"=>"Australia"}.keys_of('Panama')
class Ar
    attr_accessor:arr
def initialize
    self.arr=Array.new
end

def addnew(num)
arr.push(num)
puts "#{num} added"
end

def min
    min_value=1000
for i in 0..arr.size()-1
    if(min_value>arr.at(i))
        min_value=arr.at(i)
    end
end
puts "Minimum value:#{min_value}"
end

def max
    max_value=0
for i in 0..arr.size()-1
    if(max_value<arr.at(i))
        max_value=arr.at(i)
    end
end
puts "Maximum value:#{max_value}"
end

def sum
    sum_val=0;
for i in 0..arr.size()-1
    sum_val=sum_val+arr.at(i)
end
puts "Sum:#{sum_val}"
end

def avg
    sum_val=0;
for i in 1..arr.size()-1
    sum_val=sum_val+arr.at(i)
end
avg_val=sum_val/arr.size()-1
puts "Average:#{avg_val}"
end

def disp
for i in 0..arr.size()-1
    puts arr.at(i).to_s
end
end

def del_by_index(index)
    arr.delete_at(index)
    puts "Deleted"
end

def del_by_value(val)
    arr.delete(val)
    puts "Deleted"
end

def search(num)
    if(!arr.include?(num))
        puts "not found"
    else
    for i in 0..arr.size()-1
        if num==arr.at(i)
            ind=i
        end
    end
    puts "Found at:#{ind}"
    end
end
end

def main
    puts "select the functions to perform on the array:"
    choice=1
    ob=Ar.new
    until choice==10 do
    puts "1.Add 2.Minimun 3.Maximum 4.Display 5.Delete by index 6.Delete by value 7.Sum 8.Average 9.Search 10.Exit"
    choice=gets.chomp.to_i
    case choice
    when 1
        puts "Enter the number to insert:"
        num=gets.chomp.to_i
        ob.addnew(num)
        
    when 2
        ob.min()
        
    when 3
        ob.max()
        
    when 4 
        ob.disp()
        
    when 5
        puts "Enter index:"
        ind=gets.chomp.to_i
        ob.del_by_index(ind)
        
    when 6 
        puts "Enter value:"
        val=gets.chomp.to_i
        ob.del_by_value(val)
        
    when 7
        ob.sum()
        
    when 8
        ob.avg()
        
    when 9
        puts "Enter number to search:"
        s=gets.chomp.to_i
        ob.search(s)
    end
end
end


main()






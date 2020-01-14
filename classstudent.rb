class Student
    attr_accessor :rollno, :name, :state, :branch, :cgpa
    def getdetails
        puts "Enter rollno:"
        @rollno=gets.chomp.to_i
        puts "Enter name:"
        @name=gets.chomp.to_s
        puts "Enter state"
        @state=gets.chomp.to_s
        puts "Enter branch:"
        @branch=gets.chomp.to_s
        puts "Enter cgpa:"
        @cgpa=gets.chomp.to_f
    end
    def show
        puts "Rollno:#{@rollno},Name:#{@name},State:#{@state},Branch:#{@branch},Cgpa:#{cgpa}"
    end
end

y=1
arr=[]
until y==10 do
    puts "1.Add new 2.Display all 3.Display by branch 4.Display by state 5.Search by rollno"
    puts "6.Search by name 7.Delete by rollno 8.Count by state 9.Count by branch 10.Exit"
    y=gets.chomp.to_i
    case y
    when 1
        ob=Student.new
        ob.getdetails
        arr.push(ob)
    when 2
        arr.each do |i|
            i.show
        end
    when 3
        puts "Enter branch:"
        b=gets.chomp.to_s
        arr.each do |i|
            if(i.branch.casecmp?(b))
                i.show
            end
        end
    when 4
        puts "Enter state:"
        b=gets.chomp.to_s
        arr.each do |i|
            if(i.state.casecmp?(b))
                i.show
            end
        end
    when 5
        puts "Enter rollno:"
        b=gets.chomp.to_i
        arr.each do |i|
            if(i.rollno==b)
                i.show
            end
        end
    when 6
        puts "Enter name:"
        b=gets.chomp.to_s
        arr.each do |i|
            if(i.name.include?(b))
                i.show
            end
        end
    when 7
        puts "Enter rollno:"
        b=gets.chomp.to_i
        arr.each do |i|
            if(i.rollno==b)
                arr.delete(i)
            end
        end
    when 8
        puts "Enter state:"
        count=0
        b=gets.chomp.to_s
        arr.each do |i|
            if(i.state.casecmp?(b))
                count+=1
            end
        end
        puts count
    when 9
        puts "Enter branch:"
        count=0
        b=gets.chomp.to_s
        arr.each do |i|
            if(i.branch.casecmp?(b))
                count+=1
            end
        end
        puts count
    end
end


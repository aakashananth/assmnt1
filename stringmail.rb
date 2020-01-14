arr=[]
y=1
until y==8 do
    puts "1.Add 2.Display all 3.Display specific email ids ending with 4.Search 5.Delete mail id"
    puts "6.Display unique domains 7.Count no. of ids in a specific domain 8.Exit"
    y=gets.chomp.to_i
    case y
    when 1
        puts "Enter mail id:"
        mail=gets.chomp.to_s
        arr.push(mail)
        puts "Added"
    when 2
        arr.each do |i|
            puts i
        end
    when 3
        puts "Enter domain extension (.edu or .com etc.):"
        d=gets.chomp.to_s
        arr.each do |i|
            if(i.end_with? d)
                puts i
            end
        end
    when 4
        puts "Enter mail:"
        mail=gets.chomp.to_s
        if(arr.include? mail)
            puts arr.index(mail)
        end
    when 5
        puts "Enter mail:"         
        mail=gets.chomp.to_s
        arr.delete(mail)
        puts "Deleted"
    when 6
       domset=[]
       arr.each do |i|
        if(!domset.include?(i.split("@")[1]))
            domset.push(i.split("@")[1])
        end
        end
        puts domset
    when 7
        puts "Enter domain(example.edu):"
        count=0
        domain=gets.chomp.to_s
        arr.each do |i|
            if(i.split("@")[1]==domain)
                count+=1
            end
        end
        puts count
    end
end





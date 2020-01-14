y=1
until y==5 do
puts "1.Add 2.Subtract 3.Multiply 4.Divide 5.Exit"
y=gets.chomp.to_i
puts "Enter 1st operand:"
op1=gets.chomp.to_f
puts "Enter 2nd operand:"
op2=gets.chomp.to_f
case y
when 1
  puts op1+op2
when 2
  puts op1-op2
 when 3
  puts op1*op2
 when 4
  puts op1/op2
 end
 end

def CountingMinutesI(str)
 from = str.split("-")[0]
  to = str.split("-")[1]
  fromMinute = from.gsub("am", "").gsub("pm", "")
  fromMinute = fromMinute.split(":")[0].to_i * 60 + fromMinute.split(":")[1].to_i
  toMinute = to.gsub("am", "").gsub("pm", "")
  toMinute = toMinute.split(":")[0].to_i * 60 + toMinute.split(":")[1].to_i
  
  result = 0
  multiple = 12
  if(fromMinute > toMinute)
    if (from.include?("am") && to.include?("am")) || (from.include?("pm") && to.include?("pm")) 
      multiple = 24
    end
    result = multiple * 60 - (fromMinute - toMinute)
  elsif
    if (from.include?("am") && to.include?("am")) || (from.include?("pm") && to.include?("pm")) 
      result = toMinute - fromMinute
    elsif
      result = multiple * 60 - (fromMinute - toMinute)
    end
  end
  return result
         
end
   
# keep this function call here 
# to see how to enter arguments in Ruby scroll down   
CountingMinutesI(STDIN.gets)  


















  

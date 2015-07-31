def ThirdGreatest(strArr)

  strArr.each_index do |i|
    (strArr.length - i - 1).times do |j|
      if strArr[j].length > strArr[j + 1].length
        strArr[j], strArr[j + 1] = strArr[j + 1], strArr[j]
      end
    end
  end
  
  secondGreatest = strArr[strArr.length - 1] 
  (strArr.length - 1).downto(0) do |i|
    if(secondGreatest.length > strArr[i].length)      
      secondGreatest = strArr[i]
      break
    end
  end
  
  thirdGreatest = secondGreatest 
  (strArr.length - 3).downto(0) do |i|
    if(thirdGreatest.length == strArr[i].length)
      break
    end
    if(thirdGreatest.length > strArr[i].length)      
      thirdGreatest = strArr[i]
      break
    end
  end
  
  return thirdGreatest 
         
end
   
# keep this function call here 
# to see how to enter arguments in Ruby scroll down   
ThirdGreatest(STDIN.gets)  


















  

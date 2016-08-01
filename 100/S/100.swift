func main(){
	var (a,b) = userInput()
	while a > 0 && b > 0{
		print("\(a) \(b) \(lifecycle(a,num2:b))")
		(a,b) = userInput()
	}
}

func userInput() -> (Int, Int){
	if let inputString = readLine(){
		let inputArray = inputString.characters.split(" ").map {String($0)}
		let num1 = Int(inputArray[0])
		let num2 = Int(inputArray[1])
		return (num1!,num2!)	
	}else{
		return (0,0)
	}
}

func lifecycle(num1:Int,num2:Int) -> Int{
	var max = 0
	for currentValue in num1...num2 {
		var current = currentValue
		var count = 0
		while current != 1{
			count+=1
			current = (current % 2 == 0) ? current/2 : (current*3)+1
		}
		count+=1
		if max < count{
			max = count
		}
	}
	return max
}

main()
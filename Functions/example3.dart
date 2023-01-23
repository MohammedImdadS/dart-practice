void main(List<String> args) {
  print(doNothing());//! Returns null
}

// ! without any return type its a dynamic function
doNothing() {} //* if u call this function it return null

//! above function and the below functions are same 
//! If you won't specify any return type then it's a dynamic type function
dynamic doNothing2() {}
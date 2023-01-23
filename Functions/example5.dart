void main(List<String> args) {
   //! calling with name parameter like this
  sayAnything('Welcome');

  //! callin Named Parameter of 1st case prints default
  nameParameter1(); 

  //! callin Named Parameter of 1st case overwrite default one
  nameParameter1(para: 'overwrite default message'); 

//! we should provide value to para else it shows error
  nameParameter2(para: 'wow'); 

//! we should provide value to para else it shows error
  nameParameter3(para: 'cool'); 

//! for optional value(i.e String? para at function side here String is optional), 
//!we can provide null as value at callside in above case it won't works
  nameParameter3(para: null); 
}

//!Parameter functions
void sayAnything(String message) {
  print('$message');
}

//! Name Parameter function
//** Named parameter should assign else it shows error */
void nameParameter1({
  String para =
      'you can overwrite this in calling with required parameter at call side',
}) {
  print(para);
}

 //* If you are not assign the value then you should make it required parameter
 //! Required named parameters can't have a default value like this 
 //*[void nameParameter2({required String para = 'w'}) {print(para);}]
void nameParameter2({required String para}) {
  print(para);
}

//* if your not going with 1st case or 2nd case 
//*then you have to move 3rd case(make it optional by String? para) for named parameters
void nameParameter3({String? para}) {
  print(para);
}

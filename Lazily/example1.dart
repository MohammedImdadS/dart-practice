// late varables are initialize first then assign value 
late String name; // initialize here 

void main(List<String> args) {
  try {
    // LateInitializationError: Field 'name' has not been initialized.
    // not assign late variable
    print(name);
  } catch (e) {
    print(e);
  }
  name = 'foo'; // assign value to late name variable
  print(name);
}
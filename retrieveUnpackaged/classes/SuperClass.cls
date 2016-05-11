public virtual class SuperClass {
    
    public String salutation;
    public String firstName;
    public String lastName;
    
    public SuperClass(){
        salutation = 'Mr.';
        firstName = 'Abhishek';
        lastName = 'Srivastava';
    }
    
    public SuperClass(String mysalutation, String myfirstName, String mylastName){
        salutation = mysalutation;
        firstName = myfirstName;
        lastName = mylastName;
    }
    
    public virtual void printName() {
        System.debug('My name is ' + salutation + lastName);
    }

    public virtual String getFirstName() {
       return firstName;
   }
 
}
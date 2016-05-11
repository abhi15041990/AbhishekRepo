public class SubClass extends SuperClass{
    public override void printName(){
        super.printName();
        system.debug('we can call super' + super.getFirstName());
    }
    
    public SubClass(){
        super('Mrs.','Ishika','Srivastava');
    }
}
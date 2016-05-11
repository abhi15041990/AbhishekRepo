global class WebServiceLeadManipulationClass {
   webservice static String LeadCreation(String FirstName,String LastName,String Email,String Phone){
    Lead lead=new Lead(FirstName = 'Sudhan',
                       LastName='Acharya',
                       Email='Sudhan.acharya@gmail.com',
                       phone='2344556677');
    DataBase.SaveResult saveResult = Database.insert(lead,false);
        if(saveResult.isSuccess()){
           String responce = 'Success';
           System.debug('Successfully inserted Lead. Lead ID: ' + saveResult.getId()+responce);
        }
        else{
           String responce='Failure';
           System.debug('Lead Insersion Failed' +responce);
        }
        return FirstName+LastName+Email+Phone;
   }
   webservice static void LeadDeletion(String FirstName,String LastName,String Email,String Phone){
    Lead lead=[SELECT id,
                      FirstName,
                      LastName, 
                      Email, 
                      Phone FROM Lead];
    Database.deleteResult deleteResult = Database.delete(lead,false);
        if(deleteResult.isSuccess()){
            String responce = 'Success';
            System.debug('Successfully deleted Lead with ID: ' + deleteResult.getId() +responce);
        }else{
                String responce = 'Failure';
                System.debug('Lead Deletion Failed' +responce);
            }
   }
   webservice static void LeadUpdation(String FirstName,String LastName,String Email,String Phone){
    Lead lead=[SELECT id,
                      FirstName,
                      LastName, 
                      Email, 
                      Phone from Lead ];
   
   }
}
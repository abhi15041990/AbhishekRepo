public class WrapperClassController {
    public List<cContact> contactList{get; set;}
    public List<cContact> getContacts(){
        if(contactList == NULL){
            contactList = new List<cContact>();
            for(Contact c : [SELECT ID, 
                                    NAME,
                                    EMAIL,
                                    PHONE FROM CONTACT limit 10]){
                contactList.add(new cContact(c));
            }
        }
        return contactList;
    }
    public PageReference processSelected(){
        List<Contact> selectedContacts = new List<Contact>();
        for(cContact cCon : getContacts()){
            if(cCon.selected == true){
                selectedContacts.add(cCon.con);
            }
        }
        System.debug('These are the selected Contacts');
        for(Contact co : selectedContacts){
            system.debug(co);
        }
        contactList=null; 
        return null;
    }
/* Wrapeer class of select contacts with select checkboxes */
    public class cContact{
        public Contact con {get;set;}
        public boolean selected {get;set;}
        public cContact(Contact c){
            con = c;
            selected=false;
        }
    }
    
}
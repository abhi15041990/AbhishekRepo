global class PlayerConversion{
    webService
    static String copyPlayerDetails(Id playerClubId){
        List<Player_Club__c> lstPlayersClub =
            [
                SELECT 
                    Id, 
                    Name, 
                    Age__c,
                    Email__c, 
                    Mobile__c  
                FROM 
                    Player_Club__c 
                WHERE 
                    Id = :playerClubId
            ];

    
       List <Player_Country__c> lstPlayerCountry = new List<Player_Country__c>();

        for(Player_Club__c player : lstPlayersClub){
              
                    lstPlayerCountry.add(
                        new Player_Country__c(
                            Name = player.Name,
                            Age__c = player.Age__c,
                            Email__c = player.Email__c,
                            Mobile__c = player.Mobile__c
                        )
                    );
               }     
      try{   
            INSERT lstPlayerCountry;
            return lstPlayerCountry[0].Id; 
        }
        catch (Exception ex){
            
            return('Error');
        }     
}
}
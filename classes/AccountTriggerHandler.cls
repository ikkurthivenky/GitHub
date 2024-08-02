Public class AccountTriggerHandler{
    
    Public static void CreateAccount(List<Account> newList){
        
        for(Account acc : newList){
            if(acc.Rating!= null && acc.Type =='Prospect'){
                acc.Description = 'Rating is Inserted';
            }  
        }
        
    }
    
    Public static void InsertOpportunity(List<Account> accList){
        
        List<Opportunity> OppInsert = new List<Opportunity>();
        For(Account acc : accList){
            Opportunity opp = new Opportunity();
            Opp.name = acc.name;
            Opp.AccountId = acc.Id;
            Opp.CloseDate = System.today();
            Opp.StageName = 'Qualification';
            OppInsert.add(Opp);
        }
        if(!OppInsert.isEmpty()){
            Insert OppInsert;
        }        
        
    }
    
    Public static void UpdateDescription(List<Account> accList, Map<id,account> OldMap){
        
        For(Account acc : accList){
            if(oldMap!=null && acc.phone != OldMap.get(acc.id).phone){
                acc.Description = 'Phone field has changed';
                System.debug('Update Account='+acc);
            } 
            
        }
    }
    
    public static void UpdateRelatedOpportunity(List<Account> accList, Map<Id,Account> oldMap){
        System.debug('AfterUpdateMethod');
        
        Map<Id, Account> OpportunityupdateMap = New Map<Id, Account>();
        List<Opportunity> opporListRecords  = New List<Opportunity>();
        
        For(Account acc : accList){
            if(OldMap!=null && acc.phone!=oldMap.get(acc.Id).phone){
                OpportunityupdateMap.put(acc.Id, acc);
            }
            
        }
        For(Opportunity Opp : [SELECT Id, Account_phone__c, AccountId FROM Opportunity WHERE AccountId IN : OpportunityupdateMap.KeySet()]){
            
            Opportunity Oppor  = New Opportunity();
            if(OpportunityupdateMap.containsKey(Opp.AccountId)){
                Oppor.id = opp.id;
                Oppor.Account_phone__c  = OpportunityupdateMap.get(Opp.AccountId).phone;
                opporListRecords.add(Oppor);
            }
        }
        if(!opporListRecords.isEmpty()){
            Update opporListRecords;   
        }   
    }  
    Public static void InsertCaseDetails(List<Account> newList, Map<id,Account> oldMap){
        List<Case> InsertCase = New List<Case>();
        for(Account acc : newList){
            if(oldMap!=null && acc.Rating == 'Hot'){
                Case cse = New Case();
                cse.status = 'New';
                Cse.origin = 'Phone';
                cse.ContactId = acc.Name;
                InsertCase.add(cse);
            }
        }
        if(!InsertCase.isEmpty()){
            Insert InsertCase;
        }
    }
  
}
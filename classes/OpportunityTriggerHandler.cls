public class OpportunityTriggerHandler {
    Public static void AssignTask(List<Opportunity> newList, Map<id,Opportunity> OldMap){
        List<Task> TaskList = New List<Task>();
        For(Opportunity opp : newList){
            if(opp.stageName != OldMap.get(opp.Id).stageName){
                System.debug('New Apex class deployed');
                Task tsk = New Task();
                tsk.WhatId = Opp.id;
                tsk.Subject ='Demo';
                tsk.Priority = 'Normal';
                tsk.Status = 'Not started';
                tsk.OwnerId = opp.OwnerId;
                TaskList.add(tsk);
            }
            if(!TaskList.isEmpty()){
                insert TaskList;
            }
        }
    }
    Public static void UpdateDescription(List<Opportunity> OppList){
        
        List<Opportunity> Oppor = New List<Opportunity>();
        for(Opportunity opp : OppList){
            if(opp.StageName == 'Prospecting'){
                Opp.Description = 'Opportunity stage is Prospecting';
            } else if(opp.StageName == 'Qualification'){
                Opp.Description = 'Opportunity stage is Qualication';
            }
        }
        for(Opportunity opp : OppList){
            if(opp.Amount <= 10000 && opp.Description != null){
                opp.LeadSource = 'Others';
            }
            
        } if(!OppList.isEmpty()){
            Update Oppor;
        }  
    
    for(Opportunity opp : OppList){
        if(Opp.DeliveryInstallationStatus__c == 'Yet to begin'){
            opp.addError('DeliveryInstallationStatus field can not be an Yet to begin');
        }
    } 
        
        
 }
    
}
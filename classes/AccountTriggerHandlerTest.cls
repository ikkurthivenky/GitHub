@isTest
public class AccountTriggerHandlerTest {
   @isTest
    Public static void CreateAccountTest(){
        List<Account> AccList = New List<Account>();
        
        For(Integer i=1;i<=5;i++){
            Account acc = New Account();
            acc.name = 'Test'+1;
            acc.type = 'Prospecting';
            acc.Rating = '';
            AccList.add(acc);
        }
        Test.startTest();
        Insert AccList;
        Test.stopTest();
       
      
    }
    @isTest
    Public static void InsertOpportunityTest(){
        
        List<Opportunity> OppInsert = new List<Opportunity>();
        For(Integer i=1;i<=10;i++){
            Opportunity opp = new Opportunity();
            Opp.name = 'Account'+1;
            Opp.CloseDate = System.today();
            Opp.StageName = 'Qualification';
            OppInsert.add(Opp);
        }
        
            Test.startTest();
            Insert OppInsert;
            Test.stopTest();
                
        
    }
    @isTest
    Public static void UpdateDescriptionTest(){
        List<Account> AccList = New List<Account>();
        Map<Id, Account> updateMap = New Map<Id, Account>();
        For(Integer i=1;i<=7;i++){
            Account acc = New Account();
            acc.name = 'Test'+1;
            AccList.add(acc);
            } 
          Test.startTest();
            Insert AccList;
            Test.stopTest();   
        }
}
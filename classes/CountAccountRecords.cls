public class CountAccountRecords {

    Public static void AccountCallout(){
        
        Http http = New Http();
        HttpRequest Request = New HttpRequest();
        Request.setEndpoint('http://facebook.com');
        Request.setMethod('GET');
        
        HttpResponse Response = Http.send(Request);
        System.debug('Response ==' +Response.getStatusCode());
        System.debug('Response Body ==' + Response.getBody());
    }
}
public class SearchIndianPostalBranchController 
{
    Public string postalPinCode{get;set;}
    Public List<PostOfficeBranch> lstBranches{get;set;}
    
    Public string  postalResponseJSON{get;set;}
   
    public void SearchPostalBranches()
    {
        lstBranches = new List<PostOfficeBranch>();
        if(postalPinCode !=null && postalPinCode != '' )
        {
            string endPointURL = 'https://api.postalpincode.in/pincode/' + postalPinCode;
            
            Http postalHttp = new Http();
            
            HttpRequest postalRequest = new HttpRequest();
            
            postalRequest.setEndpoint(endPointURL);
            postalRequest.setMethod('GET');
            postalRequest.setTimeout(20000);
            
            HttpResponse postalResponse = postalHttp.send(postalRequest);
            postalResponseJSON = postalResponse.getBody();
            
            //Parse the JSON Content and represent in the tabular format.
            System.JSONParser pParser =  System.JSON.createParser(postalResponse.getBody());
            
            While(pParser.nextToken() != null)
            {
                if(pParser.getCurrentToken() == JsonToken.FIELD_NAME && pParser.getText() == 'Message')
                {
                    pParser.nextToken();
                    system.debug('JSON Response Message is...:' +pParser.getText() );
                }
                if(pParser.getCurrentToken() == JsonToken.FIELD_NAME && pParser.getText() == 'Status')
                {
                    system.debug('Response status is...:' +pParser.getText() );
                }
                if(pParser.getCurrentToken() == JsonToken.FIELD_NAME && pParser.getText() == 'PostOffice')
                {
                    pParser.nextToken();
                    if(pParser.getCurrentToken() == JsonToken.START_ARRAY)
                    {
                        pParser.nextToken();
                        if(pParser.getCurrentToken() == JsonToken.START_OBJECT)
                        {
                            PostOfficeBranch branch = (PostOfficeBranch) pParser.readValueAs(PostOfficeBranch.Class);
                            lstBranches.Add(branch);
                            pParser.nextToken();
                        }
                    }
                }
            }
        }
    }
}
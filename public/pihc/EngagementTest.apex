@RestResource(urlMapping='/engagement/*')
global with sharing class EngagementTest {
    @HttpPost
    global static String createNew() {  
        String name = RestContext.request.params.get('name');
        String category = RestContext.request.params.get('category');
        String address = RestContext.request.params.get('address');
    	WeizongTest__c nut = new WeizongTest__c();
     	nut.Name__c  = name;
     	nut.Category__c = category;
     	nut.Address__c  = address;
     	insert nut;
     	      
     return 'Submitted WeizongTest:' + name + ' ' + category + ' ' + address;
  }
 
    @HttpGet
    global static List< WeizongTest__c > getEngagement() {
        String category = RestContext.request.params.get('category');
        List<WeizongTest__c> item = [SELECT Name__c, Category__c, Address__c  from WeizongTest__c  WHERE Category__c =: category];
        return item;
    }
}

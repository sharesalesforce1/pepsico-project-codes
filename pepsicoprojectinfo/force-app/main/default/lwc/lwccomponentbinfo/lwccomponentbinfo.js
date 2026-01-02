import { LightningElement,wire } from 'lwc';
import SAMPLEMC from "@salesforce/messageChannel/SampleMessageChannelInfo__c"
import {APPLICATION_SCOPE,publish,subscribe,unsubscribe,MessageContext} from 'lightning/messageService';

export default class Lwccomponentbinfo extends LightningElement {
   @wire(MessageContext)context;
   receivedmessage
   subscription

   connectedCallback() {
     this.subscribeMessage()
   }

   subscribeMessage()
   {
      this.subscription = subscribe(this.context,SAMPLEMC,(message)=>{this.handleMessage(message)},{scope: APPLICATION_SCOPE})

   }

   handleMessage(message)
   {
    this.receivedmessage = message.lmsData.value ? message.lmsData.value : 'No message published';
   }

   unsubscribemessage()
   {
    unsubscribe(this.subscription)
    this.subscription=null
   }


}
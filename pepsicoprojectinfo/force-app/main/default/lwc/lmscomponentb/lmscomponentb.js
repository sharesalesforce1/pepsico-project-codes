import { LightningElement,wire } from 'lwc';
import SAMPLEMC from '@salesforce/messageChannel/SampleMsgChannel__c'
import {APPLICATION_SCOPE,publish,subscribe,unsubscribe,MessageContext} from 'lightning/messageService';


export default class Lmscomponentb extends LightningElement 
{
  @wire(MessageContext)context;
  subscription
  receivedmessage

  connectedCallback() {
    this.subscribemessage()
  }

  subscribemessage()
  {
    this.subscription = subscribe(this.context,SAMPLEMC,(message)=>{this.handleMessage(message)},{scope: APPLICATION_SCOPE})

  }

  handleMessage(message)
  {
    this.receivedmessage = message.lmsData.value?message.lmsData.value : 'No message published'
  }

  unsubscribe()
  {
    unsubscribe(this.subscription)
    this.subscription=null
  }
}
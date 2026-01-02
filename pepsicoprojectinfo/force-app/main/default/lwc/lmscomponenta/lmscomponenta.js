import { LightningElement,wire } from 'lwc';
import SAMPLEMC from '@salesforce/messageChannel/SampleMsgChannel__c'
import {APPLICATION_SCOPE,publish,subscribe,unsubscribe,MessageContext} from 'lightning/messageService';


export default class Lmscomponenta extends LightningElement 
{
  @wire(MessageContext)context;
  
  inputvalue
  changehandler(event)
  {
     this.inputvalue=event.target.value
  }

  publishhandler()
  {
    const message={
        lmsData:{
            value:this.inputvalue
        }
    }
    publish(this.context,SAMPLEMC,message)
  }
}
import { LightningElement } from 'lwc';
import pubsub from 'c/pubsub'
export default class Pubsubcomponentb extends LightningElement {
  message
  connectedCallback() {
    this.callsubscriber();
  }

  callsubscriber()
  {
    pubsub.subscribe('componentA',(message)=>{
        this.message=message
    })
  }
}
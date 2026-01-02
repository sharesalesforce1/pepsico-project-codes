import { LightningElement } from 'lwc';
import pubsub from 'c/pubsub'

export default class Pubsubcomponenta extends LightningElement {

  message  
  changehandler(event)
  { 
    this.message=event.target.value
  }

  publishhandler()
  {
    pubsub.publish('componentA',this.message)
  }
}
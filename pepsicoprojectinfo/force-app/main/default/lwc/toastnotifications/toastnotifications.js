import { LightningElement } from 'lwc';
import {ShowToastEvent} from 'lightning/platformShowToastEvent'
export default class Toastnotifications extends LightningElement {
  toasthandlerone()
  {
    const event = new ShowToastEvent({
        title:'success',
        message : 'account created',
        variant:'success'
    })
    this.dispatchEvent(event)
  }

  toasthandlertwo()
  {
     const event = new ShowToastEvent({
        title:'Error',
        message : 'account creation failed',
        variant:'error'
    })
    this.dispatchEvent(event)
  }

  toasthandlerthree()
  {
      const event = new ShowToastEvent({
        title:'warning',
        message : 'password should have 15 characters',
        variant:'warning'
    })
    this.dispatchEvent(event)
  }

  toasthandlerfour()
  {
      const event = new ShowToastEvent({
        title:'Info',
        message : 'winter 26 release available',
        variant:'Info'
    })
    this.dispatchEvent(event)
  }
}
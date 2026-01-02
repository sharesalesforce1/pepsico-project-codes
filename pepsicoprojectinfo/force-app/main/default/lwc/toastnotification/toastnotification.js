import { LightningElement } from 'lwc';
import {ShowToastEvent} from 'lightning/platformShowToastEvent'

export default class Toastnotification extends LightningElement {
  toasthandlerone()
  {
    const event = new ShowToastEvent({
        title:'Success',
        message:'Account created',
        variant:'success'
    })
    this.dispatchEvent(event)
  }

  toasthandlertwo()
  {
       const event = new ShowToastEvent({
        title:'Error',
        message:'Account creation failed',
        variant:'error'
    })
    this.dispatchEvent(event)
  }

  toasthandlerthree()
  {
    const event = new ShowToastEvent({
        title:'Warning',
        message:'Password should had 15 characters',
        variant:'warning'
    })
    this.dispatchEvent(event)
  }

  toasthandlerfour()
  {
    const event = new ShowToastEvent({
        title:'Info',
        message:'Summer20 release is available',
        variant:'Info'
    })
    this.dispatchEvent(event)
  }
}
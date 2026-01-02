import { LightningElement } from 'lwc';
import {deleteRecord} from 'lightning/uiRecordApi'
import {ShowToastEvent} from 'lightning/platformShowToastEvent'

export default class DeleteRecordDemo extends LightningElement {
    recordId
  changehandler(event)
  {
    this.recordId=event.target.value
  }

  deletehandler()
  {
     deleteRecord(this.recordId).then(()=>{
        this.showToast('Success!!','deleted successfully!!','success')
     })
     .catch((error)=>{
        this.showToast('Error',error.body.message,'error')
     })
  }

  showToast(title,message,variant)
  {
     this.dispatchEvent(new ShowToastEvent({
        title,
        message,
        variant
     }))
  }
}
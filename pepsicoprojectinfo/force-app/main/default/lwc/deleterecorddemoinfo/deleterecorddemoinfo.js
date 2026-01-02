import { LightningElement } from 'lwc';
import {deleteRecord} from 'lightning/uiRecordApi';
import {ShowToastEvent} from 'lightning/platformShowToastEvent'
export default class Deleterecorddemoinfo extends LightningElement 
{
    recordId
  changehandler(event)
  {
    this.recordId=event.target.value
  }

  deletehandler()
  {
    deleteRecord(this.recordId).then(()=>{
        this.showToast('success!!','deleted successfull','success');
    }).catch(error=>{
        this.showToast('error!!','error occured','error');
    })
  }

  showToast(title,message,variant){
    this.dispatchEvent(new ShowToastEvent({
        title,
        message,
        variant
    }))
  }
}
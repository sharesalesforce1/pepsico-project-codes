import { LightningElement } from 'lwc';
export default class Dynamicstyling extends LightningElement {
    percent=10

  changehandler(event)
  {
    this.percent=event.target.value
  }

  get percentage()
  {
    return `width:${this.percent}%` //50% 10%
  }
}
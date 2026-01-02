import { LightningElement } from 'lwc';
export default class Lifecycleparentinfo extends LightningElement {
  constructor()
  {
    super()
    console.log('parent constructor is called');
  }
  connectedCallback() {
    console.log('parent connectedcallback')
  }
  renderedCallback(){
    console.log('parent renderedcallback');
  }
  errorCallback(error, stack) {
    this.error = error;
    console.log(error)
  }
  name
  changehandler(event)
  {
    this.name=event.target.value
  }
}
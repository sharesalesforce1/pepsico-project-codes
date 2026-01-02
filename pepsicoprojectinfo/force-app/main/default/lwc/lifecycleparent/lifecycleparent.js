import { LightningElement } from 'lwc';
export default class Lifecycleparent extends LightningElement 
{
    name
  constructor()
  {
     super()
     console.log('parent constructor')
  }
  connectedCallback() {
    console.log('parent connectedcallback')
    this.handleinfo();
  }

  handleinfo()
  {
    console.log('parent is called');
  }
  renderedCallback(){
    console.log('parent renderedcallback');
  }

  handledata(event)
  {
    this.name=event.target.value
  }
  errorCallback(error, stack) {
    this.error = error;
    console.log(error.message)
    console.log(stack)
  }
}
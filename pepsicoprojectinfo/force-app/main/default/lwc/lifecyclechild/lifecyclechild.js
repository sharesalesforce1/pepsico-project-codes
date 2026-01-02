import { LightningElement } from 'lwc';
export default class Lifecyclechild extends LightningElement {
  constructor()
  {
     super()
     console.log('child constructor')
  }
  connectedCallback() {
    console.log('child connectedcallback')
    throw new Error('loading of child component failed');
  }
  renderedCallback(){
    console.log('child renderedcallback');
  }
  disconnectedCallback() {
    console.log('disconnectedcallback is called')
  }
}
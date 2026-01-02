import { LightningElement } from 'lwc';
export default class Lifecyclechildinfo extends LightningElement {
   constructor()
  {
    super()
    console.log('child constructor is called');
  }
  connectedCallback() {
    console.log('child connectedcallback')
    throw new Error('loading of child component failed');
  }
  renderedCallback(){
    console.log('child renderedcallback');
  }

  disconnectedCallback() {
    console.log('disconnectedcallback is called');
  }
     
  }
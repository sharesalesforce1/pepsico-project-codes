import { LightningElement } from 'lwc';
import signintemplate from './signinTemplate.html'
import signuptemplate from './signupTemplate.html'
import rendertemplate from './rendermethodinfo.html'
export default class Rendermethodinfo extends LightningElement {
  
  render()
  {
    return this.selectedBtn === 'Signup' ? signuptemplate :
    this.selectedBtn === 'Signin' ? signintemplate:
    rendertemplate
  }
  selectedBtn=''
  handleclick(event)
  {
    this.selectedBtn = event.target.label
  }
}
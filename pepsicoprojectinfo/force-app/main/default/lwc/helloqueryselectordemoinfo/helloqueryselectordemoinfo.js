import { LightningElement } from 'lwc';
export default class Helloqueryselectordemoinfo extends LightningElement {
  
  fetchDetailHandler()
  {
     const elem = this.template.querySelector('h1');
     console.log(elem.innerText);

     elem.style.color = "red";
     elem.style.fontSize="30px";
     elem.style.backgroundColor = "green";
  }
}
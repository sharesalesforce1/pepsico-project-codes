import { LightningElement } from 'lwc';
export default class HelloQueryselectordemo extends LightningElement {
   fetchdetailhandler()
   {
     const elem = this.template.querySelector('h1');
     console.log(elem.innerText);
     elem.style.color="red";
     elem.style.fontSize="30px";
     elem.style.backgroundColor="green";
   }
}
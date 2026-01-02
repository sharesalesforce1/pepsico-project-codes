import { LightningElement,track } from 'lwc';

const columns=[
    {'label':'Employee Name',fieldName:'enm',type:'text'},
    {'label':'Employee Phone',fieldName:'eph',type:'text'},
    {'label':'Employee City',fieldName:'ecit',type:'text'}
]
export default class Employeeparentcomponentinfo extends LightningElement {
   @track empname;
   @track empphone;
   @track empcity;
   @track empdetails=[];
   columns=columns;

   handlevent(event)
   {
     this.empname=event.detail.enm;
     this.empphone=event.detail.eph;
     this.empcity=event.detail.ecit;

     this.empdetails=[{
        enm:this.empname,eph:this.empphone,ecit:this.empcity
     }]
   }
}
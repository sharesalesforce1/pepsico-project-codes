import { LightningElement } from 'lwc';
export default class Looping extends LightningElement {
  carList=["ford","audi","maruthi","Hyundai","mercedes"];

  ceoList=[
    {
        id:1,
        company:'Google',
        name:'Sundar pichai'
    },
    {
        id:2,
        company:'Appleinc',
        name:'Timcook'
    },
    {
        id:3,
        company:'Amazon',
        name:'Jeff'
    }
  ]
}
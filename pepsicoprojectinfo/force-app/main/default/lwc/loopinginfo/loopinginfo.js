import { LightningElement } from 'lwc';
export default class Loopinginfo extends LightningElement {
  carList = ["ford","audi","maruti","hyundai","mercedes"]

  ceoList=[
    {
        id:1,
        company:"Google",
        name:"Sundar pichai"
    },
    {
        id:2,
        company:"Appleinc",
        name:"Timcook"
    },
    {
        id:3,
        company:"fb",
        name:"mark"
    },
    {
        id:4,
        company:"amazon",
        name:"jeff"
    }

  ]
}
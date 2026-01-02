import { LightningElement } from 'lwc';
import MOMENT from '@salesforce/resourceUrl/moment';
import {loadScript} from 'lightning/platformResourceLoader';
import {loadStyle} from 'lightning/platformResourceLoader';
import ANIMATE from '@salesforce/resourceUrl/animate';

export default class Thirdpartyfilesinfo extends LightningElement {
  currentDate=''
  isLibLoaded = false

  renderedCallback(){
      if(this.isLibLoaded)
      {
        return
      }
      else
      {
        Promise.all([
            loadStyle(this,ANIMATE+'/animate/animate.min.css'),
            loadScript(this,MOMENT+'/moment/moment.min.js')
        ]).then(()=>{
            this.setDateonscreen()
        })
        this.isLibLoaded = true
      }
  }

  setDateonscreen()
  {
     this.currentDate = moment().format('LLLL');
  }
}
import { LightningElement } from 'lwc';
import {NavigationMixin} from 'lightning/navigation'

export default class Navigationservice extends NavigationMixin(LightningElement) 
{
  navigateToHome()
  {
    this[NavigationMixin.Navigate]({
        type:'standard__namedPage',
        attributes:{
            pageName:'home'
        }
    })
  }

  navigateToChatter()
  {
     this[NavigationMixin.Navigate]({
        type:'standard__namedPage',
        attributes:{
            pageName:'chatter'
        }
    })
  }

  navigateToNewRecord()
  {
    this[NavigationMixin.Navigate]({
        type:'standard__objectPage',
        attributes:{
           objectApiName:'Contact',
           actionName:'new'
        }
    })
  }

  navigateToListView()
  {
    this[NavigationMixin.Navigate]({
        type:'standard__objectPage',
        attributes:{
           objectApiName:'Contact',
           actionName:'list'
        },
        state:{
            filterName:'Recent'
        }
    })
  }

  navigateToFiles()
  {
    this[NavigationMixin.Navigate]({
        type:'standard__objectPage',
        attributes:{
           objectApiName:'ContentDocument',
           actionName:'home'
        }
    })
  }

  navigateToTab()
  {
     this[NavigationMixin.Navigate]({
        type:'standard__navItemPage',
        attributes:{
           apiName:'LMS'
        }
    })
  }

  navigateToExternal()
  {
    this[NavigationMixin.Navigate]({
        type:'standard__webPage',
        attributes:{
           url:"https://www.google.com"
        }
    })
  }

  navigateToLwc()
  {
    var defination={
        componentDef:'c:rendermethod'
    }
    this[NavigationMixin.Navigate]({
        type:'standard__webPage',
        attributes:{
            url:'/one/one.app#'+btoa(JSON.stringify(defination))
        }
    })
  }

  navigateToVfPage()
  {
    this[NavigationMixin.Navigate]({
         type:'standard__webPage',
         attributes:{
            url:'/apex/vfpagecalculator'
         }
    }).then(generatedurl=>{
        window.open(generatedurl)
    })
  }
}
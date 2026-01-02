import { LightningElement } from 'lwc';
import {NavigationMixin} from 'lightning/navigation'
export default class Navigationinfo extends NavigationMixin(LightningElement) 
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

    navigateToListview()
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
               apiName:'booklisting_api_callout'
            }
        })
    }

    navigateToExternalPage()
    {
         this[NavigationMixin.Navigate]({
            type:'standard__webPage',
            attributes:{
               url:"https://www.gemini.com"
            }
        })
    }

    navigateToVfPage()
    {
         this[NavigationMixin.Navigate]({
            type:'standard__webPage',
            attributes:{
               url:"/apex/vfpagecalculator"
            }
        }).then(generatedUrl=>{
            window.open(generatedUrl)
        })
    }

    navigateToLwc()
    {
        var defination={
            componentDef:'c:navigationLwcTarget'
        }

        this[NavigationMixin.Navigate]({
            type:'standard__webPage',
            attributes:{
                url:'/one/one.app#'+btoa(JSON.stringify(defination))
            }
        })
    }
}
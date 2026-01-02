import { LightningElement } from 'lwc';
const BOOK_URL = 'https://www.googleapis.com/books/v1/volumes?q='   
const weather_url='https://openweathermap.org/api'
export default class BookApp extends LightningElement {
    query='Salesforce'
    books
    timer
    weatherdata

    connectedCallback(){
        this.fetchBookData()
        this.weathermapdata()
    }

    fetchBookData(){
        fetch(BOOK_URL+this.query) 
        .then(response=>response.json())
        .then(data=>{
            console.log(data)
            this.books = data
        })
        .catch(error=>console.error(error))
    }

    weathermapdata()
    {
         fetch(weather_url) 
        .then(response=>response.json())
        .then(data=>{
            console.log(data)
            this.weatherdata = data
        })
        .catch(error=>console.error(error))
    }
   

    fetchbookshandler(event){
        this.query = event.target.value
        window.clearTimeout(this.timer)
        this.timer= setTimeout(()=>{
            this.fetchBookData()
        }, 1000)
    }
}
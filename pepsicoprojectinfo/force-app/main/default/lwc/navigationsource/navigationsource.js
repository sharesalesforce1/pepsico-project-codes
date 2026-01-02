import { LightningElement } from 'lwc';
import { NavigationMixin } from 'lightning/navigation';

export default class NavigationSource extends NavigationMixin(LightningElement) {
    accName;
    rating;
    industry;
    phone;
    fax;

    // Picklist options
    ratingOptions = [
        { label: 'Hot', value: 'Hot' },
        { label: 'Warm', value: 'Warm' },
        { label: 'Cold', value: 'Cold' }
    ];

    industryOptions = [
        { label: 'Agriculture', value: 'Agriculture' },
        { label: 'Banking', value: 'Banking' },
        { label: 'Biotechnology', value: 'Biotechnology' },
        { label: 'Chemicals', value: 'Chemicals' }
    ];

    handleChange(event) {
        this[event.target.dataset.field] = event.target.value;
    }

    goNext() {
        const accountData = {
            accName: this.accName,
            rating: this.rating,
            industry: this.industry,
            phone: this.phone,
            fax: this.fax
        };

        const defination = {
            componentDef: 'c:navigationtarget',
            attributes: { accountData: accountData }
        };
        this[NavigationMixin.Navigate]({
            type: 'standard__webPage',
            attributes: {
                url: '/one/one.app#' + btoa(JSON.stringify(defination))
            }
        });
    }
}
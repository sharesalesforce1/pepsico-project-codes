public class BasicCalculatorController 
{
    Public integer firstNumber{get;set;}
    Public integer secondNumber{get;set;}
    Public integer result{get;set;}
    
    Public void Addition()
    {
        result = firstNumber + secondNumber;
    }
    
    Public void Subtraction()
    {
        result = firstNumber - secondNumber;
    }
    
    Public void Multiply()
    {
        result = firstNumber * secondNumber;
    }
    
    Public void Division()
    {
        if(secondnumber > 0)
        {
            result = firstNumber / secondNumber;
            ApexPages.AddMessage(new ApexPages.Message(ApexPages.Severity.CONFIRM, 'Division Operation has been completed successfully.'));
        }
        else
        {
            ApexPages.AddMessage(new ApexPages.Message(ApexPages.Severity.WARNING, 'Division Operation Cannot be performed.Please Enter the Valid Input.'));
        }        
    }
    
    Public void Modulus()
    {
        result = Math.Mod(firstNumber, secondNumber);
    }    
}
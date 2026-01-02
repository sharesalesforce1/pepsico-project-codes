public class BankAccount 
{
  private string accountnumber;
  private decimal balance;
  
  public BankAccount(string accnum,decimal bal)
  {
      this.accountnumber=accnum;
      this.balance=bal;
  }
   
  public void deposit(Decimal amount)
  {
      balance+=amount; //1000+500=1500
  }
    
  public void withdraw(Decimal amount)
  {
      if(amount>balance)
      {
          system.debug('insufficient balance');
      }
      else
      {
          balance-=amount;  //balance=balance-amount; //10000-2000 = 8000
      }
  }
    
  public decimal getBalance()
  {
      return balance;
  }
}
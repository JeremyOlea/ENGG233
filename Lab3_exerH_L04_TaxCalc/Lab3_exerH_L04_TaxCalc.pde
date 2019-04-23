// This program prompts and reads a province and a taxable income.  Then,
// using if-else structures, the tax rate is computed for the province
// and the taxable income.  The tax rate and the net income are illustrated
// using a simple bar chart 

import javax.swing.JOptionPane;


//Input Variables
String prov_id = "";                  //province_id will contain the user input for the province (E.g. 'AB'). 
float gross_income = 0;               //gorss_income contains the user input for gross income (E.g. 30000). 

//Output Variables:
//You will store the result of your analysis and calculations in these variables
float tax_rate = 0;                        //Variable tax_rate will hold the tax_rate percentage. You will assign a value for tax_rate based on the Taxable Income (Table 1) table given in the studio project document. 
                                           //The value of tax ranges between 0 to 1 (E.g. for Alberta, income of equal or less than $40000 tax = 0.25)

float net_income = 0;                     //Net income is calculated based on tax_rate. It is the take-home income after taxes are deducted. 
                                          //i.e. net_income = gross_income * (1 - tax_rate); 
                                          
float tax_amount = 0;                    //tax amount is the amount of taxes paid based on gross income depending on the province.
                                        //i.e. tax_amount = gross_income * tax_rate;

// prompt for and read the province id 
prov_id = JOptionPane.showInputDialog("Please enter your province's two-letter abbreviation (e.g., AB for Alberta): ");
    
// prompt for and read the gross income
String answer = JOptionPane.showInputDialog("Please enter your taxable income: ");

//convert user input to folat
gross_income = Float.parseFloat(answer);
  


  // Alberta
  if ( prov_id.equals("AB") || prov_id.equals("ab"))
  {
    if(gross_income > 0 && gross_income <= 40000) 
    {
      tax_rate = 0.25;
      net_income = gross_income * (1 - tax_rate);
      tax_amount = gross_income * tax_rate; 
    }
      else if(gross_income > 40000 && gross_income <= 80000)
       {
      tax_rate = 0.32;
      net_income = gross_income * (1 - tax_rate);
      tax_amount = gross_income * tax_rate; 
    }
     else if(gross_income > 80000 && gross_income <= 120000)
       {
      tax_rate = 0.36;
      net_income = gross_income * (1 - tax_rate);
      tax_amount = gross_income * tax_rate; 
    }
    else if(gross_income > 120000)
       {
      tax_rate = 0.39;
      net_income = gross_income * (1 - tax_rate);
      tax_amount = gross_income * tax_rate; 
    }
  }
  
  // BRITISH COLOM
  if(prov_id.equals("BC") || prov_id.equals("bc"))
  {
    if(gross_income > 0 && gross_income <= 20000)
       {
      tax_rate = 0.20;
      net_income = gross_income * (1 - tax_rate);
      tax_amount = gross_income * tax_rate; 
    }
    else if(gross_income > 20000 && gross_income <= 35000)
       {
      tax_rate = 0.225;
      net_income = gross_income * (1 - tax_rate);
      tax_amount = gross_income * tax_rate; 
    }
    else if(gross_income > 35000 && gross_income <= 50000)
       {
      tax_rate = 0.30;
      net_income = gross_income * (1 - tax_rate);
      tax_amount = gross_income * tax_rate; 
    }
    else if(gross_income > 50000 && gross_income <= 65000)
       {
      tax_rate = 0.325;
      net_income = gross_income * (1 - tax_rate);
      tax_amount = gross_income * tax_rate; 
    }
    else if(gross_income > 65000 && gross_income <= 80000)
       {
      tax_rate = 0.365;
      net_income = gross_income * (1 - tax_rate);
      tax_amount = gross_income * tax_rate; 
    }
    else if(gross_income > 80000 && gross_income <= 100000)
       {
      tax_rate = 0.393;
      net_income = gross_income * (1 - tax_rate);
      tax_amount = gross_income * tax_rate; 
    }
    else if(gross_income > 100000 && gross_income <= 120000)
       {
      tax_rate = 0.41;
      net_income = gross_income * (1 - tax_rate);
      tax_amount = gross_income * tax_rate; 
    }
    else if(gross_income > 120000)
       {
      tax_rate = 0.44;
      net_income = gross_income * (1 - tax_rate);
      tax_amount = gross_income * tax_rate; 
    }
  }
  
  //SASK AND ONTARIO
  if(prov_id.equals("SK") || prov_id.equals("sk") || prov_id.equals("ON") || prov_id.equals("on"))
  {
    if(gross_income > 0 && gross_income <= 40000)
       {
      tax_rate = 0.25;
      net_income = gross_income * (1 - tax_rate);
      tax_amount = gross_income * tax_rate; 
    }
    else if(gross_income > 30000 && gross_income <= 60000)
       {
      tax_rate = 0.30;
      net_income = gross_income * (1 - tax_rate);
      tax_amount = gross_income * tax_rate; 
    }
    else if(gross_income > 60000 && gross_income <= 80000)
       {
      tax_rate = 0.35;
      net_income = gross_income * (1 - tax_rate);
      tax_amount = gross_income * tax_rate; 
    }
    else if(gross_income > 80000 && gross_income <= 100000)
       {
      tax_rate = 0.40;
      net_income = gross_income * (1 - tax_rate);
      tax_amount = gross_income * tax_rate; 
    }
    else if(gross_income > 100000 && gross_income <= 120000)
       {
      tax_rate = 0.45;
      net_income = gross_income * (1 - tax_rate);
      tax_amount = gross_income * tax_rate; 
    }
    else if(gross_income > 120000)
       {
      tax_rate = 0.50;
      net_income = gross_income * (1 - tax_rate);
      tax_amount = gross_income * tax_rate; 
    }
  }

// Draw a bar chart to illustrate the user tax information as shown in the example in the lab assignment 

size(600,600);
textSize(18);
int roundamount = Math.round(tax_amount); //will round the number to nearest whole number
int roundgross = Math.round(gross_income);
int roundnet = Math.round(net_income);
String gross = nfc(roundgross); //to make commas appear
String taxa = nfc(roundamount);
String net = nfc(roundnet);
//province
fill(#716161);
text("Province:"+"              "+prov_id,50,60);
//gross income
fill(#4B1CE8);
text("Gross Income:"+"      "+"$"+gross,50,110);
//Tax rate
fill(0);
text("Tax Rate:"+"              "+tax_rate+"%",50,160);
//Tax Amount
fill(#E8171E);
text("Tax Amount:"+"        "+"$"+taxa,50,210);
//Tax Income
fill(#29A711);
text("Tax Income:"+"        "+"$"+net,50,260);

//Bar Graph of Tax and Net income
fill(#29A711);
rect(100,340,400,10); //Tax Amount
fill(#E8171E);
rect(100,340,(tax_amount/net_income)*400,10); //Net income
fill(#4B1CE8);
rect(100,390,400,10); //Gross incom
   
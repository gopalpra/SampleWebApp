public class Scenario45 {
    public static Decimal getDiscountPercentage(Decimal OpportunityAmount){
        List<Discount_Tiers__c>dtList=[Select Minimum_Amount_c__c ,Discount_Percentage_C__c,
                                     Customer_Tier_c__c From Discount_Tiers__c
                                       ORDER BY Minimum_Amount_c__c ASC];
        Decimal discountPercentage=0;
        for(Discount_Tiers__c tier:dtList){
            if(opportunityAmount>=Decimal.valueOf(tier.Minimum_Amount_c__c)){
                 discountPercentage=Decimal.valueOf(tier.Discount_Percentage_C__c);
            }else{
                break;
            }
        }
          return discountPercentage;
    }
    public static void applyDiscountToOpp(Opportunity opp){
        Decimal discountPercentage=getDiscountPercentage(opp.Amount);
        Decimal discountAmount=opp.Amount*(discountPercentage/100);
        opp.Discount__c=discountAmount;
        opp.Discount_Percentage__c=discountPercentage;
    }
}
//
//  SummaryView.swift
//  cents
//
//  Created by Ivan Minier on 7/22/17.
//  Copyright © 2017 Ivan Minier. All rights reserved.
//

import UIKit

class SummaryView: UIView, Comparato {
    
    let x: Character = "🛑"
    let y: Character = "✅"
    
    var summaryItemA: ItemToCompare!
    var summaryItemB: ItemToCompare!
    
    var summaryOfItems: ItemSummary!
    
    var labelX: UILabel!
    var labelY: UILabel!
    
    var betterBuy: UILabel! 
    var betterBuyPrice: UILabel!
    var betterBuyBy: UILabel!
    
    var noBuy: UILabel!
    var noBuyPrice: UILabel!
    var noBuyBy: UILabel!

    override init(frame: CGRect) {
        super.init(frame: frame)
        
        
        
        self.backgroundColor = UIColor.white

        labelX = UILabel()
        labelY = UILabel()
        
        betterBuy = UILabel()
        betterBuyPrice = UILabel()
        betterBuyBy = UILabel()
        
        noBuy = UILabel()
        noBuyPrice = UILabel()
        noBuyBy = UILabel()
        
        
//        self.addSubview(labelX)
//        self.addSubview(labelY)
        self.addSubview(betterBuy)
        
    }

    func getSummaryOfItems() {
        summaryOfItems = compareItems(itemA: summaryItemA, itemB: summaryItemB)

    }
    
    
    /*
     
     This is what ItemSummary looks like
     
     ItemSummary(
     
        betterBuy:
            cents.ItemToCompare
            (price: 6.0, weight: 2999.99976, weightType: cents.WeightTypes.milligram),
        betterBuyPriceBy:
            0.00200000009,
     
        noBuy:
            cents.ItemToCompare
            (price: 3.0, weight: 4.0, weightType: cents.WeightTypes.milligram),
        noBuyPriceBy:
            0.75
     
     )
     
     */
    
    func createLabels() {
        summaryOfItems = compareItems(itemA: summaryItemA, itemB: summaryItemB)
        print(summaryOfItems.betterBuy.price)
        
        betterBuy.text = "Better Buy: $\(summaryOfItems.betterBuy.itemNumber)"
        betterBuy.font = UIFont(name: "Helvetica", size: 24)
        betterBuy.textColor = UIColor.black
        betterBuy.textAlignment = .center
        
        labelX.text = "\(x)"
        labelX.font = UIFont(name: "Helvetica", size: 80)!
        labelX.textColor = UIColor.red
        labelX.textAlignment = .center

        labelY.text = "\(y)"
        labelY.font = UIFont(name: "Helvetica", size: 80)!
        labelY.textColor = UIColor.green
        labelY.textAlignment = .center
        
    }
    
    func arrangeLabels(view: UIView) {
        
        betterBuy.size.width = 200
        betterBuy.size.height = 30
        betterBuy.pin.top().margin(80, 20, 10, 0)
        
//        labelX.size.width = 80
//        labelX.size.height = 80
//        labelX.pin.topCenter().margin(100)
//        
//        labelY.size.width = 80
//        labelY.size.height = 80
//        labelY.pin.below(of: labelX, aligned: .center).margin(20)
    }
    
    func arrangeSummaryView(view: UIView) {
        
        createLabels()
        
        arrangeLabels(view: view)

    }


    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
}

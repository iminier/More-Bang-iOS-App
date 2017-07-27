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
    
    let labelFont: UIFont = UIFont(name: "Helvetica", size: 24)!
    let labelTextColor: UIColor = UIColor.black
    let labelSize: CGSize = CGSize(width: 200, height: 30)
    
    var labelX: UILabel!
    var labelY: UILabel!
    
    var topFrame: UIImageView!
    var botFrame: UIImageView!
    
    var summaryItemA: ItemToCompare!
    var summaryItemB: ItemToCompare!
    
    var summaryOfItems: ItemSummary!
    
    var topPriceLabel: UILabel!
    var topWeightLabel: UILabel!
    var topPricePerLabel: UILabel!
    
    var botPriceLabel: UILabel!
    var botWeightLabel: UILabel!
    var botPricePerLabel: UILabel!

    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.backgroundColor = UIColor(red:0.65, green:0.89, blue:1.00, alpha:1)
        
        topFrame = UIImageView()
        topFrame.backgroundColor = UIColor.white
        topFrame.layer.borderWidth = 5
        topFrame.layer.shadowOpacity = 0.7
        
        botFrame = UIImageView()
        botFrame.backgroundColor = UIColor.white
        botFrame.layer.borderWidth = 5
        botFrame.layer.shadowOpacity = 0.7
        

        labelX = UILabel()
        labelY = UILabel()
        
        topPriceLabel = UILabel()
        topPriceLabel.font = labelFont
        topPriceLabel.textColor = labelTextColor
        
        topWeightLabel = UILabel()
        topWeightLabel.font = labelFont
        topWeightLabel.textColor = labelTextColor
        
        topPricePerLabel = UILabel()
        topPricePerLabel.font = labelFont
        topPricePerLabel.textColor = labelTextColor
        
        botPriceLabel = UILabel()
        botPriceLabel.font = labelFont
        botPriceLabel.textColor = labelTextColor
        
        botWeightLabel = UILabel()
        botWeightLabel.font = labelFont
        botWeightLabel.textColor = labelTextColor
        
        botPricePerLabel = UILabel()
        botPricePerLabel.font = labelFont
        botPricePerLabel.textColor = labelTextColor
        
        self.addSubview(topFrame)
        self.addSubview(botFrame)
        
        self.addSubview(topPriceLabel)
        self.addSubview(topWeightLabel)
        self.addSubview(topPricePerLabel)
        self.addSubview(botPriceLabel)
        self.addSubview(botWeightLabel)
        self.addSubview(botPricePerLabel)
        
//        self.addSubview(labelX)
//        self.addSubview(labelY)
        
    }

    func getSummaryOfItems() {
        summaryOfItems = compareItems(itemA: summaryItemA, itemB: summaryItemB)

    }
    
    func createFrames(view: UIView) {
        
        topFrame.size = CGSize(width: 280, height: 224)
        topFrame.pin.topCenter().margin(80, 0, 0, 0)

        botFrame.size = CGSize(width: 280, height: 224)
        botFrame.pin.below(of: topFrame, aligned: .center).margin(20, 0, 0, 0)
        
    }
    
    func setFrameBorderColor() {
        
        switch summaryOfItems.bbItemNum {
        case 1:
            
            botFrame.layer.borderColor = UIColor.red.cgColor
            topFrame.layer.borderColor = UIColor.green.cgColor
            
        default:
            
            topFrame.layer.borderColor = UIColor.red.cgColor
            botFrame.layer.borderColor = UIColor.green.cgColor
            
        }
        
    }

    func addTextToLabels() {
        
        switch summaryOfItems.bbItemNum {
        case 1:
            
            topPriceLabel.text = "$\(summaryOfItems.betterBuy.price)"
            topWeightLabel.text = "\(summaryOfItems.betterBuy.weight)"
            topPricePerLabel.text = "\(summaryOfItems.betterBuyPriceBy) per \(summaryOfItems.betterBuy.weightType)"
            
            botPriceLabel.text = "$\(summaryOfItems.noBuy.price)"
            botWeightLabel.text = "#: \(summaryOfItems.noBuy.weight)"
            botPricePerLabel.text = "*: \(summaryOfItems.noBuyPriceBy) per \(summaryOfItems.noBuy.weightType)"
            
        
        default:
            
            topPriceLabel.text = "$\(summaryOfItems.noBuy.price)"
            topWeightLabel.text = "#: \(summaryOfItems.noBuy.weight)"
            topPricePerLabel.text = "*: \(summaryOfItems.noBuyPriceBy) per \(summaryOfItems.noBuy.weightType)"
            
            botPriceLabel.text = "$\(summaryOfItems.betterBuy.price)"
            botWeightLabel.text = "\(summaryOfItems.betterBuy.weight)"
            botPricePerLabel.text = "\(summaryOfItems.betterBuyPriceBy) per \(summaryOfItems.betterBuy.weightType)"
            
        }

    }
    
    func createLabels() {
        summaryOfItems = compareItems(itemA: summaryItemA, itemB: summaryItemB)
        
        addTextToLabels()
        setFrameBorderColor()
        
        print(botWeightLabel)
        print(botPricePerLabel)
        
        topPriceLabel.size = labelSize
        topWeightLabel.size = labelSize
        topPricePerLabel.size = labelSize

        botPriceLabel.size = labelSize
        botWeightLabel.size = labelSize
        botPricePerLabel.size = labelSize
        
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
        createFrames(view: view)
        
        topPriceLabel.hCenter = topFrame.center.x - (topFrame.width / 2) + (topPriceLabel.width / 2) + 10
        topPriceLabel.vCenter = topFrame.center.y - (topFrame.height / 2) + 25
        topWeightLabel.pin.below(of: topPriceLabel, aligned: .left)
        topPricePerLabel.pin.below(of: topWeightLabel, aligned: .left)
        
        botPriceLabel.hCenter = botFrame.center.x - (botFrame.width / 2) + (botPriceLabel.width / 2) + 10
        botPriceLabel.vCenter = botFrame.center.y - (botFrame.height / 2) + 25
        botWeightLabel.pin.below(of: botPriceLabel, aligned: .left)
        botPricePerLabel.pin.below(of: botWeightLabel, aligned: .left)
        
        

        
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


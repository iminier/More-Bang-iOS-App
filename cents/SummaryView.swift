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
    let labelTextAlignment: NSTextAlignment = .center
    let frameBackgroundColor: UIColor = UIColor(red:0.95, green:0.95, blue:0.95, alpha:1.0)
    
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
        
        self.backgroundColor = UIColor(red:0.51, green:0.86, blue:0.90, alpha:1.0)
        
        topFrame = UIImageView()
        topFrame.backgroundColor = frameBackgroundColor
        topFrame.layer.shadowColor = UIColor.gray.cgColor
        topFrame.layer.shadowOpacity = 0.5
        
        botFrame = UIImageView()
        botFrame.backgroundColor = frameBackgroundColor
        botFrame.layer.shadowColor = UIColor.gray.cgColor
        botFrame.layer.shadowOpacity = 0.5

        labelX = UILabel()
        labelY = UILabel()
        
        topPriceLabel = UILabel()
        topPriceLabel.font = labelFont
        topPriceLabel.textColor = labelTextColor
        topPriceLabel.textAlignment = labelTextAlignment
        
        topWeightLabel = UILabel()
        topWeightLabel.font = labelFont
        topWeightLabel.textColor = labelTextColor
        topWeightLabel.textAlignment = labelTextAlignment
        
        topPricePerLabel = UILabel()
        topPricePerLabel.font = labelFont
        topPricePerLabel.textColor = labelTextColor
        topPricePerLabel.textAlignment = labelTextAlignment
        
        botPriceLabel = UILabel()
        botPriceLabel.font = labelFont
        botPriceLabel.textColor = labelTextColor
        botPriceLabel.textAlignment = labelTextAlignment
        
        botWeightLabel = UILabel()
        botWeightLabel.font = labelFont
        botWeightLabel.textColor = labelTextColor
        botWeightLabel.textAlignment = labelTextAlignment
        
        botPricePerLabel = UILabel()
        botPricePerLabel.font = labelFont
        botPricePerLabel.textColor = labelTextColor
        botPricePerLabel.textAlignment = labelTextAlignment
        
        self.addSubview(topFrame)
        self.addSubview(botFrame)
        self.addSubview(topPriceLabel)
        self.addSubview(topWeightLabel)
        self.addSubview(topPricePerLabel)
        self.addSubview(botPriceLabel)
        self.addSubview(botWeightLabel)
        self.addSubview(botPricePerLabel)
        self.addSubview(labelX)
        self.addSubview(labelY)
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
    
    func setFrameImages() {
        switch summaryOfItems.bbItemNum {
        case 1:
            labelX.hCenter = botFrame.center.x + ((botFrame.width / 2) - 40)
            labelX.vCenter = botFrame.center.y - ((botFrame.height / 2) - 40)
            labelY.hCenter = topFrame.center.x + ((topFrame.width / 2) - 40)
            labelY.vCenter = topFrame.center.y - ((topFrame.height / 2) - 40)
        default:
            labelX.hCenter = topFrame.center.x + ((topFrame.width / 2) - 40)
            labelX.vCenter = topFrame.center.y - ((topFrame.height / 2) - 40)
            labelY.hCenter = botFrame.center.x + ((botFrame.width / 2) - 40)
            labelY.vCenter = botFrame.center.y - ((botFrame.height / 2) - 40)
        }
    }

    func addTextToLabels() {
        switch summaryOfItems.bbItemNum {
        case 1:
            topPriceLabel.text = "$\(summaryOfItems.betterBuy.price)"
            topWeightLabel.text = "\(summaryOfItems.betterBuy.weight) \(summaryOfItems.betterBuy.weightType)(s)"
            let topPricePerLabelString = String(format: "%.03f", summaryOfItems.betterBuyPriceBy)
            topPricePerLabel.text = "\(topPricePerLabelString) per \(summaryOfItems.betterBuy.weightType)"
            botPriceLabel.text = "$\(summaryOfItems.noBuy.price)"
            botWeightLabel.text = "\(summaryOfItems.noBuy.weight) \(summaryOfItems.noBuy.weightType)(s)"
            let botPricePerLabelString = String(format: "%.03f", summaryOfItems.noBuyPriceBy)
            botPricePerLabel.text = "\(botPricePerLabelString) per \(summaryOfItems.noBuy.weightType)"
        default:
            topPriceLabel.text = "$\(summaryOfItems.noBuy.price)"
            topWeightLabel.text = "\(summaryOfItems.noBuy.weight) \(summaryOfItems.noBuy.weightType)(s)"
            let topPricePerLabelString = String(format: "%.03f", summaryOfItems.noBuyPriceBy)
            topPricePerLabel.text = "\(topPricePerLabelString) per \(summaryOfItems.noBuy.weightType)"
            botPriceLabel.text = "$\(summaryOfItems.betterBuy.price)"
            botWeightLabel.text = "\(summaryOfItems.betterBuy.weight) \(summaryOfItems.betterBuy.weightType)(s)"
            let botPricePerLabelString = String(format: "%.03f", summaryOfItems.betterBuyPriceBy)
            botPricePerLabel.text = "\(botPricePerLabelString) per \(summaryOfItems.betterBuy.weightType)"
        }

    }
    
    func createLabels() {
        summaryOfItems = compareItems(itemA: summaryItemA, itemB: summaryItemB)
        
        addTextToLabels()
        
        topPriceLabel.size = labelSize
        topWeightLabel.size = labelSize
        topPricePerLabel.size = labelSize
        botPriceLabel.size = labelSize
        botWeightLabel.size = labelSize
        botPricePerLabel.size = labelSize
        
        labelX.text = "\(x)"
        labelX.font = UIFont(name: "Helvetica", size: 40)!
        labelX.textColor = UIColor.red
        labelX.textAlignment = .center

        labelY.text = "\(y)"
        labelY.font = UIFont(name: "Helvetica", size: 40)!
        labelY.textColor = UIColor.green
        labelY.textAlignment = .center
        
    }
    
    func arrangeLabels(view: UIView) {
        createFrames(view: view)
        
        topWeightLabel.pin.center(to: topFrame.anchor.center)
        topPriceLabel.pin.above(of: topWeightLabel, aligned: .center).marginBottom(10)
        topPricePerLabel.pin.below(of: topWeightLabel, aligned: .center).marginTop(10)
        botWeightLabel.pin.center(to: botFrame.anchor.center)
        botPriceLabel.pin.above(of: botWeightLabel, aligned: .center).marginBottom(10)
        botPricePerLabel.pin.below(of: botWeightLabel, aligned: .center).marginTop(10)
        
        labelX.size.width = 40
        labelX.size.height = 40
        labelY.size.width = 40
        labelY.size.height = 40
    }
    
    func arrangeSummaryView(view: UIView) {
        createLabels()
        arrangeLabels(view: view)
        setFrameImages()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

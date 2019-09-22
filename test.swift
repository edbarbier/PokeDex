//
//  PurchaseConfiguration.swift
//  KQPurchases
//
//  Created by Kevin Quisquater on 28/07/2019.
//  Copyright © 2019 Kevin Quisquater. All rights reserved.
//

import UIKit

struct ProductIdConfiguration {
    
    static let sharedSecret = "1acb4e43c4834500ae96cad022e1445a"
    
    // If all products ids that starts with certain prefixes give lifetime access,
    // add these prefixes to this array
    static let lifetimeAccessProductIdsPrefixes: [String] = [
        // example Memy:
        // "com.kevinquisquater.Memy.PremiumLifetimeTier"
    ]
    
    // Add product ids that give lifetime access to this array
    static let lifetimeAccessProductIds: [String] = [
        
        // Example Memy
        // case premiumMonthlyNoTrial = "com.kevinquisquater.Memy.MonthlyNoTrial"
        // case premiumYearlyNoTrial = "com.kevinquisquater.Memy.YearlyNoTrial"
        // case premiumMonthlyWithTrialArchive = "com.kevinquisquater.Memy.Monthly"
        
        "com.edouardbarbier.RecipeIdeas.LifetimeTier20",
        "com.edouardbarbier.RecipeIdeas.Lifetime30"
    ]
    
    // ex: com.kevinquisquater.Memy.New.MonthlyNoTrial
    static let validSubscriptionsPrefixes: [String] = []
    
    // In case you have valid subscriptions that do not use the prefix
    static let validSubscriptionsProductIds: [String] = [
        // case premiumMonthlyTier4NoTrial = "com.kevinquisquater.Habits.Monthly4NoTrial"
        // case premiumYearlyTier20NoTrial = "com.kevinquisquater.Habits.Yearly20NoTrial"
        "com.edouardbarbier.RecipeIdeas.Monthly4NoTrial",
        "com.edouardbarbier.RecipeIdeas.Yearly20NoTrial",
        "com.edouardbarbier.RecipeIdeas.Monthly3NoTrial",
        "com.edouardbarbier.RecipeIdeas.Yearly12NoTrial"
    ]
    
    static let idsProductsToPreload: [String] = [
        // If using RemoteConfig, get its the default product IDs
        RemoteConfigManager.shared.defaultLifetimeProductId,
        RemoteConfigManager.shared.defaultMonthlyProductId,
        RemoteConfigManager.shared.defaultYearlyProductId
    ]
}

extension KQPurchaseVCConfig {
    static var appConfig: KQPurchaseVCConfig {
        return KQPurchaseVCConfig(
            appTitle: "Super Habit",
            premiumTitle: "PREMIUM",
            explanationText: "The free version of the app is sufficient for most users, but you can go Premium to get even more.\n\nI work full-time on my apps, so your support is what allows me to improve your app for years to come 🙂",
            featuresArguments: featuresArguments,
            
            // Color
            lightGrayColor: UIColor(hex: "939393"),
            dominantColor: UIColor(hex: "438BE1"),
            textColor: .black,
            premiumBadgeTextColor: .white,
            purchaseButtonTextColor: .white,
            
            option1LifetimeButtonColor: UIColor(hex: "004680"),
            option2YearlyButtonColor: UIColor(hex: "0068B8"),
            option3MonthlyButtonColor: UIColor(hex: "2196F3"),
            
            // Almost never change
            restoreButtonTitle: "Restore",
            skipButtonTitle: "Skip"
        )
    }
    
    private static var featuresArguments = [
        FeatureArgument(title: "✓  Unlock all recipes 🍕",
                        description: "More recipes, more yum!"),
        FeatureArgument(title: "✓  Adaptative recipes 🎉",
                        description: "More guests? No problem 👨‍👩‍👧‍👦"),
        FeatureArgument(title: "✓  No more ads 🙌",
                        description: "Enjoy the app 100% ad-free."),
        FeatureArgument(title: "✓  Support our journey 👫",
                        description: "Help us spice up your kitchen."),
        FeatureArgument(title: "✓  Cancel anytime 🙈",
                        description: "From your phone's settings.")
    ]
}

//
//  SectionType.swift
//  ExpandableTableView
//
//  Created by Thang Truong on 7/10/17.
//  Copyright © 2017 Thang Truong. All rights reserved.
//

import UIKit
struct ContentType {
    var image: UIImage?
    var title: String = ""
    var isExpanded: Bool = true
    init(_ image: UIImage, _ title: String) {
        self.image = image
        self.title = title
    }
    mutating func toogle() {
        isExpanded = !isExpanded
    }
}

enum SectionEnum : Int {
    case home
    case utilities
    case autoAndTransport
    case kids
    case clothing
    case giftAndDonations
    case healthAndFitness
    case entertainment
    case foodAndDining
    case personal
    case all
    
    var contents: ContentType {
        switch self {
        case .foodAndDining:
            return ContentType(#imageLiteral(resourceName: "Food and Dining"), "Food and Dining")
        case .utilities:
            return ContentType(#imageLiteral(resourceName: "Utilities"), "Utilities")
        case .autoAndTransport:
            return ContentType(#imageLiteral(resourceName: "Auto & Transport"), "Auto & Transport")
        case .kids:
            return ContentType(#imageLiteral(resourceName: "Kids"), "Kids")
        case .clothing:
            return ContentType(#imageLiteral(resourceName: "Clothing"), "Clothing")
        case .giftAndDonations:
            return ContentType(#imageLiteral(resourceName: "Gifts & Donations"), "Gitfs & Donations")
        case .healthAndFitness:
            return ContentType(#imageLiteral(resourceName: "Health & Fitness"), "Health & Fitness")
        case .home:
            return ContentType(#imageLiteral(resourceName: "Home"), "Home")
        case .entertainment:
            return ContentType(#imageLiteral(resourceName: "Entertainment"), "Entertainment")
        case .personal:
            return ContentType(#imageLiteral(resourceName: "Personal"), "Personal")
        case .all:
            return ContentType(UIImage(), "")
        }
    }
    
   
    var cellContents: [ContentType] {
        switch self {
        case .foodAndDining:
            return [ExpenseCategory.groceries.content,
            ExpenseCategory.restaurant.content,
            ExpenseCategory.barAndCoffee.content]
        case .utilities:
            return [ExpenseCategory.electricity.content,
            ExpenseCategory.water.content,
            ExpenseCategory.internet.content,
            ExpenseCategory.gas.content,
            ExpenseCategory.cable.content,
            ExpenseCategory.mobile.content,
            ExpenseCategory.homePhone.content,
            ExpenseCategory.hiringMaids.content]
        case .autoAndTransport:
            return [ExpenseCategory.fuel.content,
            ExpenseCategory.serviceParts.content,
            ExpenseCategory.repairVehicles.content,
            ExpenseCategory.parking.content,
            ExpenseCategory.carWash.content,
            ExpenseCategory.taxi.content]
        case .kids:
            return [ ExpenseCategory.tuition.content,
            ExpenseCategory.books.content,
            ExpenseCategory.babySupplies.content,
            ExpenseCategory.toys.content,
            ExpenseCategory.allowance.content]
        case .clothing:
            return [ExpenseCategory.clothes.content,
            ExpenseCategory.shoes.content,
            ExpenseCategory.accessories.content]
        case .giftAndDonations:
            return [ExpenseCategory.marriages.content,
            ExpenseCategory.funerals.content,
            ExpenseCategory.charity.content,
            ExpenseCategory.gifts.content]
        case .healthAndFitness:
            return [ExpenseCategory.doctor.content,
            ExpenseCategory.pharmacy.content,
            ExpenseCategory.sports.content]
        case .home:
            return [ExpenseCategory.furnishing.content,
            ExpenseCategory.repairOfBuilding.content,
            ExpenseCategory.homeServices.content]
        case .entertainment:
            return [ExpenseCategory.music.content,
            ExpenseCategory.travel.content,
            ExpenseCategory.makeUp.content,
            ExpenseCategory.movies.content,
            ExpenseCategory.cosmetic.content]
        case .personal:
            return [ExpenseCategory.education.content,
            ExpenseCategory.hobbies.content]
        case .all:
            return []
        }
    }
}

enum ExpenseCategory : Int {
    case groceries
    case restaurant
    case barAndCoffee
    case electricity
    case water
    case internet
    case gas
    case cable
    case mobile
    case homePhone
    case hiringMaids
    case fuel
    case serviceParts
    case repairVehicles
    case parking
    case carWash
    case taxi
    case tuition
    case books
    case babySupplies
    case toys
    case allowance
    case clothes
    case shoes
    case accessories
    case marriages
    case funerals
    case charity
    case gifts
    case doctor
    case pharmacy
    case sports
    case furnishing
    case repairOfBuilding
    case homeServices
    case music
    case travel
    case makeUp
    case movies
    case cosmetic
    case education
    case hobbies
    case all
    
    var content: ContentType {
        switch self {
        case .groceries:
            return ContentType(#imageLiteral(resourceName: "Groceries"), "groceries")
        case .restaurant:
            return ContentType(#imageLiteral(resourceName: "Restaurant"), "restaurant")
        case .barAndCoffee:
            return ContentType(#imageLiteral(resourceName: "Bar & Coffee"), "barAndCoffee")
        case .electricity:
            return ContentType(#imageLiteral(resourceName: "Electricity"), "electricity")
        case .water:
            return ContentType(#imageLiteral(resourceName: "Water"), "water")
        case .internet:
            return ContentType(#imageLiteral(resourceName: "Internet"), "internet")
        case .gas:
            return ContentType(#imageLiteral(resourceName: "Gas"), "gas")
        case .cable:
            return ContentType(#imageLiteral(resourceName: "Cable TV"), "cable")
        case .mobile:
            return ContentType(#imageLiteral(resourceName: "MobilePhone"), "mobile")
        case .homePhone:
            return ContentType(#imageLiteral(resourceName: "HomePhone"), "homePhone")
        case .hiringMaids:
            return ContentType(#imageLiteral(resourceName: "HomePhone"), "hiringMaids")
        case .fuel:
            return ContentType(#imageLiteral(resourceName: "Fuel"), "fuel")
        case .serviceParts:
            return ContentType(#imageLiteral(resourceName: "Service & Parts"), "serviceParts")
        case .repairVehicles:
            return ContentType(#imageLiteral(resourceName: "Repair vehicles"), "repairVehicles")
        case .parking:
            return ContentType(#imageLiteral(resourceName: "Parking"), "parking")
        case .carWash:
            return ContentType(#imageLiteral(resourceName: "Car wash"), "carWash")
        case .taxi:
            return ContentType(#imageLiteral(resourceName: "Taxi"), "taxi")
        case .tuition:
            return ContentType(#imageLiteral(resourceName: "Tuition"), "tuition")
        case .books:
            return ContentType(#imageLiteral(resourceName: "Books"), "books")
        case .babySupplies:
            return ContentType(#imageLiteral(resourceName: "Baby Supplies"), "babySupplies")
        case .toys:
            return ContentType(#imageLiteral(resourceName: "Toys"), "toys")
        case .allowance:
            return ContentType(#imageLiteral(resourceName: "Allowance"), "allowance")
        case .clothes:
            return ContentType(#imageLiteral(resourceName: "Clothes"), "clothes")
        case .shoes:
            return ContentType(#imageLiteral(resourceName: "Shoes"), "shoes")
        case .accessories:
            return ContentType(#imageLiteral(resourceName: "Accessories"), "accessories")
        case .marriages:
            return ContentType(#imageLiteral(resourceName: "Marriages"), "marriages")
        case .funerals:
            return ContentType(#imageLiteral(resourceName: "Funerals"), "funerals")
        case .charity:
            return ContentType(#imageLiteral(resourceName: "Charity"), "charity")
        case .gifts:
            return ContentType(#imageLiteral(resourceName: "Gifts"), "gifts")
        case .doctor:
            return ContentType(#imageLiteral(resourceName: "Doctor"), "doctor")
        case .pharmacy:
            return ContentType(#imageLiteral(resourceName: "Pharmacy"), "pharmacy")
        case .sports:
            return ContentType(#imageLiteral(resourceName: "Sports"), "sports")
        case .furnishing:
            return ContentType(#imageLiteral(resourceName: "Furnishing"), "furnishing")
        case .repairOfBuilding:
            return ContentType(#imageLiteral(resourceName: "Repair of building"), "repairOfBuilding")
        case .homeServices:
            return ContentType(#imageLiteral(resourceName: "Home services"), "homeServices")
        case .music:
            return ContentType(#imageLiteral(resourceName: "Music"), "music")
        case .travel:
            return ContentType(#imageLiteral(resourceName: "Travel"), "travel")
        case .makeUp:
            return ContentType(#imageLiteral(resourceName: "Make up"), "makeUp")
        case .movies:
            return ContentType(#imageLiteral(resourceName: "Movies & DVDs"), "movies")
        case .cosmetic:
            return ContentType(#imageLiteral(resourceName: "Cosmetic"), "cosmetic")
        case .education:
            return ContentType(#imageLiteral(resourceName: "Education"), "education")
        case .hobbies:
            return ContentType(#imageLiteral(resourceName: "Hobbies"), "hobbies")
        case .all:
            return ContentType(UIImage(), "")
        }
    }
    
}

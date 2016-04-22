//
//  Icon.swift
//  Steadingomatic
//
//  Created by Keith Avery on 2/23/16.
//  Copyright © 2016 Keith Avery. All rights reserved.
//

import Foundation
import UIKit

enum IconSize: String {
    case Small = ""
    case Large = "lg-"

}

enum Icon: String {
    case Acorn = "acorn"
    case AntelopePassant = "antelope-passant"
    case AntelopeRampantDemonic = "antelope-rampant-demonic"
    case AntelopeStatant = "antelope-statant"
    case Ape = "ape"
    case ApeCollaredAndChained = "ape-collared-and-chained"
    case ArmEmbowedInArmor = "arm-embowed-in-armor"
    case ArmHabitedAndCoupedAtTheElbow = "arm-habited-and-couped-at-the-elbow"
    case Bat = "bat"
    case BearPassant = "bear-passant"
    case BearRampant = "bear-rampant"
    case BearSejeantErect = "bear-sejeant-erect"
    case BearStatnt = "bear-statnt"
    case BearsHeadCouped = "bears-head-couped"
    case BearsHeadCoupedEnglish = "bears-head-couped-english"
    case BearsHeadErasedAndMuzzled = "bears-head-erased-and-muzzled"
    case BeeVolant = "bee-volant"
    case BoarPassant = "boar-passant"
    case BoarRampant = "boar-rampant"
    case BoarStatant = "boar-statant"
    case BoarsHeadCouped = "boars-head-couped"
    case BoarsHeadErased = "boars-head-erased"
    case BordureInvected = "bordure-invected"
    case BordureNebuly = "bordure-nebuly"
    case BordurePotenty = "bordure-potenty"
    case BordureWavy = "bordure-wavy"
    case BucksHeadCouped = "bucks-head-couped"
    case BullPassant = "bull-passant"
    case BullRampant = "bull-rampant"
    case BullsHeadCaboshed = "bulls-head-caboshed"
    case CatherineWheel = "catherine-wheel"
    case Censer = "censer"
    case Centaur = "centaur"
    case Chapeau = "chapeau"
    case ChevalierOnHorseback = "chevalier-on-horseback"
    case Cock = "cock"
    case ConeyPassant = "coney-passant"
    case Conquefoil = "conquefoil"
    case Coronet = "coronet"
    case DogHead = "dog-head"
    case DolphinHauriant = "dolphin-hauriant"
    case DolphinNaiant = "dolphin-naiant"
    case DucalCoronet = "ducal-coronet"
    case EagleClose = "eagle-close"
    case EagleDisplayed = "eagle-displayed"
    case EagleDisplayedWingsInverted = "eagle-displayed-wings-inverted"
    case EagleDoubleHeaded = "eagle-double-headed"
    case EagleRising = "eagle-rising"
    case EagleRisingWingsAddorsed = "eagle-rising-wings-addorsed"
    case EagleRisingWingsElevatedAddorsed = "eagle-rising-wings-elevated-addorsed"
    case EagleRisingWingsInverted = "eagle-rising-wings-inverted"
    case EaglesHeadCouped = "eagles-head-couped"
    case EaglesHeadErased = "eagles-head-erased"
    case ElephantAndCastle = "elephant-and-castle"
    case Enfield = "enfield"
    case Escallop = "escallop"
    case Estoile = "estoile"
    case Falcon = "falcon"
    case Fleece = "fleece"
    case FleurDeLis = "fleur-de-Lis"
    case FoxPassant = "fox-passant"
    case FoxSejeant = "fox-sejeant"
    case Garb = "garb"
    case GoatSalient = "goat-salient"
    case Goutte = "goutte"
    case HandDexter = "hand-dexter"
    case HandSinister = "hand-sinister"
    case HareSalient = "hare-salient"
    case HeraldicAntelopePassant = "heraldic-antelope-passant"
    case HeraldicAntelopeRampant = "heraldic-antelope-rampant"
    case HeraldicTigerPassant = "heraldic-tiger-passant"
    case HeraldicTigerRampant = "heraldic-tiger-rampant"
    case Heron = "heron"
    case Hind = "hind"
    case HorsePassant = "horse-passant"
    case HorseRampant = "horse-rampant"
    case Keys = "keys"
    case LeopardHeadErased = "leopard-head-erased"
    case LeopardPassant = "leopard-passant"
    case LeopardRampant = "leopard-rampant"
    case LeopardsFace = "leopards-face"
    case LionRampantRegardant = "lion-rampant-regardant"
    case LionSalient = "lion-salient"
    case LionSejant = "lion-sejant"
    case LionSejantRegardantErect = "lion-sejant-regardant-erect"
    case LionSejantRegardant = "lion-sejant-regardant"
    case LionStatant = "lion-statant"
    case Looped = "looped"
    case LynxCoward = "lynx-coward"
    case Martlet = "martlet"
    case MartletVolant = "martlet-volant"
    case Mermaid = "mermaid"
    case Merman = "merman"
    case Mullet = "mullet"
    case Mullet1 = "mullet1"
    case MulletOf6Points = "mullet-of6-points"
    case MulletOfPoints = "mullet-of-points"
    case OakTree = "oak-tree"
    case Ostrich = "ostrich"
    case Otter = "otter"
    case Owl = "owl"
    case Pegasus = "pegasus"
    case PegasusPassant = "pegasus-passant"
    case PegasusRampant = "pegasus-rampant"
    case Popinjay = "popinjay"
    case Quatrefoil = "quatrefoil"
    case RamRampant = "ram-rampant"
    case RamSkull = "ram-skull"
    case RamStatant = "ram-statant"
    case RamsHeadCaboshed = "rams-head-caboshed"
    case Raven = "raven"
    case Reindeer = "reindeer"
    case Rose = "rose"
    case RoseSlippedAndLeaved = "rose-slipped-and-leaved"
    case SalmonHauriant = "salmon-hauriant"
    case SalmonNaiant = "salmon-naiant"
    case SeaHorse = "sea-horse"
    case SeadogRampant = "seadog-rampant"
    case Seahog = "seahog"
    case SerpentNowed = "serpent-nowed"
    case SheepPassant = "sheep-passant"
    case ShipUnderSail = "ship-under-sail"
    case Sphinx = "sphinx"
    case Squirrel = "squirrel"
    case StagAtGaze = "stag-at-gaze"
    case StagLodged = "stag-lodged"
    case StagSpringing = "stag-springing"
    case StagStatant = "stag-statant"
    case StagTrippant = "stag-trippant"
    case SunInSplendor = "sun-in-splendor"
    case Swan = "swan"
    case SwordScimitar = "sword-scimitar"
    case TalbotPassant = "talbot-passant"
    case TalbotRampant = "talbot-rampant"
    case TalbotSejeant = "talbot-sejeant"
    case Thistle = "thistle"
    case Tower = "tower"
    case TowerTriple = "tower-triple"
    case Trefoil = "trefoil"
    case WolfCourant = "wolf-courant"
    case WolfPassant = "wolf-passant"
    case WolfRampant = "wolf-rampant"
    case WolfSalient = "wolf-salient"
    case WolfStatant = "wolf-statant"
    case Yale = "yale"
    case YaleSejantErect = "yale-sejant-erect"
    case Ypotryll = "ypotryll"


    static func allValues() -> [String] {
        return ["acorn",
        "antelope-passant",
        "antelope-rampant-demonic",
        "antelope-statant",
        "ape",
        "ape-collared-and-chained",
        "arm-embowed-in-armor",
        "arm-habited-and-couped-at-the-Elbow",
        "bat",
        "bear-passant",
        "bear-rampant",
        "bear-sejeant-erect",
        "bear-statnt",
        "bears-head-couped",
        "bears-head-couped-english",
        "bears-head-erased-and-muzzled",
        "bee-volant",
        "boar-passant",
        "boar-rampant",
        "boar-statant",
        "boars-head-couped",
        "boars-head-erased",
        "bordure-invected",
        "bordure-nebuly",
        "bordure-potenty",
        "bordure-wavy",
        "bucks-head-couped",
        "bull-passant",
        "bull-rampant",
        "bulls-head-caboshed",
        "catherine-wheel",
        "censer",
        "centaur",
        "chapeau",
        "chevalier-on-horseback",
        "cock",
        "coney-passant",
        "conquefoil",
        "coronet",
        "dog-head",
        "dolphin-hauriant",
        "dolphin-naiant",
        "ducal-coronet",
        "eagle-close",
        "eagle-displayed",
        "eagle-displayed-wings-inverted",
        "eagle-double-headed",
        "eagle-rising",
        "eagle-rising-wings-addorsed",
        "eagle-rising-wings-elevated-addorsed",
        "eagle-rising-wings-inverted",
        "eagles-head-couped",
        "eagles-head-erased",
        "elephant-and-castle",
        "enfield",
        "escallop",
        "estoile",
        "falcon",
        "fleece",
        "fleur-de-Lis",
        "fox-passant",
        "fox-sejeant",
        "garb",
        "goat-salient",
        "goutte",
        "hand-dexter",
        "hand-sinister",
        "hare-salient",
        "heraldic-antelope-passant",
        "heraldic-antelope-rampant",
        "heraldic-tiger-passant",
        "heraldic-tiger-rampant",
        "heron",
        "hind",
        "horse-passant",
        "horse-rampant",
        "keys",
        "leopard-head-erased",
        "leopard-passant",
        "leopard-rampant",
        "leopards-face",
        "lion-rampant-regardant",
        "lion-salient",
        "lion-sejant",
        "lion-sejant-regardant-erect",
        "lion-sejant-regardant",
        "lion-statant",
        "looped",
        "lynx-coward",
        "martlet",
        "martlet-volant",
        "mermaid",
        "merman",
        "mullet",
        "mullet1",
        "mullet-of6-points",
        "mullet-of-points",
        "oak-tree",
        "ostrich",
        "otter",
        "owl",
        "pegasus",
        "pegasus-passant",
        "pegasus-rampant",
        "popinjay",
        "quatrefoil",
        "ram-rampant",
        "ram-skull",
        "ram-statant",
        "rams-head-caboshed",
        "raven",
        "reindeer",
        "rose",
        "rose-slipped-and-leaved",
        "salmon-hauriant",
        "salmon-naiant",
        "sea-horse",
        "seadog-rampant",
        "seahog",
        "serpent-nowed",
        "sheep-passant",
        "ship-under-sail",
        "sphinx",
        "squirrel",
        "stag-at-gaze",
        "stag-lodged",
        "stag-springing",
        "stag-statant",
        "stag-trippant",
        "sun-in-splendor",
        "swan",
        "sword-scimitar",
        "talbot-passant",
        "talbot-rampant",
        "talbot-sejeant",
        "thistle",
        "tower",
        "tower-triple",
        "trefoil",
        "wolf-courant",
        "wolf-passant",
        "wolf-rampant",
        "wolf-salient",
        "wolf-statant",
        "yale",
        "yale-sejant-erect",
        "ypotryll"]

    }

    static func pick() -> Icon {
        // pick and return a new value
        let rand = arc4random_uniform(UInt32(Icon.allValues().count))
        return Icon(rawValue: Icon.allValues()[Int(rand)])!
    }

    func toImage(size:IconSize = .Small) -> UIImage? {
        var prefix: String
        switch size {
        case .Small: prefix = ""
        case .Large: prefix = "lg-"
        }
        return  UIImage(named: "\(prefix)\(self.rawValue)")?.imageWithRenderingMode(.AlwaysTemplate)
    }
    
}
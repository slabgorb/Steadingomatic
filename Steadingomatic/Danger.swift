//
//  Danger.swift
//  Steadingomatic
//
//  Created by Keith Avery on 2/22/16.
//  Copyright © 2016 Keith Avery. All rights reserved.
//

import Foundation

class Danger {
    enum DangerType: UInt32, CustomStringConvertible {
        case AmbitiousOrganizations
        case PlanarForces
        case ArcaneEnemies
        case Hordes
        case CursedPlaces
    
        var description: String {
            switch self {
            case .AmbitiousOrganizations: return "Ambitious Organizations"
            case .PlanarForces: return "Planar Forces"
            case .ArcaneEnemies: return "Arcane Enemies"
            case .Hordes: return "Hordes"
            case .CursedPlaces: return "Cursed Places"
            }
        }
        private static let _count: DangerType.RawValue = {
            // find the maximum enum value
            var maxValue: UInt32 = 0
            while let _ = DangerType(rawValue: maxValue + 1 ) { maxValue += 1 }
            return maxValue
        }()
        static func random() -> DangerType {
            // pick and return a new value
            let rand = arc4random_uniform(_count)
            return DangerType(rawValue: rand)!
        }
        
        func randomSubType() -> DangerSubType {
            let subTypeList = self.subtypes()
            let randomIndex = Int(arc4random_uniform(UInt32(subTypeList.count)))
            return subTypeList[randomIndex]
        }
        
        func subtypes() -> [DangerSubType] {
            switch self {
            case .AmbitiousOrganizations: return [.MisguidedGood,
                .ThievesGuild,
                .Cult,
                .ReligiousOrganization,
                .CorruptGovernment,
                .Cabal]
            case .PlanarForces: return [.God,
                .DemonPrince,
                .ElementalLord,
                .ForceOfChaos,
                .ChoirOfAngels,
                .ConstructOfLaw]
            case .ArcaneEnemies: return [.LordOfTheUndead,
                .PowerMadWizard,
                .SentientArtifact,
                .AncientCurse,
                .ChosenOne,
                .Dragon]
            case .Hordes: return [.WanderingBarbarians,
                .HumanoidVermin,
                .UndergroundDwellers,
                .PlagueOfTheUndead]
            case .CursedPlaces: return [.AbandonedTower,
                .UnholyGround,
                .ElementalVortex,
                .DarkPortal,
                .Shadowland,
                .PlaceOfPower]
            }
        }
        
        func moves() -> [String] {
            switch self {
            case .AmbitiousOrganizations:
                return [
                    "Attack someone by stealthy means (kidnapping, etc.)",
                    "Attack someone directly (with a gang or single assailant)",
                    "Absorb or buy out someone important (an ally, perhaps)",
                    "Influence a powerful institution (change a law, manipulate doctrine)",
                    "Establish a new rule (within the organization)",
                    "Claim territory or resources",
                    "Negotiate a deal",
                    "Observe a potential foe in great detail"
                ]
            case .PlanarForces:
                return [
                    "Turn an organization (corrupt or infiltrate with influence)",
                    "Give dreams of prophecy",
                    "Lay a Curse on a foe",
                    "Extract a promise in exchange for a boon",
                    "Attack indirectly, through intermediaries",
                    "Rarely, when the stars are right, attack directly",
                    "Foster rivalries with other, similar powers",
                    "Expose someone to a Truth, wanted or otherwise",
                ]
            case .ArcaneEnemies:
                return [
                    "Learn forbidden knowledge",
                    "Cast a spell over time and space",
                    "Attack a foe with magic, directly or otherwise",
                    "Spy on someone with a scrying spell",
                    "Recruit a follower or toady",
                    "Tempt someone with promises",
                    "Demand a sacrifice"
                ]
            case .Hordes:
                return [
                    "Assault a bastion of civilization",
                    "Embrace internal chaos",
                    "Change direction suddenly",
                    "Overwhelm a weaker force",
                    "Perform a show of dominance",
                    "Abandon an old home, find a new one",
                    "Grow in size by breeding or conquest",
                    "Appoint a champion",
                    "Declare war and act upon that declaration without hesitation or deliberation"
                ]
            case .CursedPlaces:
                return [
                    "Vomit forth a lesser monster",
                    "Spread to an adjacent place",
                    "Lure someone in",
                    "Grow in intensity or depth",
                    "Leave a lingering effect on an inhabitant or visitor",
                    "Hide something from sight",
                    "Offer power",
                    "Dampen magic or increase its effects",
                    "Confuse or obfuscate truth or direction",
                    "Corrupt a natural law"
                ]
            }
        }
        
    }
    
    enum DangerSubType: UInt32, CustomStringConvertible {
        case MisguidedGood
        case ThievesGuild
        case Cult
        case ReligiousOrganization
        case CorruptGovernment
        case Cabal
        case God
        case DemonPrince
        case ElementalLord
        case ForceOfChaos
        case ChoirOfAngels
        case ConstructOfLaw
        case LordOfTheUndead
        case PowerMadWizard
        case SentientArtifact
        case AncientCurse
        case ChosenOne
        case Dragon
        case AbandonedTower
        case UnholyGround
        case ElementalVortex
        case DarkPortal
        case Shadowland
        case PlaceOfPower
        case WanderingBarbarians
        case HumanoidVermin
        case UndergroundDwellers
        case PlagueOfTheUndead
        
        func wordFile() -> String {
            switch self {
            case .MisguidedGood: return "MisguidedGoodWords"
            case .ThievesGuild: return "ThievesGuildWords"
            case .Cult: return "CultWords"
            case .ReligiousOrganization: return "ReligiousOrganizationWords"
            case .CorruptGovernment: return "CorruptGovernmentWords"
            case .Cabal: return "CabalWords"
            case .God: return "GodWords"
            case .DemonPrince: return "DemonPrinceWords"
            case .ElementalLord: return "ElementalLordWords"
            case .ForceOfChaos: return "ForceOfChaosWords"
            case .ChoirOfAngels: return "ChoirOfAngelsWords"
            case .ConstructOfLaw: return "ConstructOfLawWords"
            case .LordOfTheUndead: return "LordOfTheUndeadWords"
            case .PowerMadWizard: return "PowerMadWizardWords"
            case .SentientArtifact: return "SentientArtifactWords"
            case .AncientCurse: return "AncientCurseWords"
            case .ChosenOne: return "ChosenOneWords"
            case .Dragon: return "DragonWords"
            case .AbandonedTower: return "AbandonedTowerWords"
            case .UnholyGround: return "UnholyGroundWords"
            case .ElementalVortex: return "ElementalVortexWords"
            case .DarkPortal: return "DarkPortalWords"
            case .Shadowland: return "ShadowlandWords"
            case .PlaceOfPower: return "PlaceOfPowerWords"
            case .WanderingBarbarians: return "WanderingBarbariansWords"
            case .HumanoidVermin: return "HumanoidVerminWords"
            case .UndergroundDwellers: return "UndergroundDwellersWords"
            case . PlagueOfTheUndead: return "PlagueOfTheUndeadWords"
            }
        }
        
        var description: String {
            switch self {
            case .MisguidedGood: return "Misguided Good"
            case .ThievesGuild: return "Thieves Guild"
            case .Cult: return "Cult"
            case .ReligiousOrganization: return "Religious Organization"
            case .CorruptGovernment: return "Corrupt Government"
            case .Cabal: return "Cabal"
            case .God: return "God"
            case .DemonPrince: return "Demon Prince"
            case .ElementalLord: return "Elemental Lord"
            case .ForceOfChaos: return "Force Of Chaos"
            case .ChoirOfAngels: return "Choir Of Angels"
            case .ConstructOfLaw: return "Construct Of Law"
            case .LordOfTheUndead: return "Lord Of The Undead"
            case .PowerMadWizard: return "Power-Mad Wizard"
            case .SentientArtifact: return "Sentient Artifact"
            case .AncientCurse: return "Ancient Curse"
            case .ChosenOne: return "Chosen One"
            case .Dragon: return "Dragon"
            case .AbandonedTower: return "Abandoned Tower"
            case .UnholyGround: return "Unholy Ground"
            case .ElementalVortex: return "Elemental Vortex"
            case .DarkPortal: return "Dark Portal"
            case .Shadowland: return "Shadowland"
            case .PlaceOfPower: return "Place Of Power"
            case .WanderingBarbarians: return "Wandering Barbarians"
            case .HumanoidVermin: return "Humanoid Vermin"
            case .UndergroundDwellers: return "Underground Dwellers"
            case .PlagueOfTheUndead: return "Plague Of The Undead"
            }
        }
        
        var impulse: String {
            switch self {
            case .MisguidedGood: return "to do what is 'right' no matter the cost"
            case .ThievesGuild: return "to take by subterfuge"
            case .Cult: return "to infest from within"
            case .ReligiousOrganization: return "to establish and follow doctrine"
            case .CorruptGovernment: return "to maintain the status quo"
            case .Cabal: return "to absorb those in power, to grow"
            case .God:  return "to gather worshippers"
            case .DemonPrince:  return "to open the gates of Hell"
            case .ElementalLord:  return "to tear down creation to its component parts"
            case .ForceOfChaos:  return "to destroy all semblance of order"
            case .ChoirOfAngels:  return "to pass judgement"
            case .ConstructOfLaw:  return "to eliminate perceived disorder"
            case .LordOfTheUndead:  return "to seek true immortality"
            case .PowerMadWizard:  return "to seek magical power"
            case .SentientArtifact:  return "to find a worthy wielder"
            case .AncientCurse:  return "to ensnare"
            case .ChosenOne:  return "to fulfill or resent their destiny"
            case .Dragon:  return "to hoard gold and jewels, to protect the clutch"
            case .AbandonedTower:  return "to draw in the weak-willed"
            case .UnholyGround:  return "to spawn evil"
            case .ElementalVortex:  return "to grow, to tear apart reality"
            case .DarkPortal:  return "to disgorge demons"
            case .Shadowland:  return "to corrupt or consume the living"
            case .PlaceOfPower:  return "to be controlled or tamed"
            case .WanderingBarbarians:  return "to grow strong, to drive their enemies before them"
            case .HumanoidVermin:  return "to breed, to multiply and consume"
            case .UndergroundDwellers:  return "to defend the complex from outsiders"
            case .PlagueOfTheUndead:  return "to spread"
            }
        }
    }
    
    var type: DangerType?
    var subtype: DangerSubType?
    var nameTemplate: SubstitutionTemplate
    var name: String = ""
    var icon: Icon = Icon.Acorn
    var description: String?
    
    init() {
        self.type = DangerType.random()
        self.subtype = self.type!.randomSubType()
        self.nameTemplate = SubstitutionTemplate(filepaths: [self.subtype!.wordFile()])
        self.name = self.nameTemplate.pick()
        self.icon = Icon.pick()
    }
}
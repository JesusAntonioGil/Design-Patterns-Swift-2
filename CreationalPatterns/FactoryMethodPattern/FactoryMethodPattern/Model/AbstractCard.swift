//
//  AbstractCard.swift
//  FactoryMethodPattern
//
//  Created by Jesus Antonio Gil on 17/12/15.
//  Copyright © 2015 Jesus Antonio Gil. All rights reserved.
//

import UIKit


protocol Card
{
    var name: String?  {get set}
    var mana: Int?  {get set}
    var attack: Int?  {get set}
    var defense: Int?  {get set}
    
    func clone() -> Card
    func toString() -> String
}


class AbstractCard: NSObject, Card {
    
    private var _name: String?
    private var _mana: Int?
    private var _attack: Int?
    private var _defense: Int?
    
    init(name:String?, mana:Int?, attack:Int?, defense:Int?)
    {
        self._name = name
        self._mana = mana
        self._attack = attack
        self._defense = defense
        
        super.init()
    }
    
    override init()
    {
        super.init()
    }
    
    //MARK: ACCESSORS
    
    var name: String?
    {
        get{ return _name }
        set{ _name = newValue }
    }
    
    var mana: Int?
    {
        get{ return _mana }
        set{ _mana = newValue }
    }
    
    var attack: Int?
    {
        get{ return _attack }
        set{ _attack = newValue }
    }
    
    var defense:Int?
    {
        get{ return _defense }
        set{ _defense = newValue }
    }
    
    //MARK: PROTOCOLS & DELEGATES
    //MARK: Card Protocol
    
    func clone() -> Card
    {
        return AbstractCard(name: self.name, mana: self.mana, attack: self.attack, defense: self.defense)
    }
    
    func toString() -> String
    {
        return ("\(self.name, self.mana, self.attack, self.defense)")
    }

}

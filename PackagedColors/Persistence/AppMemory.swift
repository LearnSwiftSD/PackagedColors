//
//  AppMemory.swift
//  DiffableColors
//
//  Created by Stephen Martinez on 9/14/19.
//  Copyright © 2019 Stephen Martinez. All rights reserved.
//

import Foundation
import Combine
import ConVerto
import RealmSwift

fileprivate class AppMemory {
    
    private var storage: [String: FavColor]
    
    let didSave = PassthroughSubject<[FavColor], Never>()
    let didUpdate = PassthroughSubject<[FavColor], Never>()
    let didDelete = PassthroughSubject<[FavColor], Never>()
    
    private let realm: Realm
    
    static let shared = AppMemory()
    
    private init() {
        self.storage = AppMemory.storageContainer()
        self.realm = Realm.required
        let measurement = (100.feet - 6.inches).toFeet
        print(measurement)
    }
    
    var favColors: [FavColor] {
        get { storage
            .map { $0.value }
            .sorted(by: { $0.timeStamp > $1.timeStamp })
        }
    }
    
    private static func storageContainer() -> [String: FavColor] {
        return Realm.required
            .objects(FavColorEntity.self)
            .reduce([String: FavColor]()) {
                var dictionary = $0
                let favColor = $1.projection()
                dictionary[favColor.id] = favColor
                return dictionary
        }
    }
    
    func save(color: FavColor) {
        var newStorage = storage
        newStorage[color.id] = color
        let entity = FavColorEntity(favColor: color)
        realm.save(entity)
        storage = newStorage
        didSave.send([color])
    }
    
    func update(color: FavColor) {
        var newStorage = storage
        newStorage[color.id] = color
        let entity = FavColorEntity(favColor: color)
        realm.save(entity)
        storage = newStorage
        didUpdate.send(favColors)
    }
    
    func delete(color: FavColor) {
        var newStorage = storage
        newStorage[color.id] = nil
        let entity = realm.object(ofType: FavColorEntity.self, forPrimaryKey: color.id)
        entity.map { realm.remove($0) }
        storage = newStorage
        didDelete.send([color])
    }
    
}

typealias Storable = Hashable & Codable

struct Store<T: Storable> { }

extension Store where T == FavColor {
    
    var all: [T] { AppMemory.shared.favColors }
    
    var didSave: AnyPublisher<[T], Never> {
        AppMemory.shared.didSave.eraseToAnyPublisher()
    }
    
    var didUpdate: AnyPublisher<[T], Never> {
        AppMemory.shared.didUpdate.eraseToAnyPublisher()
    }
    
    var didDelete: AnyPublisher<[T], Never> {
        AppMemory.shared.didDelete.eraseToAnyPublisher()
    }
    
    func save(_ storable: T) {
        AppMemory.shared.save(color: storable)
    }
    
    func update(_ storable: T) {
        AppMemory.shared.update(color: storable)
    }
    
    func delete(_ storable: T) {
        AppMemory.shared.delete(color: storable)
    }
    
}

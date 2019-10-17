//
//  ConVerto.swift
//  ConVerto
//
//  MIT License
//
//  Copyright (c) 2018 STEPHEN L. MARTINEZ
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in all
//  copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
//  SOFTWARE.


import Foundation
import CoreGraphics

/**
 Conforming to this type allows us to shift a numeric type into a unit based type
 that is scaled by the origin number.
 */
public protocol SchemaShiftable {
    
    /**
     The computed property that returns Self within the number type conforming to this protocol
     
     This property is the hook that allows us to build a Measurement type ontop of a number type.
     Hence why it has been named the entry schema. It is the first frame of reference by which all
     following unit are based upon.
     */
    var entrySchema: Double { get }
    
    // MARK: Measurement Type: Length
    
    var megameters: Measurement<UnitLength> {get}
    
    var kilometers: Measurement<UnitLength> {get}
    
    var hectometers: Measurement<UnitLength> {get}
    
    var decameters: Measurement<UnitLength> {get}
    
    var meters: Measurement<UnitLength> {get}
    
    var decimeters: Measurement<UnitLength> {get}
    
    var centimeters: Measurement<UnitLength> {get}
    
    var millimeters: Measurement<UnitLength> {get}
    
    var micrometers: Measurement<UnitLength> {get}
    
    var nanometers: Measurement<UnitLength> {get}
    
    var picometers: Measurement<UnitLength> {get}
    
    var inches: Measurement<UnitLength> {get}
    
    var feet: Measurement<UnitLength> {get}
    
    var yards: Measurement<UnitLength> {get}
    
    var miles: Measurement<UnitLength> {get}
    
    var scandinavianMiles: Measurement<UnitLength> {get}
    
    var lightyears: Measurement<UnitLength> {get}
    
    var nauticalMiles: Measurement<UnitLength> {get}
    
    var fathoms: Measurement<UnitLength> {get}
    
    var furlongs: Measurement<UnitLength> {get}
    
    var astronomicalUnits: Measurement<UnitLength> {get}
    
    var parsecs: Measurement<UnitLength> {get}
    
    // MARK: Measurement Type: Angles
    
    var degrees: Measurement<UnitAngle> {get}
    
    var arcMinutes: Measurement<UnitAngle> {get}
    
    var arcSeconds: Measurement<UnitAngle> {get}
    
    var radians: Measurement<UnitAngle> {get}
    
    var gradians: Measurement<UnitAngle> {get}
    
    var revolutions: Measurement<UnitAngle> {get}
    
    // MARK: Measurement Type: Area
    
    var squareMegameters: Measurement<UnitArea> {get}
    
    var squareKilometers: Measurement<UnitArea> {get}
    
    var squareMeters: Measurement<UnitArea> {get}
    
    var squareCentimeters: Measurement<UnitArea> {get}
    
    var squareMillimeters: Measurement<UnitArea> {get}
    
    var squareMicrometers: Measurement<UnitArea> {get}
    
    var squareNanometers: Measurement<UnitArea> {get}
    
    var squareInches: Measurement<UnitArea> {get}
    
    var squareFeet: Measurement<UnitArea> {get}
    
    var squareYards: Measurement<UnitArea> {get}
    
    var squareMiles: Measurement<UnitArea> {get}
    
    var acres: Measurement<UnitArea> {get}
    
    var ares: Measurement<UnitArea> {get}
    
    var hectares: Measurement<UnitArea> {get}
    
    // MARK: Measurement Type: Pressure
    
    var newtonsPerMetersSquared: Measurement<UnitPressure> {get}
    
    var gigapascals: Measurement<UnitPressure> {get}
    
    var megapascals: Measurement<UnitPressure> {get}
    
    var kilopascals: Measurement<UnitPressure> {get}
    
    var hectopascals: Measurement<UnitPressure> {get}
    
    var inchesOfMercury: Measurement<UnitPressure> {get}
    
    var bars: Measurement<UnitPressure> {get}
    
    var millibars: Measurement<UnitPressure> {get}
    
    var millimetersOfMercury: Measurement<UnitPressure> {get}
    
    var poundsForcePerSquareInch: Measurement<UnitPressure> {get}
    
    // MARK: Measurement Type: Volume
    
    var megaliters: Measurement<UnitVolume> {get}
    
    var kiloliters: Measurement<UnitVolume> {get}
    
    var liters: Measurement<UnitVolume> {get}
    
    var deciliters: Measurement<UnitVolume> {get}
    
    var centiliters: Measurement<UnitVolume> {get}
    
    var milliliters: Measurement<UnitVolume> {get}
    
    var cubicKilometers: Measurement<UnitVolume> {get}
    
    var cubicMeters: Measurement<UnitVolume> {get}
    
    var cubicDecimeters: Measurement<UnitVolume> {get}
    
    var cubicCentimeters: Measurement<UnitVolume> {get}
    
    var cubicMillimeters: Measurement<UnitVolume> {get}
    
    var cubicInches: Measurement<UnitVolume> {get}
    
    var cubicFeet: Measurement<UnitVolume> {get}
    
    var cubicYards: Measurement<UnitVolume> {get}
    
    var cubicMiles: Measurement<UnitVolume> {get}
    
    var acreFeet: Measurement<UnitVolume> {get}
    
    var bushels: Measurement<UnitVolume> {get}
    
    var teaspoons: Measurement<UnitVolume> {get}
    
    var tablespoons: Measurement<UnitVolume> {get}
    
    var fluidOunces: Measurement<UnitVolume> {get}
    
    var cups: Measurement<UnitVolume> {get}
    
    var pints: Measurement<UnitVolume> {get}
    
    var quarts: Measurement<UnitVolume> {get}
    
    var gallons: Measurement<UnitVolume> {get}
    
    var imperialTeaspoons: Measurement<UnitVolume> {get}
    
    var imperialTablespoons: Measurement<UnitVolume> {get}
    
    var imperialFluidOunces: Measurement<UnitVolume> {get}
    
    var imperialPints: Measurement<UnitVolume> {get}
    
    var imperialQuarts: Measurement<UnitVolume> {get}
    
    var imperialGallons: Measurement<UnitVolume> {get}
    
    var metricCups: Measurement<UnitVolume> {get}
    
    // MARK: Measurement Type: Dispersion
    
    var partsPerMillion: Measurement<UnitDispersion> {get}
    
    // MARK: Measurement Type: Concentration of Mass
    
    var gramsPerLiter: Measurement<UnitConcentrationMass> {get}
    
    var milligramsPerDeciliter: Measurement<UnitConcentrationMass> {get}
    
    // MARK: Measurement Type: Mass
    
    var kilograms: Measurement<UnitMass> {get}
    
    var grams: Measurement<UnitMass> {get}
    
    var decigrams: Measurement<UnitMass> {get}
    
    var centigrams: Measurement<UnitMass> {get}
    
    var milligrams: Measurement<UnitMass> {get}
    
    var micrograms: Measurement<UnitMass> {get}
    
    var nanograms: Measurement<UnitMass> {get}
    
    var picograms: Measurement<UnitMass> {get}
    
    var ounces: Measurement<UnitMass> {get}
    
    var pounds: Measurement<UnitMass> {get}
    
    var stones: Measurement<UnitMass> {get}
    
    var metricTons: Measurement<UnitMass> {get}
    
    var shortTons: Measurement<UnitMass> {get}
    
    var carats: Measurement<UnitMass> {get}
    
    var ouncesTroy: Measurement<UnitMass> {get}
    
    var slugs: Measurement<UnitMass> {get}
    
    // MARK: Measurement Type: Time
    
    var seconds: Measurement<UnitDuration> {get}
    
    var minutes: Measurement<UnitDuration> {get}
    
    var hours: Measurement<UnitDuration> {get}
    
    // MARK: Measurement Type: Acceleration
    
    var metersPerSecondSquared: Measurement<UnitAcceleration> {get}
    
    var gravity: Measurement<UnitAcceleration> {get}
    
    // MARK: Measurement Type: Speed
    
    var metersPerSecond: Measurement<UnitSpeed> {get}
    
    var kilometersPerHour: Measurement<UnitSpeed> {get}
    
    var milesPerHour: Measurement<UnitSpeed> {get}
    
    var knots: Measurement<UnitSpeed> {get}
    
    // MARK: Measurement Type: Light
    
    var lux: Measurement<UnitIlluminance> {get}
    
    // MARK: Measurement Type: Temperature
    
    var kelvin: Measurement<UnitTemperature> {get}
    
    var celsius: Measurement<UnitTemperature> {get}
    
    var fahrenheit: Measurement<UnitTemperature> {get}
    
    // MARK: Measurement Type: Fuel Efficiency
    
    var litersPer100Kilometers: Measurement<UnitFuelEfficiency> {get}
    
    var milesPerImperialGallon: Measurement<UnitFuelEfficiency> {get}
    
    var milesPerGallon: Measurement<UnitFuelEfficiency> {get}
    
    // MARK: Measurement Type: Energy
    
    var kilojoules: Measurement<UnitEnergy> {get}
    
    var joules: Measurement<UnitEnergy> {get}
    
    var kilocalories: Measurement<UnitEnergy> {get}
    
    var calories: Measurement<UnitEnergy> {get}
    
    var kilowattHours: Measurement<UnitEnergy> {get}
    
    // MARK: Measurement Type: Frequency
    
    var terahertz: Measurement<UnitFrequency> {get}
    
    var gigahertz: Measurement<UnitFrequency> {get}
    
    var megahertz: Measurement<UnitFrequency> {get}
    
    var kilohertz: Measurement<UnitFrequency> {get}
    
    var hertz: Measurement<UnitFrequency> {get}
    
    var millihertz: Measurement<UnitFrequency> {get}
    
    var microhertz: Measurement<UnitFrequency> {get}
    
    var nanohertz: Measurement<UnitFrequency> {get}
    
    // MARK: Measurement Type: Electric Current
    
    var megaamperes: Measurement<UnitElectricCurrent> {get}
    
    var kiloamperes: Measurement<UnitElectricCurrent> {get}
    
    var amperes: Measurement<UnitElectricCurrent> {get}
    
    var milliamperes: Measurement<UnitElectricCurrent> {get}
    
    var microamperes: Measurement<UnitElectricCurrent> {get}
    
    // MARK: Measurement Type: Electrical Resistance
    
    var megaohms: Measurement<UnitElectricResistance> {get}
    
    var kiloohms: Measurement<UnitElectricResistance> {get}
    
    var ohms: Measurement<UnitElectricResistance> {get}
    
    var milliohms: Measurement<UnitElectricResistance> {get}
    
    var microohms: Measurement<UnitElectricResistance> {get}
    
    // MARK: Measurement Type: Electric Voltage
    
    var megavolts: Measurement<UnitElectricPotentialDifference> {get}
    
    var kilovolts: Measurement<UnitElectricPotentialDifference> {get}
    
    var volts: Measurement<UnitElectricPotentialDifference> {get}
    
    var millivolts: Measurement<UnitElectricPotentialDifference> {get}
    
    var microvolts: Measurement<UnitElectricPotentialDifference> {get}
    
    // MARK: Measurement Type: Electric Wattage / Power
    
    var terawatts: Measurement<UnitPower> {get}
    
    var gigawatts: Measurement<UnitPower> {get}
    
    var megawatts: Measurement<UnitPower> {get}
    
    var kilowatts: Measurement<UnitPower> {get}
    
    var watts: Measurement<UnitPower> {get}
    
    var milliwatts: Measurement<UnitPower> {get}
    
    var microwatts: Measurement<UnitPower> {get}
    
    var nanowatts: Measurement<UnitPower> {get}
    
    var picowatts: Measurement<UnitPower> {get}
    
    var femtowatts: Measurement<UnitPower> {get}
    
    var horsepower: Measurement<UnitPower> {get}
    
    // MARK: Measurement Type: Electric Charge
    
    var coulombs: Measurement<UnitElectricCharge> {get}
    
    var megaampereHours: Measurement<UnitElectricCharge> {get}
    
    var kiloampereHours: Measurement<UnitElectricCharge> {get}
    
    var ampereHours: Measurement<UnitElectricCharge> {get}
    
    var milliampereHours: Measurement<UnitElectricCharge> {get}
    
    var microampereHours: Measurement<UnitElectricCharge> {get}
    
}

// MARK: Default implementation for SchemaShiftable Stubs

extension SchemaShiftable {
    
    //Measurement Type: Length
    
    public var megameters: Measurement<UnitLength> {
        return Measurement(value: entrySchema, unit: .megameters)}
    
    public var kilometers: Measurement<UnitLength> {
        return Measurement(value: entrySchema, unit: .kilometers)}
    
    public var hectometers: Measurement<UnitLength> {
        return Measurement(value: entrySchema, unit: .hectometers)}
    
    public var decameters: Measurement<UnitLength> {
        return Measurement(value: entrySchema, unit: .decameters)}
    
    public var meters: Measurement<UnitLength> {
        return Measurement(value: entrySchema, unit: .meters)}
    
    public var decimeters: Measurement<UnitLength> {
        return Measurement(value: entrySchema, unit: .decimeters)}
    
    public var centimeters: Measurement<UnitLength> {
        return Measurement(value: entrySchema, unit: .centimeters)}
    
    public var millimeters: Measurement<UnitLength> {
        return Measurement(value: entrySchema, unit: .millimeters)}
    
    public var micrometers: Measurement<UnitLength> {
        return Measurement(value: entrySchema, unit: .micrometers)}
    
    public var nanometers: Measurement<UnitLength> {
        return Measurement(value: entrySchema, unit: .nanometers)}
    
    public var picometers: Measurement<UnitLength> {
        return Measurement(value: entrySchema, unit: .picometers)}
    
    public var inches: Measurement<UnitLength> {
        return Measurement(value: entrySchema, unit: .inches)}
    
    public var feet: Measurement<UnitLength> {
        return Measurement(value: entrySchema, unit: .feet)}
    
    public var yards: Measurement<UnitLength> {
        return Measurement(value: entrySchema, unit: .yards)}
    
    public var miles: Measurement<UnitLength> {
        return Measurement(value: entrySchema, unit: .miles)}
    
    public var scandinavianMiles: Measurement<UnitLength> {
        return Measurement(value: entrySchema, unit: .scandinavianMiles)}
    
    public var lightyears: Measurement<UnitLength> {
        return Measurement(value: entrySchema, unit: .lightyears)}
    
    public var nauticalMiles: Measurement<UnitLength> {
        return Measurement(value: entrySchema, unit: .nauticalMiles)}
    
    public var fathoms: Measurement<UnitLength> {
        return Measurement(value: entrySchema, unit: .fathoms)}
    
    public var furlongs: Measurement<UnitLength> {
        return Measurement(value: entrySchema, unit: .furlongs)}
    
    public var astronomicalUnits: Measurement<UnitLength> {
        return Measurement(value: entrySchema, unit: .astronomicalUnits)}
    
    public var parsecs: Measurement<UnitLength> {
        return Measurement(value: entrySchema, unit: .parsecs)}
    
    //Measurement Type: Angles
    
    public var degrees: Measurement<UnitAngle> {
        return Measurement(value: entrySchema, unit: .degrees)}
    
    public var arcMinutes: Measurement<UnitAngle> {
        return Measurement(value: entrySchema, unit: .arcMinutes)}
    
    public var arcSeconds: Measurement<UnitAngle> {
        return Measurement(value: entrySchema, unit: .arcSeconds)}
    
    public var radians: Measurement<UnitAngle> {
        return Measurement(value: entrySchema, unit: .radians)}
    
    public var gradians: Measurement<UnitAngle> {
        return Measurement(value: entrySchema, unit: .gradians)}
    
    public var revolutions: Measurement<UnitAngle> {
        return Measurement(value: entrySchema, unit: .revolutions)}
    
    //Measurement Type: Area
    
    public var squareMegameters: Measurement<UnitArea> {
        return Measurement(value: entrySchema, unit: .squareMegameters)}
    
    public var squareKilometers: Measurement<UnitArea> {
        return Measurement(value: entrySchema, unit: .squareKilometers)}
    
    public var squareMeters: Measurement<UnitArea> {
        return Measurement(value: entrySchema, unit: .squareMeters)}
    
    public var squareCentimeters: Measurement<UnitArea> {
        return Measurement(value: entrySchema, unit: .squareCentimeters)}
    
    public var squareMillimeters: Measurement<UnitArea> {
        return Measurement(value: entrySchema, unit: .squareMillimeters)}
    
    public var squareMicrometers: Measurement<UnitArea> {
        return Measurement(value: entrySchema, unit: .squareMicrometers)}
    
    public var squareNanometers: Measurement<UnitArea> {
        return Measurement(value: entrySchema, unit: .squareNanometers)}
    
    public var squareInches: Measurement<UnitArea> {
        return Measurement(value: entrySchema, unit: .squareInches)}
    
    public var squareFeet: Measurement<UnitArea> {
        return Measurement(value: entrySchema, unit: .squareFeet)}
    
    public var squareYards: Measurement<UnitArea> {
        return Measurement(value: entrySchema, unit: .squareYards)}
    
    public var squareMiles: Measurement<UnitArea> {
        return Measurement(value: entrySchema, unit: .squareMiles)}
    
    public var acres: Measurement<UnitArea> {
        return Measurement(value: entrySchema, unit: .acres)}
    
    public var ares: Measurement<UnitArea> {
        return Measurement(value: entrySchema, unit: .ares)}
    
    public var hectares: Measurement<UnitArea> {
        return Measurement(value: entrySchema, unit: .hectares)}
    
    //Measurement Type: Pressure
    
    public var newtonsPerMetersSquared: Measurement<UnitPressure> {
        return Measurement(value: entrySchema, unit: .newtonsPerMetersSquared)}
    
    public var gigapascals: Measurement<UnitPressure> {
        return Measurement(value: entrySchema, unit: .gigapascals)}
    
    public var megapascals: Measurement<UnitPressure> {
        return Measurement(value: entrySchema, unit: .megapascals)}
    
    public var kilopascals: Measurement<UnitPressure> {
        return Measurement(value: entrySchema, unit: .kilopascals)}
    
    public var hectopascals: Measurement<UnitPressure> {
        return Measurement(value: entrySchema, unit: .hectopascals)}
    
    public var inchesOfMercury: Measurement<UnitPressure> {
        return Measurement(value: entrySchema, unit: .inchesOfMercury)}
    
    public var bars: Measurement<UnitPressure> {
        return Measurement(value: entrySchema, unit: .bars)}
    
    public var millibars: Measurement<UnitPressure> {
        return Measurement(value: entrySchema, unit: .millibars)}
    
    public var millimetersOfMercury: Measurement<UnitPressure> {
        return Measurement(value: entrySchema, unit: .millimetersOfMercury)}
    
    public var poundsForcePerSquareInch: Measurement<UnitPressure> {
        return Measurement(value: entrySchema, unit: .poundsForcePerSquareInch)}
    
    //Measurement Type: Volume
    
    public var megaliters: Measurement<UnitVolume> {
        return Measurement(value: entrySchema, unit: .megaliters)}
    
    public var kiloliters: Measurement<UnitVolume> {
        return Measurement(value: entrySchema, unit: .kiloliters)}
    
    public var liters: Measurement<UnitVolume> {
        return Measurement(value: entrySchema, unit: .liters)}
    
    public var deciliters: Measurement<UnitVolume> {
        return Measurement(value: entrySchema, unit: .deciliters)}
    
    public var centiliters: Measurement<UnitVolume> {
        return Measurement(value: entrySchema, unit: .centiliters)}
    
    public var milliliters: Measurement<UnitVolume> {
        return Measurement(value: entrySchema, unit: .milliliters)}
    
    public var cubicKilometers: Measurement<UnitVolume> {
        return Measurement(value: entrySchema, unit: .cubicKilometers)}
    
    public var cubicMeters: Measurement<UnitVolume> {
        return Measurement(value: entrySchema, unit: .cubicMeters)}
    
    public var cubicDecimeters: Measurement<UnitVolume> {
        return Measurement(value: entrySchema, unit: .cubicDecimeters)}
    
    public var cubicCentimeters: Measurement<UnitVolume> {
        return Measurement(value: entrySchema, unit: .cubicCentimeters)}
    
    public var cubicMillimeters: Measurement<UnitVolume> {
        return Measurement(value: entrySchema, unit: .cubicMillimeters)}
    
    public var cubicInches: Measurement<UnitVolume> {
        return Measurement(value: entrySchema, unit: .cubicInches)}
    
    public var cubicFeet: Measurement<UnitVolume> {
        return Measurement(value: entrySchema, unit: .cubicFeet)}
    
    public var cubicYards: Measurement<UnitVolume> {
        return Measurement(value: entrySchema, unit: .cubicYards)}
    
    public var cubicMiles: Measurement<UnitVolume> {
        return Measurement(value: entrySchema, unit: .cubicMiles)}
    
    public var acreFeet: Measurement<UnitVolume> {
        return Measurement(value: entrySchema, unit: .acreFeet)}
    
    public var bushels: Measurement<UnitVolume> {
        return Measurement(value: entrySchema, unit: .bushels)}
    
    public var teaspoons: Measurement<UnitVolume> {
        return Measurement(value: entrySchema, unit: .teaspoons)}
    
    public var tablespoons: Measurement<UnitVolume> {
        return Measurement(value: entrySchema, unit: .tablespoons)}
    
    public var fluidOunces: Measurement<UnitVolume> {
        return Measurement(value: entrySchema, unit: .fluidOunces)}
    
    public var cups: Measurement<UnitVolume> {
        return Measurement(value: entrySchema, unit: .cups)}
    
    public var pints: Measurement<UnitVolume> {
        return Measurement(value: entrySchema, unit: .pints)}
    
    public var quarts: Measurement<UnitVolume> {
        return Measurement(value: entrySchema, unit: .quarts)}
    
    public var gallons: Measurement<UnitVolume> {
        return Measurement(value: entrySchema, unit: .gallons)}
    
    public var imperialTeaspoons: Measurement<UnitVolume> {
        return Measurement(value: entrySchema, unit: .imperialTeaspoons)}
    
    public var imperialTablespoons: Measurement<UnitVolume> {
        return Measurement(value: entrySchema, unit: .imperialTablespoons)}
    
    public var imperialFluidOunces: Measurement<UnitVolume> {
        return Measurement(value: entrySchema, unit: .imperialFluidOunces)}
    
    public var imperialPints: Measurement<UnitVolume> {
        return Measurement(value: entrySchema, unit: .imperialPints)}
    
    public var imperialQuarts: Measurement<UnitVolume> {
        return Measurement(value: entrySchema, unit: .imperialQuarts)}
    
    public var imperialGallons: Measurement<UnitVolume> {
        return Measurement(value: entrySchema, unit: .imperialGallons)}
    
    public var metricCups: Measurement<UnitVolume> {
        return Measurement(value: entrySchema, unit: .metricCups)}
    
    //Measurement Type: Dispersion
    
    public var partsPerMillion: Measurement<UnitDispersion> {
        return Measurement(value: entrySchema, unit: .partsPerMillion)}
    
    //Measurement Type: Concentration of Mass
    
    public var gramsPerLiter: Measurement<UnitConcentrationMass> {
        return Measurement(value: entrySchema, unit: .gramsPerLiter)}
    
    public var milligramsPerDeciliter: Measurement<UnitConcentrationMass> {
        return Measurement(value: entrySchema, unit: .milligramsPerDeciliter)}
    
    //Measurement Type: Mass
    
    public var kilograms: Measurement<UnitMass> {
        return Measurement(value: entrySchema, unit: .kilograms)}
    
    public var grams: Measurement<UnitMass> {
        return Measurement(value: entrySchema, unit: .grams)}
    
    public var decigrams: Measurement<UnitMass> {
        return Measurement(value: entrySchema, unit: .decigrams)}
    
    public var centigrams: Measurement<UnitMass> {
        return Measurement(value: entrySchema, unit: .centigrams)}
    
    public var milligrams: Measurement<UnitMass> {
        return Measurement(value: entrySchema, unit: .milligrams)}
    
    public var micrograms: Measurement<UnitMass> {
        return Measurement(value: entrySchema, unit: .micrograms)}
    
    public var nanograms: Measurement<UnitMass> {
        return Measurement(value: entrySchema, unit: .nanograms)}
    
    public var picograms: Measurement<UnitMass> {
        return Measurement(value: entrySchema, unit: .picograms)}
    
    public var ounces: Measurement<UnitMass> {
        return Measurement(value: entrySchema, unit: .ounces)}
    
    public var pounds: Measurement<UnitMass> {
        return Measurement(value: entrySchema, unit: .pounds)}
    
    public var stones: Measurement<UnitMass> {
        return Measurement(value: entrySchema, unit: .stones)}
    
    public var metricTons: Measurement<UnitMass> {
        return Measurement(value: entrySchema, unit: .metricTons)}
    
    public var shortTons: Measurement<UnitMass> {
        return Measurement(value: entrySchema, unit: .shortTons)}
    
    public var carats: Measurement<UnitMass> {
        return Measurement(value: entrySchema, unit: .carats)}
    
    public var ouncesTroy: Measurement<UnitMass> {
        return Measurement(value: entrySchema, unit: .ouncesTroy)}
    
    public var slugs: Measurement<UnitMass> {
        return Measurement(value: entrySchema, unit: .slugs)}
    
    //Measurement Type: Time
    
    public var seconds: Measurement<UnitDuration> {
        return Measurement(value: entrySchema, unit: .seconds)}
    
    public var minutes: Measurement<UnitDuration> {
        return Measurement(value: entrySchema, unit: .minutes)}
    
    public var hours: Measurement<UnitDuration> {
        return Measurement(value: entrySchema, unit: .hours)}
    
    //Measurement Type: Acceleration
    
    public var metersPerSecondSquared: Measurement<UnitAcceleration> {
        return Measurement(value: entrySchema, unit: .metersPerSecondSquared)}
    
    public var gravity: Measurement<UnitAcceleration> {
        return Measurement(value: entrySchema, unit: .gravity)}
    
    //Measurement Type: Speed
    
    public var metersPerSecond: Measurement<UnitSpeed> {
        return Measurement(value: entrySchema, unit: .metersPerSecond)}
    
    public var kilometersPerHour: Measurement<UnitSpeed> {
        return Measurement(value: entrySchema, unit: .kilometersPerHour)}
    
    public var milesPerHour: Measurement<UnitSpeed> {
        return Measurement(value: entrySchema, unit: .milesPerHour)}
    
    public var knots: Measurement<UnitSpeed> {
        return Measurement(value: entrySchema, unit: .knots)}
    
    //Measurement Type: Light
    
    public var lux: Measurement<UnitIlluminance> {
        return Measurement(value: entrySchema, unit: .lux)}
    
    //Measurement Type: Temperature
    
    public var kelvin: Measurement<UnitTemperature> {
        return Measurement(value: entrySchema, unit: .kelvin)}
    
    public var celsius: Measurement<UnitTemperature> {
        return Measurement(value: entrySchema, unit: .celsius)}
    
    public var fahrenheit: Measurement<UnitTemperature> {
        return Measurement(value: entrySchema, unit: .fahrenheit)}
    
    //Measurement Type: Fuel Efficiency
    
    public var litersPer100Kilometers: Measurement<UnitFuelEfficiency> {
        return Measurement(value: entrySchema, unit: .litersPer100Kilometers)}
    
    public var milesPerImperialGallon: Measurement<UnitFuelEfficiency> {
        return Measurement(value: entrySchema, unit: .milesPerImperialGallon)}
    
    public var milesPerGallon: Measurement<UnitFuelEfficiency> {
        return Measurement(value: entrySchema, unit: .milesPerGallon)}
    
    //Measurement Type: Energy
    
    public var kilojoules: Measurement<UnitEnergy> {
        return Measurement(value: entrySchema, unit: .kilojoules)}
    
    public var joules: Measurement<UnitEnergy> {
        return Measurement(value: entrySchema, unit: .joules)}
    
    public var kilocalories: Measurement<UnitEnergy> {
        return Measurement(value: entrySchema, unit: .kilocalories)}
    
    public var calories: Measurement<UnitEnergy> {
        return Measurement(value: entrySchema, unit: .calories)}
    
    public var kilowattHours: Measurement<UnitEnergy> {
        return Measurement(value: entrySchema, unit: .kilowattHours)}
    
    //Measurement Type: Frequency
    
    public var terahertz: Measurement<UnitFrequency> {
        return Measurement(value: entrySchema, unit: .terahertz)}
    
    public var gigahertz: Measurement<UnitFrequency> {
        return Measurement(value: entrySchema, unit: .gigahertz)}
    
    public var megahertz: Measurement<UnitFrequency> {
        return Measurement(value: entrySchema, unit: .megahertz)}
    
    public var kilohertz: Measurement<UnitFrequency> {
        return Measurement(value: entrySchema, unit: .kilohertz)}
    
    public var hertz: Measurement<UnitFrequency> {
        return Measurement(value: entrySchema, unit: .hertz)}
    
    public var millihertz: Measurement<UnitFrequency> {
        return Measurement(value: entrySchema, unit: .millihertz)}
    
    public var microhertz: Measurement<UnitFrequency> {
        return Measurement(value: entrySchema, unit: .microhertz)}
    
    public var nanohertz: Measurement<UnitFrequency> {
        return Measurement(value: entrySchema, unit: .nanohertz)}
    
    //Measurement Type: Electric Current
    
    public var megaamperes: Measurement<UnitElectricCurrent> {
        return Measurement(value: entrySchema, unit: .megaamperes)}
    
    public var kiloamperes: Measurement<UnitElectricCurrent> {
        return Measurement(value: entrySchema, unit: .kiloamperes)}
    
    public var amperes: Measurement<UnitElectricCurrent> {
        return Measurement(value: entrySchema, unit: .amperes)}
    
    public var milliamperes: Measurement<UnitElectricCurrent> {
        return Measurement(value: entrySchema, unit: .milliamperes)}
    
    public var microamperes: Measurement<UnitElectricCurrent> {
        return Measurement(value: entrySchema, unit: .microamperes)}
    
    //Measurement Type: Electrical Resistance
    
    public var megaohms: Measurement<UnitElectricResistance> {
        return Measurement(value: entrySchema, unit: .megaohms)}
    
    public var kiloohms: Measurement<UnitElectricResistance> {
        return Measurement(value: entrySchema, unit: .kiloohms)}
    
    public var ohms: Measurement<UnitElectricResistance> {
        return Measurement(value: entrySchema, unit: .ohms)}
    
    public var milliohms: Measurement<UnitElectricResistance> {
        return Measurement(value: entrySchema, unit: .milliohms)}
    
    public var microohms: Measurement<UnitElectricResistance> {
        return Measurement(value: entrySchema, unit: .microohms)}
    
    //Measurement Type: Electric Voltage
    
    public var megavolts: Measurement<UnitElectricPotentialDifference> {
        return Measurement(value: entrySchema, unit: .megavolts)}
    
    public var kilovolts: Measurement<UnitElectricPotentialDifference> {
        return Measurement(value: entrySchema, unit: .kilovolts)}
    
    public var volts: Measurement<UnitElectricPotentialDifference> {
        return Measurement(value: entrySchema, unit: .volts)}
    
    public var millivolts: Measurement<UnitElectricPotentialDifference> {
        return Measurement(value: entrySchema, unit: .millivolts)}
    
    public var microvolts: Measurement<UnitElectricPotentialDifference> {
        return Measurement(value: entrySchema, unit: .microvolts)}
    
    //Measurement Type: Electric Wattage / Power
    
    public var terawatts: Measurement<UnitPower> {
        return Measurement(value: entrySchema, unit: .terawatts)}
    
    public var gigawatts: Measurement<UnitPower> {
        return Measurement(value: entrySchema, unit: .gigawatts)}
    
    public var megawatts: Measurement<UnitPower> {
        return Measurement(value: entrySchema, unit: .megawatts)}
    
    public var kilowatts: Measurement<UnitPower> {
        return Measurement(value: entrySchema, unit: .kilowatts)}
    
    public var watts: Measurement<UnitPower> {
        return Measurement(value: entrySchema, unit: .watts)}
    
    public var milliwatts: Measurement<UnitPower> {
        return Measurement(value: entrySchema, unit: .milliwatts)}
    
    public var microwatts: Measurement<UnitPower> {
        return Measurement(value: entrySchema, unit: .microwatts)}
    
    public var nanowatts: Measurement<UnitPower> {
        return Measurement(value: entrySchema, unit: .nanowatts)}
    
    public var picowatts: Measurement<UnitPower> {
        return Measurement(value: entrySchema, unit: .picowatts)}
    
    public var femtowatts: Measurement<UnitPower> {
        return Measurement(value: entrySchema, unit: .femtowatts)}
    
    public var horsepower: Measurement<UnitPower> {
        return Measurement(value: entrySchema, unit: .horsepower)}
    
    //Measurement Type: Electric Charge
    
    public var coulombs: Measurement<UnitElectricCharge> {
        return Measurement(value: entrySchema, unit: .coulombs)}
    
    public var megaampereHours: Measurement<UnitElectricCharge> {
        return Measurement(value: entrySchema, unit: .megaampereHours)}
    
    public var kiloampereHours: Measurement<UnitElectricCharge> {
        return Measurement(value: entrySchema, unit: .kiloampereHours)}
    
    public var ampereHours: Measurement<UnitElectricCharge> {
        return Measurement(value: entrySchema, unit: .ampereHours)}
    
    public var milliampereHours: Measurement<UnitElectricCharge> {
        return Measurement(value: entrySchema, unit: .milliampereHours)}
    
    public var microampereHours: Measurement<UnitElectricCharge> {
        return Measurement(value: entrySchema, unit: .microampereHours)}
    
}

// MARK: EntrySchema into Data Types through extensions

extension Double: SchemaShiftable {
    
    public var entrySchema: Double {return self}
    
}

extension CGFloat: SchemaShiftable {
    
    public var entrySchema: Double {return Double(self)}
    
}

extension Int: SchemaShiftable {
    
    public var entrySchema: Double {return Double(self)}
    
}

extension Float: SchemaShiftable {
    
    public var entrySchema: Double {return Double(self)}
    
}

// MARK: Value Formatting

extension Double {
    /**
     Returns a new Double with the specified decimal places
     - Parameters:
     - specified: An Integer that specifies the decimal placement.
     */
    public func places(_ specified: Int) -> Double {
        let formatted = String(format: "%0.\(specified)f", self)
        guard let formattedNum = Double(formatted) else {return 0}
        return formattedNum
    }
}

extension Float {
    /**
     Returns a new Float with the specified decimal places
     - Parameters:
     - specified: An Integer that specifies the decimal placement.
     */
    public func places(_ specified: Int) -> Float {
        let formatted = String(format: "%0.\(specified)f", self)
        guard let formattedNum = Float(formatted) else {return 0}
        return formattedNum
    }
}


// MARK: Value extraction types

public extension Measurement {
    
    init(value: CGFloat, unit: UnitType) {self.init(value: Double(value), unit: unit)}
    
    ///The value component of the Measurement expressed as a type CGFloat
    var cgValue: CGFloat {return CGFloat(value)}
    
    ///The value component of the Measurement expressed as a type Float
    var fltValue: Float {return Float(value)}
    
}

//  MARK: Conversion Methods

public extension Measurement where UnitType: UnitLength {
    
    var toMegameters: Measurement<UnitLength> {
        let mySelf = self as! Measurement<UnitLength>; return mySelf.converted(to: .megameters)}
    
    var toKilometers: Measurement<UnitLength> {
        let mySelf = self as! Measurement<UnitLength>; return mySelf.converted(to: .kilometers)}
    
    var toHectometers: Measurement<UnitLength> {
        let mySelf = self as! Measurement<UnitLength>; return mySelf.converted(to: .hectometers)}
    
    var toDecameters: Measurement<UnitLength> {
        let mySelf = self as! Measurement<UnitLength>; return mySelf.converted(to: .decameters)}
    
    var toMeters: Measurement<UnitLength> {
        let mySelf = self as! Measurement<UnitLength>; return mySelf.converted(to: .meters)}
    
    var toDecimeters: Measurement<UnitLength> {
        let mySelf = self as! Measurement<UnitLength>; return mySelf.converted(to: .decimeters)}
    
    var toCentimeters: Measurement<UnitLength> {
        let mySelf = self as! Measurement<UnitLength>; return mySelf.converted(to: .centimeters)}
    
    var toMillimeters: Measurement<UnitLength> {
        let mySelf = self as! Measurement<UnitLength>; return mySelf.converted(to: .millimeters)}
    
    var toMicrometers: Measurement<UnitLength> {
        let mySelf = self as! Measurement<UnitLength>; return mySelf.converted(to: .micrometers)}
    
    var toNanometers: Measurement<UnitLength> {
        let mySelf = self as! Measurement<UnitLength>; return mySelf.converted(to: .nanometers)}
    
    var toPicometers: Measurement<UnitLength> {
        let mySelf = self as! Measurement<UnitLength>; return mySelf.converted(to: .picometers)}
    
    var toInches: Measurement<UnitLength> {
        let mySelf = self as! Measurement<UnitLength>; return mySelf.converted(to: .inches)}
    
    var toFeet: Measurement<UnitLength> {
        let mySelf = self as! Measurement<UnitLength>; return mySelf.converted(to: .feet)}
    
    var toYards: Measurement<UnitLength> {
        let mySelf = self as! Measurement<UnitLength>; return mySelf.converted(to: .yards)}
    
    var toMiles: Measurement<UnitLength> {
        let mySelf = self as! Measurement<UnitLength>; return mySelf.converted(to: .miles)}
    
    var toScandinavianMiles: Measurement<UnitLength> {
        let mySelf = self as! Measurement<UnitLength>; return mySelf.converted(to: .scandinavianMiles)}
    
    var toLightyears: Measurement<UnitLength> {
        let mySelf = self as! Measurement<UnitLength>; return mySelf.converted(to: .lightyears)}
    
    var toNauticalMiles: Measurement<UnitLength> {
        let mySelf = self as! Measurement<UnitLength>; return mySelf.converted(to: .nauticalMiles)}
    
    var toFathoms: Measurement<UnitLength> {
        let mySelf = self as! Measurement<UnitLength>; return mySelf.converted(to: .fathoms)}
    
    var toFurlongs: Measurement<UnitLength> {
        let mySelf = self as! Measurement<UnitLength>; return mySelf.converted(to: .furlongs)}
    
    var toAstronomicalUnits: Measurement<UnitLength> {
        let mySelf = self as! Measurement<UnitLength>; return mySelf.converted(to: .astronomicalUnits)}
    
    var toParsecs: Measurement<UnitLength> {
        let mySelf = self as! Measurement<UnitLength>; return mySelf.converted(to: .parsecs)}
    
}

public extension Measurement where UnitType: UnitAngle {
    
    var toDegrees: Measurement<UnitAngle> {
        let mySelf = self as! Measurement<UnitAngle>; return mySelf.converted(to: .degrees)}
    
    var toArcMinutes: Measurement<UnitAngle> {
        let mySelf = self as! Measurement<UnitAngle>; return mySelf.converted(to: .arcMinutes)}
    
    var toArcSeconds: Measurement<UnitAngle> {
        let mySelf = self as! Measurement<UnitAngle>; return mySelf.converted(to: .arcSeconds)}
    
    var toRadians: Measurement<UnitAngle> {
        let mySelf = self as! Measurement<UnitAngle>; return mySelf.converted(to: .radians)}
    
    var toGradians: Measurement<UnitAngle> {
        let mySelf = self as! Measurement<UnitAngle>; return mySelf.converted(to: .gradians)}
    
    var toRevolutions: Measurement<UnitAngle> {
        let mySelf = self as! Measurement<UnitAngle>; return mySelf.converted(to: .revolutions)}
    
}

public extension Measurement where UnitType: UnitArea {
    
    var toSquareMegameters: Measurement<UnitArea> {
        let mySelf = self as! Measurement<UnitArea>; return mySelf.converted(to: .squareMegameters)}
    
    var toSquareKilometers: Measurement<UnitArea> {
        let mySelf = self as! Measurement<UnitArea>; return mySelf.converted(to: .squareKilometers)}
    
    var toSquareMeters: Measurement<UnitArea> {
        let mySelf = self as! Measurement<UnitArea>; return mySelf.converted(to: .squareMeters)}
    
    var toSquareCentimeters: Measurement<UnitArea> {
        let mySelf = self as! Measurement<UnitArea>; return mySelf.converted(to: .squareCentimeters)}
    
    var toSquareMillimeters: Measurement<UnitArea> {
        let mySelf = self as! Measurement<UnitArea>; return mySelf.converted(to: .squareMillimeters)}
    
    var toSquareMicrometers: Measurement<UnitArea> {
        let mySelf = self as! Measurement<UnitArea>; return mySelf.converted(to: .squareMicrometers)}
    
    var toSquareNanometers: Measurement<UnitArea> {
        let mySelf = self as! Measurement<UnitArea>; return mySelf.converted(to: .squareNanometers)}
    
    var toSquareInches: Measurement<UnitArea> {
        let mySelf = self as! Measurement<UnitArea>; return mySelf.converted(to: .squareInches)}
    
    var toSquareFeet: Measurement<UnitArea> {
        let mySelf = self as! Measurement<UnitArea>; return mySelf.converted(to: .squareFeet)}
    
    var toSquareYards: Measurement<UnitArea> {
        let mySelf = self as! Measurement<UnitArea>; return mySelf.converted(to: .squareYards)}
    
    var toSquareMiles: Measurement<UnitArea> {
        let mySelf = self as! Measurement<UnitArea>; return mySelf.converted(to: .squareMiles)}
    
    var toAcres: Measurement<UnitArea> {
        let mySelf = self as! Measurement<UnitArea>; return mySelf.converted(to: .acres)}
    
    var toAres: Measurement<UnitArea> {
        let mySelf = self as! Measurement<UnitArea>; return mySelf.converted(to: .ares)}
    
    var toHectares: Measurement<UnitArea> {
        let mySelf = self as! Measurement<UnitArea>; return mySelf.converted(to: .hectares)}
    
}

public extension Measurement where UnitType: UnitPressure {
    
    var toNewtonsPerMetersSquared: Measurement<UnitPressure> {
        let mySelf = self as! Measurement<UnitPressure>; return mySelf.converted(to: .newtonsPerMetersSquared)}
    
    var toGigapascals: Measurement<UnitPressure> {
        let mySelf = self as! Measurement<UnitPressure>; return mySelf.converted(to: .gigapascals)}
    
    var toMegapascals: Measurement<UnitPressure> {
        let mySelf = self as! Measurement<UnitPressure>; return mySelf.converted(to: .megapascals)}
    
    var toKilopascals: Measurement<UnitPressure> {
        let mySelf = self as! Measurement<UnitPressure>; return mySelf.converted(to: .kilopascals)}
    
    var toHectopascals: Measurement<UnitPressure> {
        let mySelf = self as! Measurement<UnitPressure>; return mySelf.converted(to: .hectopascals)}
    
    var toInchesOfMercury: Measurement<UnitPressure> {
        let mySelf = self as! Measurement<UnitPressure>; return mySelf.converted(to: .inchesOfMercury)}
    
    var toBars: Measurement<UnitPressure> {
        let mySelf = self as! Measurement<UnitPressure>; return mySelf.converted(to: .bars)}
    
    var toMillibars: Measurement<UnitPressure> {
        let mySelf = self as! Measurement<UnitPressure>; return mySelf.converted(to: .millibars)}
    
    var toMillimetersOfMercury: Measurement<UnitPressure> {
        let mySelf = self as! Measurement<UnitPressure>; return mySelf.converted(to: .millimetersOfMercury)}
    
    var toPoundsForcePerSquareInch: Measurement<UnitPressure> {
        let mySelf = self as! Measurement<UnitPressure>; return mySelf.converted(to: .poundsForcePerSquareInch)}
    
}

public extension Measurement where UnitType: UnitVolume {
    
    var toMegaliters: Measurement<UnitVolume> {
        let mySelf = self as! Measurement<UnitVolume>; return mySelf.converted(to: .megaliters)}
    
    var toKiloliters: Measurement<UnitVolume> {
        let mySelf = self as! Measurement<UnitVolume>; return mySelf.converted(to: .kiloliters)}
    
    var toLiters: Measurement<UnitVolume> {
        let mySelf = self as! Measurement<UnitVolume>; return mySelf.converted(to: .liters)}
    
    var toDeciliters: Measurement<UnitVolume> {
        let mySelf = self as! Measurement<UnitVolume>; return mySelf.converted(to: .deciliters)}
    
    var toCentiliters: Measurement<UnitVolume> {
        let mySelf = self as! Measurement<UnitVolume>; return mySelf.converted(to: .centiliters)}
    
    var toMilliliters: Measurement<UnitVolume> {
        let mySelf = self as! Measurement<UnitVolume>; return mySelf.converted(to: .milliliters)}
    
    var toCubicKilometers: Measurement<UnitVolume> {
        let mySelf = self as! Measurement<UnitVolume>; return mySelf.converted(to: .cubicKilometers)}
    
    var toCubicMeters: Measurement<UnitVolume> {
        let mySelf = self as! Measurement<UnitVolume>; return mySelf.converted(to: .cubicMeters)}
    
    var toCubicDecimeters: Measurement<UnitVolume> {
        let mySelf = self as! Measurement<UnitVolume>; return mySelf.converted(to: .cubicDecimeters)}
    
    var toCubicCentimeters: Measurement<UnitVolume> {
        let mySelf = self as! Measurement<UnitVolume>; return mySelf.converted(to: .cubicCentimeters)}
    
    var toCubicMillimeters: Measurement<UnitVolume> {
        let mySelf = self as! Measurement<UnitVolume>; return mySelf.converted(to: .cubicMillimeters)}
    
    var toCubicInches: Measurement<UnitVolume> {
        let mySelf = self as! Measurement<UnitVolume>; return mySelf.converted(to: .cubicInches)}
    
    var toCubicFeet: Measurement<UnitVolume> {
        let mySelf = self as! Measurement<UnitVolume>; return mySelf.converted(to: .cubicFeet)}
    
    var toCubicYards: Measurement<UnitVolume> {
        let mySelf = self as! Measurement<UnitVolume>; return mySelf.converted(to: .cubicYards)}
    
    var toCubicMiles: Measurement<UnitVolume> {
        let mySelf = self as! Measurement<UnitVolume>; return mySelf.converted(to: .cubicMiles)}
    
    var toAcreFeet: Measurement<UnitVolume> {
        let mySelf = self as! Measurement<UnitVolume>; return mySelf.converted(to: .acreFeet)}
    
    var toBushels: Measurement<UnitVolume> {
        let mySelf = self as! Measurement<UnitVolume>; return mySelf.converted(to: .bushels)}
    
    var toTeaspoons: Measurement<UnitVolume> {
        let mySelf = self as! Measurement<UnitVolume>; return mySelf.converted(to: .teaspoons)}
    
    var toTablespoons: Measurement<UnitVolume> {
        let mySelf = self as! Measurement<UnitVolume>; return mySelf.converted(to: .tablespoons)}
    
    var toFluidOunces: Measurement<UnitVolume> {
        let mySelf = self as! Measurement<UnitVolume>; return mySelf.converted(to: .fluidOunces)}
    
    var toCups: Measurement<UnitVolume> {
        let mySelf = self as! Measurement<UnitVolume>; return mySelf.converted(to: .cups)}
    
    var toPints: Measurement<UnitVolume> {
        let mySelf = self as! Measurement<UnitVolume>; return mySelf.converted(to: .pints)}
    
    var toQuarts: Measurement<UnitVolume> {
        let mySelf = self as! Measurement<UnitVolume>; return mySelf.converted(to: .quarts)}
    
    var toGallons: Measurement<UnitVolume> {
        let mySelf = self as! Measurement<UnitVolume>; return mySelf.converted(to: .gallons)}
    
    var toImperialTeaspoons: Measurement<UnitVolume> {
        let mySelf = self as! Measurement<UnitVolume>; return mySelf.converted(to: .imperialTeaspoons)}
    
    var toImperialTablespoons: Measurement<UnitVolume> {
        let mySelf = self as! Measurement<UnitVolume>; return mySelf.converted(to: .imperialTablespoons)}
    
    var toImperialFluidOunces: Measurement<UnitVolume> {
        let mySelf = self as! Measurement<UnitVolume>; return mySelf.converted(to: .imperialFluidOunces)}
    
    var toImperialPints: Measurement<UnitVolume> {
        let mySelf = self as! Measurement<UnitVolume>; return mySelf.converted(to: .imperialPints)}
    
    var toImperialQuarts: Measurement<UnitVolume> {
        let mySelf = self as! Measurement<UnitVolume>; return mySelf.converted(to: .imperialQuarts)}
    
    var toImperialGallons: Measurement<UnitVolume> {
        let mySelf = self as! Measurement<UnitVolume>; return mySelf.converted(to: .imperialGallons)}
    
    var toMetricCups: Measurement<UnitVolume> {
        let mySelf = self as! Measurement<UnitVolume>; return mySelf.converted(to: .metricCups)}
}

public extension Measurement where UnitType: UnitDispersion {
    
    var toPartsPerMillion: Measurement<UnitDispersion> {
        let mySelf = self as! Measurement<UnitDispersion>; return mySelf.converted(to: .partsPerMillion)}
    
}

public extension Measurement where UnitType: UnitConcentrationMass {
    
    var toGramsPerLiter: Measurement<UnitConcentrationMass> {
        let mySelf = self as! Measurement<UnitConcentrationMass>; return mySelf.converted(to: .gramsPerLiter)}
    
    var toMilligramsPerDeciliter: Measurement<UnitConcentrationMass> {
        let mySelf = self as! Measurement<UnitConcentrationMass>; return mySelf.converted(to: .milligramsPerDeciliter)}
}

public extension Measurement where UnitType: UnitMass {
    
    var toKilograms: Measurement<UnitMass> {
        let mySelf = self as! Measurement<UnitMass>; return mySelf.converted(to: .kilograms)}
    
    var toGrams: Measurement<UnitMass> {
        let mySelf = self as! Measurement<UnitMass>; return mySelf.converted(to: .grams)}
    
    var toDecigrams: Measurement<UnitMass> {
        let mySelf = self as! Measurement<UnitMass>; return mySelf.converted(to: .decigrams)}
    
    var toCentigrams: Measurement<UnitMass> {
        let mySelf = self as! Measurement<UnitMass>; return mySelf.converted(to: .centigrams)}
    
    var toMilligrams: Measurement<UnitMass> {
        let mySelf = self as! Measurement<UnitMass>; return mySelf.converted(to: .milligrams)}
    
    var toMicrograms: Measurement<UnitMass> {
        let mySelf = self as! Measurement<UnitMass>; return mySelf.converted(to: .micrograms)}
    
    var toNanograms: Measurement<UnitMass> {
        let mySelf = self as! Measurement<UnitMass>; return mySelf.converted(to: .nanograms)}
    
    var toPicograms: Measurement<UnitMass> {
        let mySelf = self as! Measurement<UnitMass>; return mySelf.converted(to: .picograms)}
    
    var toOunces: Measurement<UnitMass> {
        let mySelf = self as! Measurement<UnitMass>; return mySelf.converted(to: .ounces)}
    
    var toPounds: Measurement<UnitMass> {
        let mySelf = self as! Measurement<UnitMass>; return mySelf.converted(to: .pounds)}
    
    var toStones: Measurement<UnitMass> {
        let mySelf = self as! Measurement<UnitMass>; return mySelf.converted(to: .stones)}
    
    var toMetricTons: Measurement<UnitMass> {
        let mySelf = self as! Measurement<UnitMass>; return mySelf.converted(to: .metricTons)}
    
    var toShortTons: Measurement<UnitMass> {
        let mySelf = self as! Measurement<UnitMass>; return mySelf.converted(to: .shortTons)}
    
    var toCarats: Measurement<UnitMass> {
        let mySelf = self as! Measurement<UnitMass>; return mySelf.converted(to: .carats)}
    
    var toOuncesTroy: Measurement<UnitMass> {
        let mySelf = self as! Measurement<UnitMass>; return mySelf.converted(to: .ouncesTroy)}
    
    var toSlugs: Measurement<UnitMass> {
        let mySelf = self as! Measurement<UnitMass>; return mySelf.converted(to: .slugs)}
}

public extension Measurement where UnitType: UnitDuration {
    
    var toSeconds: Measurement<UnitDuration> {
        let mySelf = self as! Measurement<UnitDuration>; return mySelf.converted(to: .seconds)}
    
    var toMinutes: Measurement<UnitDuration> {
        let mySelf = self as! Measurement<UnitDuration>; return mySelf.converted(to: .minutes)}
    
    var toHours: Measurement<UnitDuration> {
        let mySelf = self as! Measurement<UnitDuration>; return mySelf.converted(to: .hours)}
}

public extension Measurement where UnitType: UnitAcceleration {
    
    var toMetersPerSecondSquared: Measurement<UnitAcceleration> {
        let mySelf = self as! Measurement<UnitAcceleration>; return mySelf.converted(to: .metersPerSecondSquared)}
    
    var toGravity: Measurement<UnitAcceleration> {
        let mySelf = self as! Measurement<UnitAcceleration>; return mySelf.converted(to: .gravity)}
}

public extension Measurement where UnitType: UnitSpeed {
    
    var toMetersPerSecond: Measurement<UnitSpeed> {
        let mySelf = self as! Measurement<UnitSpeed>; return mySelf.converted(to: .metersPerSecond)}
    
    var toKilometersPerHour: Measurement<UnitSpeed> {
        let mySelf = self as! Measurement<UnitSpeed>; return mySelf.converted(to: .kilometersPerHour)}
    
    var toMilesPerHour: Measurement<UnitSpeed> {
        let mySelf = self as! Measurement<UnitSpeed>; return mySelf.converted(to: .milesPerHour)}
    
    var toKnots: Measurement<UnitSpeed> {
        let mySelf = self as! Measurement<UnitSpeed>; return mySelf.converted(to: .knots)}
    
}

public extension Measurement where UnitType: UnitIlluminance {
    
    var toLux: Measurement<UnitIlluminance> {
        let mySelf = self as! Measurement<UnitIlluminance>; return mySelf.converted(to: .lux)}
}

public extension Measurement where UnitType: UnitTemperature {
    
    var toKelvin: Measurement<UnitTemperature> {
        let mySelf = self as! Measurement<UnitTemperature>; return mySelf.converted(to: .kelvin)}
    
    var toCelsius: Measurement<UnitTemperature> {
        let mySelf = self as! Measurement<UnitTemperature>; return mySelf.converted(to: .celsius)}
    
    var toFahrenheit: Measurement<UnitTemperature> {
        let mySelf = self as! Measurement<UnitTemperature>; return mySelf.converted(to: .fahrenheit)}
}

public extension Measurement where UnitType: UnitFuelEfficiency {
    
    var toLitersPer100Kilometers: Measurement<UnitFuelEfficiency> {
        let mySelf = self as! Measurement<UnitFuelEfficiency>; return mySelf.converted(to: .litersPer100Kilometers)}
    
    var toMilesPerImperialGallon: Measurement<UnitFuelEfficiency> {
        let mySelf = self as! Measurement<UnitFuelEfficiency>; return mySelf.converted(to: .milesPerImperialGallon)}
    
    var toMilesPerGallon: Measurement<UnitFuelEfficiency> {
        let mySelf = self as! Measurement<UnitFuelEfficiency>; return mySelf.converted(to: .milesPerGallon)}
}

public extension Measurement where UnitType: UnitEnergy {
    
    var toKilojoules: Measurement<UnitEnergy> {
        let mySelf = self as! Measurement<UnitEnergy>; return mySelf.converted(to: .kilojoules)}
    
    var toJoules: Measurement<UnitEnergy> {
        let mySelf = self as! Measurement<UnitEnergy>; return mySelf.converted(to: .joules)}
    
    var toKilocalories: Measurement<UnitEnergy> {
        let mySelf = self as! Measurement<UnitEnergy>; return mySelf.converted(to: .kilocalories)}
    
    var toCalories: Measurement<UnitEnergy> {
        let mySelf = self as! Measurement<UnitEnergy>; return mySelf.converted(to: .calories)}
    
    var toKilowattHours: Measurement<UnitEnergy> {
        let mySelf = self as! Measurement<UnitEnergy>; return mySelf.converted(to: .kilowattHours)}
}

public extension Measurement where UnitType: UnitFrequency {
    
    var toTerahertz: Measurement<UnitFrequency> {
        let mySelf = self as! Measurement<UnitFrequency>; return mySelf.converted(to: .terahertz)}
    
    var toGigahertz: Measurement<UnitFrequency> {
        let mySelf = self as! Measurement<UnitFrequency>; return mySelf.converted(to: .gigahertz)}
    
    var toMegahertz: Measurement<UnitFrequency> {
        let mySelf = self as! Measurement<UnitFrequency>; return mySelf.converted(to: .megahertz)}
    
    var toKilohertz: Measurement<UnitFrequency> {
        let mySelf = self as! Measurement<UnitFrequency>; return mySelf.converted(to: .kilohertz)}
    
    var toHertz: Measurement<UnitFrequency> {
        let mySelf = self as! Measurement<UnitFrequency>; return mySelf.converted(to: .hertz)}
    
    var toMillihertz: Measurement<UnitFrequency> {
        let mySelf = self as! Measurement<UnitFrequency>; return mySelf.converted(to: .millihertz)}
    
    var toMicrohertz: Measurement<UnitFrequency> {
        let mySelf = self as! Measurement<UnitFrequency>; return mySelf.converted(to: .microhertz)}
    
    var toNanohertz: Measurement<UnitFrequency> {
        let mySelf = self as! Measurement<UnitFrequency>; return mySelf.converted(to: .nanohertz)}
}

public extension Measurement where UnitType: UnitElectricCurrent {
    
    var toMegaamperes: Measurement<UnitElectricCurrent> {
        let mySelf = self as! Measurement<UnitElectricCurrent>; return mySelf.converted(to: .megaamperes)}
    
    var toKiloamperes: Measurement<UnitElectricCurrent> {
        let mySelf = self as! Measurement<UnitElectricCurrent>; return mySelf.converted(to: .kiloamperes)}
    
    var toAmperes: Measurement<UnitElectricCurrent> {
        let mySelf = self as! Measurement<UnitElectricCurrent>; return mySelf.converted(to: .amperes)}
    
    var toMilliamperes: Measurement<UnitElectricCurrent> {
        let mySelf = self as! Measurement<UnitElectricCurrent>; return mySelf.converted(to: .milliamperes)}
    
    var toMicroamperes: Measurement<UnitElectricCurrent> {
        let mySelf = self as! Measurement<UnitElectricCurrent>; return mySelf.converted(to: .microamperes)}
}

public extension Measurement where UnitType: UnitElectricResistance {
    
    var toMegaohms: Measurement<UnitElectricResistance> {
        let mySelf = self as! Measurement<UnitElectricResistance>; return mySelf.converted(to: .megaohms)}
    
    var toKiloohms: Measurement<UnitElectricResistance> {
        let mySelf = self as! Measurement<UnitElectricResistance>; return mySelf.converted(to: .kiloohms)}
    
    var toOhms: Measurement<UnitElectricResistance> {
        let mySelf = self as! Measurement<UnitElectricResistance>; return mySelf.converted(to: .ohms)}
    
    var toMilliohms: Measurement<UnitElectricResistance> {
        let mySelf = self as! Measurement<UnitElectricResistance>; return mySelf.converted(to: .milliohms)}
    
    var toMicroohms: Measurement<UnitElectricResistance> {
        let mySelf = self as! Measurement<UnitElectricResistance>; return mySelf.converted(to: .microohms)}
}

public extension Measurement where UnitType: UnitElectricPotentialDifference {
    
    var toMegavolts: Measurement<UnitElectricPotentialDifference> {
        let mySelf = self as! Measurement<UnitElectricPotentialDifference>; return mySelf.converted(to: .megavolts)}
    
    var toKilovolts: Measurement<UnitElectricPotentialDifference> {
        let mySelf = self as! Measurement<UnitElectricPotentialDifference>; return mySelf.converted(to: .kilovolts)}
    
    var toVolts: Measurement<UnitElectricPotentialDifference> {
        let mySelf = self as! Measurement<UnitElectricPotentialDifference>; return mySelf.converted(to: .volts)}
    
    var toMillivolts: Measurement<UnitElectricPotentialDifference> {
        let mySelf = self as! Measurement<UnitElectricPotentialDifference>; return mySelf.converted(to: .millivolts)}
    
    var toMicrovolts: Measurement<UnitElectricPotentialDifference> {
        let mySelf = self as! Measurement<UnitElectricPotentialDifference>; return mySelf.converted(to: .microvolts)}
    
}

public extension Measurement where UnitType: UnitPower {
    
    var toTerawatts: Measurement<UnitPower> {
        let mySelf = self as! Measurement<UnitPower>; return mySelf.converted(to: .terawatts)}
    
    var toGigawatts: Measurement<UnitPower> {
        let mySelf = self as! Measurement<UnitPower>; return mySelf.converted(to: .gigawatts)}
    
    var toMegawatts: Measurement<UnitPower> {
        let mySelf = self as! Measurement<UnitPower>; return mySelf.converted(to: .megawatts)}
    
    var toKilowatts: Measurement<UnitPower> {
        let mySelf = self as! Measurement<UnitPower>; return mySelf.converted(to: .kilowatts)}
    
    var toWatts: Measurement<UnitPower> {
        let mySelf = self as! Measurement<UnitPower>; return mySelf.converted(to: .watts)}
    
    var toMilliwatts: Measurement<UnitPower> {
        let mySelf = self as! Measurement<UnitPower>; return mySelf.converted(to: .milliwatts)}
    
    var toMicrowatts: Measurement<UnitPower> {
        let mySelf = self as! Measurement<UnitPower>; return mySelf.converted(to: .microwatts)}
    
    var toNanowatts: Measurement<UnitPower> {
        let mySelf = self as! Measurement<UnitPower>; return mySelf.converted(to: .nanowatts)}
    
    var toPicowatts: Measurement<UnitPower> {
        let mySelf = self as! Measurement<UnitPower>; return mySelf.converted(to: .picowatts)}
    
    var toFemtowatts: Measurement<UnitPower> {
        let mySelf = self as! Measurement<UnitPower>; return mySelf.converted(to: .femtowatts)}
    
    var toHorsepower: Measurement<UnitPower> {
        let mySelf = self as! Measurement<UnitPower>; return mySelf.converted(to: .horsepower)}
}

public extension Measurement where UnitType: UnitElectricCharge {
    
    var toCoulombs: Measurement<UnitElectricCharge> {
        let mySelf = self as! Measurement<UnitElectricCharge>; return mySelf.converted(to: .coulombs)}
    
    var toMegaampereHours: Measurement<UnitElectricCharge> {
        let mySelf = self as! Measurement<UnitElectricCharge>; return mySelf.converted(to: .megaampereHours)}
    
    var toKiloampereHours: Measurement<UnitElectricCharge> {
        let mySelf = self as! Measurement<UnitElectricCharge>; return mySelf.converted(to: .kiloampereHours)}
    
    var toAmpereHours: Measurement<UnitElectricCharge> {
        let mySelf = self as! Measurement<UnitElectricCharge>; return mySelf.converted(to: .ampereHours)}
    
    var toMilliampereHours: Measurement<UnitElectricCharge> {
        let mySelf = self as! Measurement<UnitElectricCharge>; return mySelf.converted(to: .milliampereHours)}
    
    var toMicroampereHours: Measurement<UnitElectricCharge> {
        let mySelf = self as! Measurement<UnitElectricCharge>; return mySelf.converted(to: .microampereHours)}
    
}

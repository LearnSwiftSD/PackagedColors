# ConVerto
An inline measurement conversion framework

## Purpose
The motivation for this framework was to provide an easy way to convert one type of measurement
into another. Initially this was spurred on by needing converting degrees into radians for use in
rotational transforms. The traditional modus operandi was as folllows:
```swift
// State the degrees you want to convert into radians
let degrees = 180.0

// Convert by multiplying by pi and dividing the product by 180
let radians = (degrees * Double.pi) / 180.0
```

A more cleaner way of doing it was to extend the type you'd like to have the introductory type
be and return the resulting radians in a preferred type.
```swift
extension Double {
    var degreesToRadians: CGFloat { return CGFloat((self * .pi) / 180) }
}

let radians = 180.0.degreesToRadians
```

While that does eleviate this one particular issue it doesn't convert radians back to degrees.
You could make another extension swapping the pi and 180, but then what if you want to
do linear conversions from feet to centimeters or miles to millimeters. You'd end up tracking
down quite a bit of conversion formulas.

Luckily there's Swift framework that already does that for you and quite a bit more than you'd
expect. It's called **Measurements** and it can easily convert your miles into millimeters

```swift
let miles = Measurement(value: 12, unit: UnitLength.miles)

let millimeters = miles.converted(to: .millimeters)

//extract the value as a Double
let mm = millimeters.value
```

This takes all the math out of the equation, but it's not as clean looking as what's provided
by extending the type. Thus prompting the goal for this library. **ConVerto** takes the converting
power of Measurements and wraps it into the types you'd expect to use them with, resulting
in easy to use, one liners.


## Usage

ConVerto uses an entry point through four numerical data types:

* Int
* Double
* Float
* CGFloat

Once you have any of these you can access ConVerto:
```swift

//sample is now a Measurement type with a value of 180
let sample = 180.degrees
```

To convert to another type of measurement follow the statement by a *.to* and auto-complete
will expose the available conversions.
```swift

//sample is now a Measurement type with a value of 3.1415926535...
let sample = 180.degrees.toRadians
```

The value can be extracted in three types by calling one of three properties:

* value
* fltValue
* cgValue

```swift

//Type Double of 3.1415926535...
let sampleOne: Double = 180.degrees.toRadians.value

//Type Float of 3.1415926535...
let sampleTwo: Float = 180.degrees.toRadians.fltValue

//Type CGFloat of 3.1415926535...
let sampleThree: CGFloat = 180.degrees.toRadians.cgValue
```

Lastly you can continue to convert from measurement type to type until your heart's content.
```swift

//Type Double of 3.1415926535...
let sample = 180.degrees
    .toArcMinutes
    .toArcSeconds
    .toGradians
    .toRevolutions
    .toRadians.value
```

The ConVerto framework encapsulates all of the available UnitTypes from the Measurements
framework which can be found at this [website](https://developer.apple.com/documentation/foundation/units_and_measurement)

## Installation

#### CocoaPods

ConVerto requires CocoaPods 1.1.x or higher.

ConVerto is available through [CocoaPods](http://cocoapods.org). To install it, simply add the following line to your Podfile:

```ruby
pod "ConVerto"
```

## License

ConVerto is published under the MIT license. See the LICENSE file for more info.

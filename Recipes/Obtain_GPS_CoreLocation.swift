// 1. import CoreLocation

// 2. add CLLocationManagerDelegate inside class declaration 

// 3. create a variable called locationManager of class CLLocationManager

// 4. setup locationManager.Delegate = self inside viewDidLoad()

// 5. setup locationManager.desiredAccuracy = kCLLocationAccuracyHundredMeters

// 6. setup locationManager.requestWhenInUseAuthorization()

// 7. in Supporting Files/Info.plist, add two properties -- Privacy location usage description and Privacy location when in use

// 8. filling the value for above two properties

// 9. apple only allows api call to https, if your api does not support https, you need add some code in XML file

// 10. Right click on info.plist and view source code, copy paste following coade below the second "We need your location to obtain weather"

//   <key>NSAppTransportSecurity</key>
//       <dict>
//         <key>NSExceptionDomains</key>
//         <dict>
//           <key>openweathermap.org</key>
//           <dict>
//             <key>NSIncludesSubdomains</key>
//             <true/>
//             <key>NSTemporaryExceptionAllowsInsecureHTTPLoads</key>
//             <true/>
//           </dict>
//         </dict>
//       </dict>

// 11. setup locationManager.startUpdatingLocation() in viewDidLoad

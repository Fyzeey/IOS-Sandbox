//Step1: Set up protocol, need to be outside the class
protocol ChangeCityDelegate {
    func userEnteredANewCityName(city: String)
}

//Step2: Inside class, decalre the delegate variable
class ChangeCityViewController: UIViewController {
    
    //Declare the delegate variable here:
    var delegate : ChangeCityDelegate?

//Step3: Go back to the view where you want to conform delegate
class WeatherViewController: UIViewController, CLLocationManagerDelegate, ChangeCityDelegate 

//Step4: We must include the protocol function inside class WeatherViewContorller

func userEnteredANewCityName(city: String) {
    print(city)
}

//Step5: Write the PrepareForSegue Method 
override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    if segue.identifier == "changeCityName" {

        let destionationVC = segue.destination as! ChangeCityViewController

        destionationVC.delegate = self

    }
}

// Step6: This is the IBAction that gets called when the user taps on the "Get Weather" button:
    @IBAction func getWeatherPressed(_ sender: AnyObject) {
        
        
        
        //1 Get the city name the user entered in the text field
        let cityName = changeCityTextField.text!
        
        //2 If we have a delegate set, call the method userEnteredANewCityName
        delegate?.userEnteredANewCityName(city: cityName)
        
        //3 dismiss the Change City View Controller to go back to the WeatherViewController
        self.dismiss(animated: true, completion: nil)
    }

//==============Segueway Setup===============

// Create a second view controller

// Create a button, hold opt button on first view and drag it point to second view controller

// Create new files for second view controller, choose CocaTouchClass under ios, subclass must be UIView controller

// Go to identity inspector of second view controller, change the class to the corresponding file

// Set identifier for segueway, it will be used when trigger a button

// Inside the @IBAction of triggered button add

   performSegue(withIdentifier: <idenfier(in line9)>, sender: self)

//============Pass data from first view to sencond view=================

// In first VC, we need to modify the prepare function, this function will run just before segueway transition

override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    if segue.identifier == "goToSecondScreen" {
    // We force cast the destination(type UIViewController) to be our SecondViewContorller, so destonationVC is able to access 
    // the proeprty in SecondViewContorller
    let destinationVC = segue.destination as! SecondViewController
    // Here the textField.text is one property of first view controller
    destionationVC.textPassedOver = textField.text!
    }
}

// In second VC, we declare a variable which holds the data passed from our first VC

var textPassedOver : String?





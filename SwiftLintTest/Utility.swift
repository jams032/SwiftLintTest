//
//  Utility.swift
//  My RESI Care
//
//  Created by Mac on 9/8/19.
//  Copyright © 2019 Mac. All rights reserved.
//

import UIKit
import SystemConfiguration

var messages :[String:AnyObject]!

enum AppointmentType : String {
  case PRIVATE = "Private"
  case APPOINTED = "Appointed"
}

class Utility {
    
    class func setupButtonBorderCorner(button: UIButton, withColor: UIColor , borderWidth : CGFloat) {
        button.clipsToBounds = true
        button.layer.cornerRadius = button.frame.size.height/2
        button.layer.borderWidth = borderWidth
        button.layer.borderColor = withColor.cgColor
    }
    
    class  func customFont(By size:(Float), style: Font_Style)-> UIFont {
        
        let fontFullName = fontByStyle(FontStyle: style)
        
        let font = UIFont(name: fontFullName, size: CGFloat(size*SF_PAD))!
        
        return  font
    }
    
    class func fontByStyle(FontStyle style:Font_Style)->String{
        var fontStyle = ""
        
        if style != .Regular {
            fontStyle = style.rawValue
            fontStyle = "-" + fontStyle
        }
        
        let fontFullName = Font_Family + fontStyle
        return fontFullName
        
    }
    
    class func hexStringToUIColor (hex:String , alpha: Float) -> UIColor {
        
        var cString:String = hex.trimmingCharacters(in: .whitespacesAndNewlines).uppercased()
        
        if (cString.hasPrefix("#")) {
            cString.remove(at: cString.startIndex)
        }
        
        if ((cString.count) != 6) {
            return UIColor.gray
        }
        
        var rgbValue:UInt32 = 0
        Scanner(string: cString).scanHexInt32(&rgbValue)
        
        return UIColor(
            red: CGFloat((rgbValue & 0xFF0000) >> 16) / 255.0,
            green: CGFloat((rgbValue & 0x00FF00) >> 8) / 255.0,
            blue: CGFloat(rgbValue & 0x0000FF) / 255.0,
            alpha: CGFloat(alpha)
        )
    }
    
    class func getDurationList() -> Array<Int>{

        var durationList = [Int]()
        
        for i in 1..<7 {
            durationList.append(i)
            //durationList.append( i * 5)
        }

        return durationList
    }
    
    
    class func getUUID()->String{
        
        let uuid = UUID().uuidString
        return uuid
    }
    
    class func deviceID() -> String{
        
        guard  let identifier = UIDevice.current.identifierForVendor else{
            return ""
        }
        
        return identifier.uuidString
    }
    
    class func deviceModelVersion()-> String{
        
        //let model = UIDevice.current.model
        
        var systemInfo = utsname()
        uname(&systemInfo)
        
        let machineMirror = Mirror(reflecting: systemInfo.machine)
        
        let identifier = machineMirror.children.reduce("") { identifier, element in
            guard let value = element.value as? Int8, value != 0 else { return identifier }
            return identifier + String(UnicodeScalar(UInt8(value)))
        }
        
        switch identifier {
        case "iPod5,1":                                 return "iPod Touch 5"
        case "iPod7,1":                                 return "iPod Touch 6"
        case "iPhone3,1", "iPhone3,2", "iPhone3,3":     return "iPhone 4"
        case "iPhone4,1":                               return "iPhone 4s"
        case "iPhone5,1", "iPhone5,2":                  return "iPhone 5"
        case "iPhone5,3", "iPhone5,4":                  return "iPhone 5c"
        case "iPhone6,1", "iPhone6,2":                  return "iPhone 5s"
        case "iPhone7,2":                               return "iPhone 6"
        case "iPhone7,1":                               return "iPhone 6 Plus"
        case "iPhone8,1":                               return "iPhone 6s"
        case "iPhone8,2":                               return "iPhone 6s Plus"
        case "iPhone9,1", "iPhone9,3":                  return "iPhone 7"
        case "iPhone9,2", "iPhone9,4":                  return "iPhone 7 Plus"
        case "iPhone8,4":                               return "iPhone SE"
        case "iPad2,1", "iPad2,2", "iPad2,3", "iPad2,4":return "iPad 2"
        case "iPad3,1", "iPad3,2", "iPad3,3":           return "iPad 3"
        case "iPad3,4", "iPad3,5", "iPad3,6":           return "iPad 4"
        case "iPad4,1", "iPad4,2", "iPad4,3":           return "iPad Air"
        case "iPad5,3", "iPad5,4":                      return "iPad Air 2"
        case "iPad2,5", "iPad2,6", "iPad2,7":           return "iPad Mini"
        case "iPad4,4", "iPad4,5", "iPad4,6":           return "iPad Mini 2"
        case "iPad4,7", "iPad4,8", "iPad4,9":           return "iPad Mini 3"
        case "iPad5,1", "iPad5,2":                      return "iPad Mini 4"
        case "iPad6,3", "iPad6,4", "iPad6,7", "iPad6,8":return "iPad Pro"
        case "AppleTV5,3":                              return "Apple TV"
        case "i386", "x86_64":                          return "Simulator"
        default:                                        return identifier
        }
        
        
    }
    
    
    class  func getTimeStamp()->Int64{

//        let dateNow = NSDate.init()
//
//        let string17 = "2019-01-01 0:0:0.000"
//        let date17 = string17.convertToDate("yyyy-MM-dd HH:mm:ss.SSS", utc: true)
//        print(dateNow)
//        var inteval : Double =   dateNow.timeIntervalSince(date17!)
//
//        inteval = inteval*1000;
//        inteval = inteval*10000;
//
//        let time = round(inteval)
        
        return Int64(0)
    }
    
    class  func getDateFromTimeStamp(timeStamp: Int64)->Date{

//        let string17 = "2019-01-01 0:0:0.000"
//        let date17 = string17.convertToDate("yyyy-MM-dd HH:mm:ss.SSS", utc: true)
//        let date18 = date17?.addingTimeInterval(Double(timeStamp) / (10000.0*1000.0))

        return Date.init()
       }
    
    class func isNumber(NumberString numberString:String) -> Bool {
        let characters = CharacterSet.decimalDigits.inverted
        return !numberString.isEmpty && numberString.rangeOfCharacter(from: characters) == nil
    }
    
    class func isValidEmail(Email email:String) -> Bool {
        
        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,}"
        
        let emailTest = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
        return emailTest.evaluate(with: email)
    }
    
    class func logoutToLoginView(){
        
//        let account = Utility.getAccount()
//
//        if account.AccountId != nil {
//
//           // account.isDel = 1
//
//            let dm = DataModel()
//            let  updatedUser =  dm.modify(account, entity: "Account", predicate: nil)
//
//            if updatedUser {
//                MYRESIUserDefaults.setUserModel(userModel: nil)
//            }
//        }
//
//        MYRESIUserDefaults.setLastSyncTime(timeStamp: 0)
//        MYRESIUserDefaults.setDataSyncDateInUD(value: 0)
//        MYRESIUserDefaults.setUserIsLoggedIn(Valuea: false)
//        self.ResetUserSettings()

    }
    
    class func ResetUserSettings() {
        
//        let allSettings  = Utility.getSettings()
//        let dm = DataModel()
//
//        if allSettings.count > 0 {
//            let currentSettings = allSettings.first!
//            if currentSettings.timeOutEnabled == 1 {
//
//                currentSettings.timeOutEnabled = 0
//                currentSettings.PIN = ""
//                currentSettings.time = 0
//
//                let predicate = NSPredicate(format: "iD = %@", currentSettings.Id)
//                if !dm.modify(currentSettings, entity: "Settings", predicate: predicate) {
//                    print ("Not saved")
//                } else {
//                    print ("Saved")
//                    MYRESIUserDefaults.setlockTimerValueFromUD(Valuea: 0)
//                }
//            }
//        }
        
        
    }
    
    class func isLoggedIn()->Bool{
        
//        if MYRESIUserDefaults.getUserModel() == nil {
//            return false
//        }
        
        return true
    }
    
//    class func getAllUser()->[EAccount]{
//
////        let dm = DataModel()
////        let userList = dm.getData(By: "Account", managed: false, sorts: nil, predicate: nil) as! [EAccount]
//        return userList
//    }
    
//    class func getAccount () -> EAccount {
//
//        let dm = DataModel()
//        let predicate = NSPredicate(format: "accountId == %@ and isDel =%d", MYRESIUserDefaults.getUserModel()!.AccountId,0)
//        let userList = dm.getData(By: "Account", managed: false, sorts: nil, predicate: predicate) as! [EAccount]
//
//        if userList.count == 0 {
//            return EAccount()
//        }
//
//        return userList.first!
//    }
//
//    class func getCurentUserName () -> String {
//
//        let dm = DataModel()
//        //Predicate might needs deponds on user type. Not the first user always
//        let predicate = NSPredicate(format: "type == %@ and isDel = 0", FACILITY_ADMIN_TEXT)
//        let userList = dm.getData(By: "Account", managed: false, sorts: nil, predicate: predicate) as! [EAccount]
//
//        if userList.count == 0 {
//            return ""
//        }
//
//        return "\(userList.first?.FirstName! ?? "") \(userList.first?.LastName! ?? "")"
//    }
    class func getRangedTextInTextField (TF : String, Limit : Int) -> String {
        let validText = String(TF.prefix(Limit))
        return validText
    }
    
//   class func fetchFaciltyList () -> EFacility {
//
//    let dm = DataModel()
//    let facilityList = dm.getData(By: "Facility", managed: false, sorts: nil, predicate: nil) as! [EFacility]
//
//    return facilityList.first!
//    }
    
    class func isProfileCompleted()->Bool{
        
        return true
    }
    
//    class func getSettings() -> [ESettings] {
//
//        let dm = DataModel()
//        let allSettings  = dm.getData(By: "Settings", managed: false, sorts: nil, predicate: nil) as! [ESettings]
//        return allSettings
//
//    }
    
    class func hideKeyboardInputAssitant(_ textField: UITextField){
        if #available(iOS 9.0, *) {
            let assistant = textField.inputAssistantItem
            assistant.leadingBarButtonGroups = []
            assistant.trailingBarButtonGroups = []
        } else {
            // Fallback on earlier versions
        }
        
    }
    
    class func hideKeyboardInputAssitantTextView(_ textField: UITextView){
        if #available(iOS 9.0, *) {
            let assistant = textField.inputAssistantItem
            assistant.leadingBarButtonGroups = []
            assistant.trailingBarButtonGroups = []
        } else {
            // Fallback on earlier versions
        }
        
    }
    
    class func StringFromDate(FromString dateValue:Date!, formate : String)->String!{
        
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = formate
        return dateFormatter.string(from: dateValue)
    }
    
//    class func actualDate(FromString dateString:String!)->Date!{
//
//        guard let string = dateString else{
//            return nil
//        }
//
//        if string.count == 0{
//            return nil
//        }
//
//        if string.contains("T") &&  string.contains("Z") {
//
//            var format = "yyyy-MM-dd'T'HH:mm:ss"
//
//            let dateLength = string.count-1
//            let formatLength = format.count-2
//
//            if dateLength > formatLength{
//
//                let diff = dateLength-formatLength
//
//                format = format.appending(".")
//
//                for _ in 0...(diff-1){
//                    format = format.appending("S")
//
//                }
//            }
//
//            format = format.appending("Z")
//
//            let date = string.convertToDate(format, utc: false)
//            return date
//        }
//
//        if let date = string.convertToDate(DATE_ZONE_2, utc: false){
//            return date
//        }
//        else if let date = string.convertToDate(DATE_FORMAT_2, utc: true){
//            return date
//        }
//        else if let date = string.convertToDate(DATE_ZONE_3, utc: false){
//            return date
//        }
//        else if let date = string.convertToDate(DATE_ZONE, utc: false){
//            return date
//        }
//        else if let date = string.convertToDate(DATE_FORMAT_1, utc: true){
//            return date
//        }
//        else if let date = string.convertToDate(DATE_FORMAT_14, utc: false){
//            return date
//        }
//        else if let date = string.convertToDate(DATE_FORMAT_15, utc: false){
//            return date
//        }
//        else if let date = string.convertToDate(DATE_FORMAT_13, utc: true){
//            return date
//        }
//        else if let date = string.convertToDate(DATE_FORMAT_12, utc: false){
//            return date
//        }
//        else if let date = string.convertToDate(DATE_ZONE_4, utc: false){
//            return date
//        }
//        else if let date = string.convertToDate(DATE_ZONE_5, utc: false){
//            return date
//        }
//        else if let date = string.convertToDate(DATE_FORMAT_16, utc: false){
//            return date
//        }
//        else if let date = string.convertToDate(DATE_FORMAT_17, utc: false){
//            return date
//        }
//        else if let date = string.convertToDate(DATE_FORMAT_19, utc: true){
//            return date
//        }
//
//        return nil
//    }
    

    
    //MARK: - File private methods

    
    
    fileprivate class func checkConnection() -> Bool {
        
        var zeroAddress = sockaddr_in()
        zeroAddress.sin_len = UInt8(MemoryLayout<sockaddr_in>.size)
        zeroAddress.sin_family = sa_family_t(AF_INET)
        
        guard let defaultRouteReachability = withUnsafePointer(to: &zeroAddress, {
            $0.withMemoryRebound(to: sockaddr.self, capacity: 1) {
                SCNetworkReachabilityCreateWithAddress(nil, $0)
            }
        }) else {
            return false
        }
        
        var flags: SCNetworkReachabilityFlags = []
        if !SCNetworkReachabilityGetFlags(defaultRouteReachability, &flags) {
            return false
        }
        
        let isReachable = flags.contains(.reachable)
        let needsConnection = flags.contains(.connectionRequired)
        
        return (isReachable && !needsConnection)
        
    }
    
    class  func isConnectedToNetwork(withAlert isShowAlert:Bool) -> Bool {
        
        if !checkConnection(){
            
            if isShowAlert {
                showAlertFromFile(MessageKey: .NoInternet, ShowTitle: true)
            }
            
            return false
        }
        
        return true
        
    }
    
    // string or string array
    class func showErrorAlert(errors: AnyObject){
        
        
        var error : String = ""
        
        if errors is String {
            error = errors as! String
        }
        else if errors is [String] {
            error = errors.componentsJoined(by: "\n")
        }
        else if errors is [String: String] {
            
            var errorList = [String]()
            
            let errorDic = errors as! [String: String]
            
            for (_ ,v) in errorDic{
                errorList.append(v )
            }
            
            error = errorList.joined(separator: "\n")
            
        }
        else if errors is [ [String: AnyObject] ] {
            
            var errorList = [String]()
            
            let errorsDicArr = errors as! [ [String: AnyObject] ]
            
            if let errorDic = errorsDicArr.first{
                
                for (_ ,v) in errorDic{
                    
                    if  v is String{
                        //                        error.append(v as! String)
                        errorList.append(v as! String)
                        
                    }
                    else  if  v is [String]{
                        let arr = v as! [String]
                        //                        error.append(arr.first as! String)
                        errorList.append(arr.first!)
                        
                    }
                    
                }
            }
            
            error = errorList.joined(separator: "\n")
            
        }
        else {
            error = "Multiple errors."
        }
        
        showAlert(message: error, title: "Error")
    }
    
    class func getMessageFromFile(MessageKey key: MessageKey)->String!{
        
        guard let messageDic = getMessageDicFromFile(MessageKey: key) else{
            return nil
        }
        
        if let desc = messageDic["Description"]{
            return desc
        }
        
        return nil
    }
    
    class func getMessageDicFromFile(MessageKey key: MessageKey)->[String:String]!{
        
        if let _ = messages{
            
        }
        else{
            messages = getJSONFromFile(FileName: "Messages") as! [String : AnyObject]?
        }
        
        if let messageDic = messages[key.rawValue]{
            return messageDic as! [String : String]
        }
        
        return nil
        
    }
    
    class func getJSONFromFile(FileName name:String)->AnyObject!{
        
        if let path = Bundle.main.path(forResource: name, ofType: "json") {
            do {
                let data = try Data(contentsOf: URL(fileURLWithPath: path), options: .alwaysMapped)
                
                let jsonObject = try JSONSerialization.jsonObject(with: data, options: .mutableContainers) as AnyObject
                
                return jsonObject
                
            } catch let error {
                print(error.localizedDescription)
            }
        } else {
            print("Invalid filename/path.")
        }
        
        return nil
    }
    
    class func showAlert(message: String, title: String){
        
//        let app = AppDelegate.shared()
//        let alert = UIAlertController(title: title, message: message, preferredStyle: UIAlertController.Style.alert)
//        alert.addAction(UIAlertAction(title: "Ok", style: UIAlertAction.Style.default, handler: nil))
//        app.navigation?.topViewController?.present(alert, animated: true, completion: nil)
    }
    
    class func showAlertFromFile(MessageKey key: MessageKey, ShowTitle showTitle: Bool){
        
        guard let messageDic = getMessageDicFromFile(MessageKey: key) else{
            return
        }
        
        guard let desc = messageDic["Description"] else{
            return
        }
        
        var title = ""
        
        if let _title = messageDic["Title"] {
            title = _title
        }
        
        
//        let app = AppDelegate.shared()
//        let alert = UIAlertController(title: title, message: desc, preferredStyle: UIAlertController.Style.alert)
//        alert.addAction(UIAlertAction(title: "Ok", style: UIAlertAction.Style.default, handler: nil))
//        app.navigation?.topViewController?.present(alert, animated: true, completion: nil)
        
    }
    
    class func writeImageToFileWithImageName(imageName: String)->URL {
        
        let dirPathNoScheme = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true)[0] as String
        let dirPath = "file://\(dirPathNoScheme)"
        let pathArray = [dirPath, imageName]
        let path = URL(string: pathArray.joined(separator: "/"))

        guard let filePath = path else {
            return URL(string: "choose how to handle error here")!
        }
        return filePath
    }

    class func loadImageFromDocumentDirectory(nameOfImage : String) -> UIImage {
       // return UIImage.init(named: "place-holder")!

        if nameOfImage.contains("Resident") || nameOfImage.contains("Photos") {
            return UIImage.init(named: "place-holder")!
        }

        let nsDocumentDirectory = FileManager.SearchPathDirectory.documentDirectory
        let nsUserDomainMask = FileManager.SearchPathDomainMask.userDomainMask
        let paths = NSSearchPathForDirectoriesInDomains(nsDocumentDirectory, nsUserDomainMask, true)
        if let dirPath = paths.first{
            let imageURL = URL(fileURLWithPath: dirPath).appendingPathComponent(nameOfImage)
            
           // if UIImage(contentsOfFile: imageURL.path) != nil {
                let image = UIImage(contentsOfFile: imageURL.path)
                if image != nil {
                    return image!
                }
          //  }
        }
        return UIImage.init(named: "place-holder")!
    }
    
    class func getImageLastPath (url: String) -> String {

        return URL.init(string: url)!.lastPathComponent
    }
    class func setPlaceHolderTextStyle(textFeild: UITextField, withPlaceholderTxt str: String) {
        
        var fontSize = 18.0*SF_PAD
        
        if (!IS_DEVICE_IPHONE) {
            fontSize = 20.0
        }
        
        textFeild.attributedPlaceholder = NSMutableAttributedString(string: str, attributes: [NSAttributedString.Key.foregroundColor : UIColor.white, NSAttributedString.Key.font : UIFont.init(name: "Dosis-Bold", size: CGFloat(fontSize)) as Any])
        
    }
    
   class func convertToDate(_ format:String, utc:Bool)->Date!{
//
//           var date : Date?
//
//           let dateFormatter = DateFormatter()
//
//           let local = Locale.init(identifier:"en_US_POSIX")
//           dateFormatter.locale = local
//           dateFormatter.dateFormat = format
//
//           if utc {
//               let zone = NSTimeZone(name: "UTC")! as TimeZone
//               dateFormatter.timeZone = zone
//           }
//
//           date = dateFormatter.date(from: self)
           
    return Date.init()
           
       }

}

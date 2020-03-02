

import Foundation
import UIKit


let ProductionMode =  true
//let AppVersion = "0.2.4"

let TempEmail =  "" // "test1@yopmail.com"
let TempPass =  ""//  "Faq2121#$"

let LoginStoryboard =  "Main"
let LoginStoryboardiPad =  "MainiPad"
let SplashVC = "SplashViewController"
let LoginVC = "LoginViewController"
let ForgotPasswordVC = "ForgotPasswordViewController"
let SettingVC = "SettingsViewController"

let DashboardStoryboard = "Dashboard"
let DashboardVC = "DashboardViewController"


let FANurseStoryboard = "FacilityAdminAndNurseStoryboard"
let FANurseStoryboardiPad = "FacilityAdminAndNurseStoryboardiPad"
let FAHomeVC = "FacilityAdminHomeViewController"
let FAWardVC = "WardListViewController"
let FacilityAddEidtVC = "FacilityAddEidtViewController"
let FacilityDetailsVC = "FacilityDeatilsViewController"

let RegisterTermsAndConditionVC = "RegistrationTermConditionsViewController"
let Register1VC = "Registration1ViewController"
let Register2VC = "Registration2ViewController"
let Register3VC = "Registration3ViewController"
let RegisterPreviewVC = "RegistrationPreviewViewController"




let ResidentDetailsVC = "ResidentDetailsViewController"
let ResidentListVC = "ResidentListViewController"
let AddResident1VC = "AddResident1ViewController"
let AddResident2VC = "AddResident2ViewController"
let AddResident3VC = "AddResident3ViewController"
let AddResident4VC = "AddResident4ViewController"

let ForgotPass1VC = "ForgotPassword1ViewController"
let ForgotPass2VC = "ForgotPassword2ViewController"



let NurseListVC = "NurseListViewController"
let AddEditNurseVC = "AddEditNurseViewController"



let DEVICE_WIDTH :Int =  Int(UIScreen.main.bounds.size.width)
let DEVICE_HEIGHT:Int =  Int(UIScreen.main.bounds.size.height)

let SCREEN_MAX_LENGTH = max(DEVICE_WIDTH, DEVICE_HEIGHT)
let SCREEN_MIN_LENGTH = min(DEVICE_WIDTH, DEVICE_HEIGHT)

let SF: Float = Float(SCREEN_MIN_LENGTH)/Float(320.0)

//let SF_PAD: Float = IS_DEVICE_IPHONE ? Float(DEVICE_WIDTH)/Float(375.0) : Float(DEVICE_WIDTH)/Float(400.0)
//let SF_PAD: Float = IS_DEVICE_IPHONE ? Float(DEVICE_WIDTH)/Float(375.0) : Float(DEVICE_WIDTH)/Float(575.0)

//let SF_CONS: Float = IS_DEVICE_IPHONE ? Float(DEVICE_WIDTH)/Float(375.0) : Float(DEVICE_HEIGHT)/Float(667)

let SF_PAD: Float = IS_DEVICE_IPHONE ? Float(SCREEN_MIN_LENGTH)/Float(375.0) : Float(SCREEN_MAX_LENGTH)/Float(667.0)
let SF_CONS: Float = IS_DEVICE_IPHONE ? Float(SCREEN_MIN_LENGTH)/Float(375.0) : Float(SCREEN_MIN_LENGTH)/Float(500.0)

let IS_DEVICE_IPHONE = (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiom.phone)
let IS_DEVICE_IOS10 : Bool = Float(UIDevice.current.systemVersion)! >= Float(10.0)
let IS_DEVICE_IOS9 : Bool = Float(UIDevice.current.systemVersion)! >= Float(9.0)
let IS_DEVICE_LESS_IOS9 : Bool = Float(UIDevice.current.systemVersion)! < Float(9.0)
let IS_DEVICE_IOS12 : Bool = (UIDevice.current.systemVersion as NSString).floatValue >= 12.0

let IS_IPHONE_5_OR_LESS  = UIDevice.current.userInterfaceIdiom == .phone && SCREEN_MAX_LENGTH <= 568

let IS_IPHONE_X  = IS_DEVICE_IPHONE && DEVICE_WIDTH == 812
let IS_IPHONE_XS  = (IS_DEVICE_IPHONE && DEVICE_WIDTH == 812)
let IS_IPHONE_XR  = (IS_DEVICE_IPHONE && DEVICE_WIDTH == 896)
let IS_IPHONE_X_MAX  = (IS_DEVICE_IPHONE && DEVICE_WIDTH == 896)

let COMMON_COLOR = ""
let CELLMG_BG_COLOR = "#e1e1e1"
let COMMON_COLOR_BORDER = "054d8e"
let BUTTON_SELECTED_COLOR = "105391"

let TextFieldFont = Utility.customFont(By: 16, style: .Regular)
let TitleFont = Utility.customFont(By: 16, style: .Semibold)

let BORDER_WIDTH = CGFloat(4 * SF_PAD)
let BORDER_CGCOLOR = Utility.hexStringToUIColor(hex: COMMON_COLOR, alpha: 1.0).cgColor
let TEXT_COLOR_BR = Utility.hexStringToUIColor(hex: COMMON_COLOR, alpha: 1.0)

let FNAME_LIMIT = 50
let LNAME_LIMIT = 50
let NAME_LIMIT = 100
let ADDRESS_LIMIT = 200
let PHONE_LIMIT = 19
let FAX_LIMIT = 20


let MaximumDevicesGroupSessionTeacher = 6
let API_Timeout = 60
let DASHBOARD_SYNC_TIME = 1.0

let DevicePlatform = "iOS"
let DeviceRegistrar = "Apple"

let DOMAIN_URL = "http://api.resicare.faqdev.com.au/" // "http://192.168.1.127:8080/" //"http://api.resicare.faqdev.com.au/"  // "http://api.resicare.faqdev.com.au/"
let WEB_URL = ""
let LOGIN_URL = "account/login"
let REGISTER_URL = "account/register"
let EMAIL_VERIFY_URL = "account/verify"
let PROFILE_GET_URL = "account/getProfile"
let PROFILE_SETUP_URL = "account/saveProfile"
let FORGET_PASSWORD_URL = "account/forgotPassword"
let CHANGE_PASSWORD_URL = "account/changePassword"
let STAFF_ADD_URL = "account/createStaff"
let STAFF_EDIT_URL = "account/editStaff"
let STAFF_DELETE_URL = "account/deleteStaff"

let FACILITY_ADD_URL = "facility/create"
let FACILITY_EDIT_URL = "facility/edit"


let FACILITY_ADDWARD_URL = "facility/addWard"
let FACILITY_EDITWARD_URL = "facility/editWard"
let FACILITY_DELETEWARD_URL = "facility/deleteWard"


let DASHBOARD_URL = "account/dashboard"
let PUSH_URL = "datasync/push"
let PULL_URL = "datasync/pull"

let RESIDENCE_CREATE_URL = "resident/create"
let RESIDENCE_EDIT_URL = "resident/edit"
let RESIDENCE_DELETE_URL = "resident/delete"
let RESIDENCE_ADD_CONTACT_URL = "resident/addContact"
let RESIDENCE_EDIT_CONTACT_URL = "resident/editContact"
let RESIDENCE_SAVE_CONTACT_URL = "resident/saveContacts"
let RESIDENCE_DELETE_CONTACT_URL = "resident/deleteContact"
let RESIDENCE_ADD_PHYSICIAN_URL = "resident/addPhysician"
let RESIDENCE_EDIT_PHYSICIAN_URL = "resident/editPhysician"
let RESIDENCE_SAVE_PHYSICIAN_URL = "resident/savePhysicians"
let RESIDENCE_DELETE_PHYSICIAN_URL = "resident/deletePhysician"
let RESIDENCE_ADD_CAREINFO_URL = "resident/addCareInfo"
let RESIDENCE_EDIT_CAREINFO_URL = "resident/editCareInfo"
let RESIDENCE_GET_CAREINFO_URL = "resident/getCareInfos"
let RESIDENCE_GETLANGUAGES_URL = "resident/getLanguages"
let API_IMAGE_PATH = "Resources/Photos/Resident/"

let TEACHERS_CLASSESS_URL = ""

let APP_STORE_URL = ""
let APP_STORE_URL_REDIRECT = ""



let ErrorMeassage_K = "ErrorMeassage"
let APIError_K = "APIError"
let AppError_K = "AppError"


let DATE_FORMAT_1 = "yyyy-MM-dd'T'HH:mm:ss.SSS'Z'"
let DATE_FORMAT_12 = "yyyy-MM-dd HH:mm:ss.SSS'Z'"
let DATE_FORMAT_13 = "yyyy-MM-dd'T'HH:mm:ss'Z'"
let DATE_FORMAT_14 = "yyyy-MM-dd'T'HH:mm:ss.SSS"
let DATE_FORMAT_15 = "yyyy-MM-dd'T'HH:mm:ss.SS"
let DATE_FORMAT_16 = "yyyy-MM-dd'T'HH:mm:ss.SSSSSSS'Z'"
let DATE_FORMAT_17 = "yyyy-MM-dd'T'HH:mm:ss.SSSSSSS'+''Z'"
let DATE_FORMAT_18 = "yyyy'-'MM'-'dd'T'HH':'mm':'ss.SSSZZZZZ"
let DATE_FORMAT_19  = "yyyy-MM-dd'T'HH:mm:ss'Z'"

let DATE_FORMAT_2 = "yyyy-MM-dd"
let DATE_FORMAT_3 = "HH:mm:ss"
let DATE_FORMAT_4 = "dd MMM, yyyy hh:mm:ss a"
let DATE_FORMAT_5 = "dd MMM, yyyy hh:mm:ss"
let DATE_FORMAT_6 = "hh:mm:ss a"
let DATE_FORMAT_7 = "dd-MM-yyyy'T'HH:mm:SS.SSS'Z'"
let DATE_FORMAT_8 = "d MMM, yyyy hh:mm:ss a"
let DATE_FORMAT_9 = "yyyy-MM-dd'T'HH:mm:ss a"
let DATE_FORMAT_10 = "hh:mm a"
let DATE_FORMAT_11 = "dd MMM,yy hh:mm a"

let DATE_ZONE = "yyyy'-'MM'-'dd'T'HH':'mm':'ss ZZZZZ"
let DATE_ZONE_2  = "yyyy'-'MM'-'dd'T'HH':'mm':'ssZZZZZ"
let DATE_ZONE_3  = "yyyy'-'MM'-'dd HH':'mm':'ssZZZZZ"
let DATE_ZONE_4  = "yyyy'-'MM'-'dd'T'HH':'mm':'ss.SSS ZZZZZ"
let DATE_ZONE_5  = "yyyy'-'MM'-'dd'T'HH':'mm':'ss.SSSSSSS ZZZZZ"

let API_ERROR  = "Something went wrong. Please try again later"
let COMMON_ERROR  = "Something went wrong. Please try again later"
let SELECT_TEXT  = "Select"
let FACILITY_ADMIN_TEXT  = "FACILITY_ADMIN"
let NURSE_ADMIN_TEXT  = "NURSE_ADMIN"
let NURSE_TEXT  = "NURSE"

let PIN1_TITLE_POP_UP_TEXT = "Screen lockout due to inactivity"
let PIN1_MESSAGE_POP_UP_TEXT = "Please enter the PIN below to view the screen again or login"

let PIN2_TITLE_POP_UP_TEXT = ""
let PIN2_MESSAGE_POP_UP_TEXT = "Please enter the PIN below to view the screen"

let DELETE_RESIDENT_POPUP_TITLE = "DELETING RESIDENT"
let DELETE_RESIDENT_POPUP_TEXT = "Once you have deleted the resident, you can not retrieve or re-instate their information."
let DELETE_WARD_POPUP_TITLE = "DELETING WARD"
let DELETE_WARD_POPUP_TEXT = "Once you have deleted the ward, you can not retrieve or re-instate their information."
let DELETE_NURSE_POPUP_TITLE = "DELETING NURSE"
let DELETE_NURSE_POPUP_TEXT = "Once you have deleted the nurse, you can not retrieve or re-instate their information."
let DELETE_STAFF_POPUP_TITLE = "DELETING STAFF"
let DELETE_STAFF_POPUP_TEXT = "Once you have deleted the staff member, you can not retrieve or re-instate their information."
let DELETE_PHYSICIAN_POPUP_TITLE = "DELETING PHYSICIAN"
let DELETE_PHYSICIAN_POPUP_TEXT = "Once you have deleted the physician, you can not retrieve or re-instate their information."
let DELETE_CONTACT_POPUP_TITLE = "DELETING CONTACT"
let DELETE_CONTACT_POPUP_TEXT = "Once you have deleted the contact, you can not retrieve or re-instate their information."


let Font_Family  = "OpenSans"
let lastSyncTime = "kLastSyncTime"
let SAVE_TEXT  = "SAVE"
let UPDATE_TEXT  = "UPDATE"

enum Service{
    case UNKNOWN
    case LOGIN
    case REGISTER
    case STAFF_ADD
    case STAFF_EDIT
    case STAFF_DELETE
    case PROFILE_GET
    case PROFILE_SETUP
    case EMAIL_VERIFY
    case FACILITY_ADD
    case FACILITY_EDIT
    case FACILITY_WARD_ADD
    case FACILITY_WARD_EDIT
    case FACILITY_WARD_DELETE
    case FORGET_PASSWORD
    case CHANGE_PASSWORD
    case PUSH
    case PULL
    case RESIDENCE_CREATE
    case RESIDENCE_EDIT
    case RESIDENCE_DELETE
    case RESIDENCE_ADD_CONTACT
    case RESIDENCE_EDIT_CONTACT
    case RESIDENCE_DELETE_CONTACT
    case RESIDENCE_SAVE_CONTACT
    case RESIDENCE_ADD_PHYSICIAN
    case RESIDENCE_EDIT_PHYSICIAN
    case RESIDENCE_SAVE_PHYSICIAN
    case RESIDENCE_DELETE_PHYSICIAN
    case RESIDENCE_ADD_CAREINFO
    case RESIDENCE_EDIT_CAREINFO
    case RESIDENCE_GET_CAREINFO
    case RESIDENCE_GETLANGUAGES
    case getVersionFromAppStore
}

enum Font_Style : String {
    case Regular = ""
    case Bold = "Bold"
    case Semibold = "Semibold"
    case BoldItalic = "BoldItalic"
    case ExtraBold = "ExtraBold"
    case ExtraBoldItalic = "ExtraBoldItalic"
    case Italic = "Italic"
    case Light = "Light"
    case LightItalic = "LightItalic"
    case SemiboldItalic = "SemiboldItalic"
}


enum HB_Menu : String {
    case myRESIcareDashBoard = "Dashboard"
    case Residence = "MyResidents"
   // case Physician = "Physician"
    //case Caring = "Care Notes"
   // case Contacts = "Contacts"
    case MyRESIward = "MyRESIward"
   // case MyRESIfacility = "MyRESIfacility"
    case MyRESIstaff = "MyRESIstaff"
    case Settings = "Settings"
    case closeMyRESIcare = "Logout"
    case Unknown = "Unknown"
}


enum MessageKey:String{
    
    case NoInternet
    case EmailRequired
    case InvalidEmail
    case PassRequired
    case NoDataFound
    case PageLoadError
    case PasswordUpdate
    case DuplicateEmail
    case CommonError
    case NameTitleRequired
    case FNameRequired
    case LNameRequired
    case SNameRequired
    case ResiProfilePicRequired
    case RoleRequired
    case FacilityNameRequired
    case FacilityAddressRequired
    case FacilityEmailRequired
    case FacilityPhoneRequired
    case FacilityRoomNumberRequired
    case DeleteFacilityConfirm
    case NurseFNameRequired
    case NurseSNameRequired
    case NurseEmailRequired
    case NurseMobileNoRequired
    case DeleteStaffConfirm
    case ResidentTitleRequired
    case ResidentFNameRequired
    case ResidentLNameRequired
    case DobRequired
    case ValidAgeRequired
    case FacilityRequired
    case WardRequired
    case RoomNumberRequired
    case BedNumberRequired
    case AppointmentTypeRequired
    case PhysicianNameRequired
    case ContactNumberRequired
    case ContactNameRequired
    case RelationshipRequired
    case ScreenLockDurationRequired
    case ScreenLockPinRequired
    case CorrectPinRequired
    case CareLevelRequired
    case NeedHelpRequired
    case LanguageRequired
    case DentureRequired
}

let FACILITY_NAME_TITLE = "Name*"
let ADDRESS_TITLE = "Address*"
let COMMON_EMAIL_TITLE = "Common email address*"
let MAIN_PHONE_TITLE = "Main phone number*"
let ADD_ANOTHER_BUTTON_TITLE = "ADD ANOTHER"
let ADD_ANOTHER_PHONE_TITLE = "Other phone number"
let FAX_TITLE = "Fax number"


let PHYSICIAN_TYPE = "Private or facility appointed*"
let PHYSICIAN_FULL_NAME = "Full name (Dr Name)*"
let CONTACT_NUMBER = "Contact number (main)*"
let OTHER_CONTACT_NUMBER = "Contact number (Other)"

let CONTACT_NAME = "Full name (first, last name)*"
let RELATIONSHIP = "Relationship*"
let CCONTACT_NUMBER = "Contact number (main)*"
let ADDITIONAL_CONTACT_NUMBER = "Contact number (Other)"


let NotificationPinSetting = "NotificationPinSetting";


let PinEnterLockTime = 1*60 // Show alert Based on user inactivity , show alert.
let autoLogOutTime = 2*60 // Used in residence details, review

let DENTURES = "Dentures"
let CARE_INFO = "Needs help with..."
let SPOKEN_LANGUAGES = "Spoken languages"
let CARE_LEVEL = "Care level"
let CARE_INFO_TITLE = "Daily Care Information"


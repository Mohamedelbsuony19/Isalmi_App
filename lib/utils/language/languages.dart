import 'package:flutter/material.dart';

abstract class Languages {
  String get payment;

  get number;

  get products;

  String get branchIsClosedInfo;

  String get to;

  String get all;

  String get youDisconnected;

  String get checkInternetConnection;

  String get exist;

  String get discardCart;

  String get online;

  String get cash;

  String get deliverInNextHour;

  String get orderSentSuccessfully;

  String get orderNumber;

  String get hour;

  String get minute;

  String get pickUpTime;

  String get completeAddress;

  String get extraCharges;

  String get orderStatus;

  String get mada;

  String get credit;

  String get noBranchesInRegion;
  String get gpsDisabledMessage;
  String get openGPS;
  String get gpsDisabledTitle;
  String get secondaryItems;



  static Languages? of(BuildContext context) {
    return Localizations.of<Languages>(context, Languages);
  }

  String get yes;

  String get no;

  String get chooseLanguageTitle;

  String get chooseThemeTitle;

  String get loginTitle;

  String get chooseBranchTitle;

  String get chooseBranchHint;

  String get languageValueAr;

  String get languageValueEn;

  String get textNext;

  String get loginAction;

  String get userName;

  String get password;

  String get email;

  String get phoneNumber;

  String get welcome;

  String get enjoyTheWorldsFastestAndBestNetwork;

  String get login;

  String get letsStart;

  String get forgetPassword;

  String get selectLanguage;

  String get support;

  String get barHome;

  String get barNotifications;

  String get barSearch;

  String get barProfile;

  String get cart;

  String get newSupportIssues;

  String get solvedFinishedSupportIssues;

  String get unsolvedFinishedSupportIssues;

  String get pendingSupportIssues;

  String get language;

  String get apply;

  String get emailEmptyErrorMessage;

  String get passwordEmptyErrorMessage;

  String get passwordTheSameErrorMessage;

  String get passwordLengthErrorMessage;

  String get typeMessage;

  String get recordingMessage;

  String get supportTicket;

  String get attachment;

  String get changePassword;

  String get oldPassword;

  String get newPassword;

  String get tabPending;

  String get tabNew;

  String get tabDone;

  String get tabActive;

  String get emptySessionsMessage;

  String get yesterday;

  String get totalSessions;

  String get sessionClosedMessage;

  String get video;

  String get audioRecord;

  String get image;

  String get alert;

  String get actionOk;

  String get actionCancel;

  String get messageChangePasswordSuccessfully;

  String get messageLogoutConfirmation;

  String get logout;

  String get choseOrderWay;

  String get youCanNowChoseFrom;

  String get restaurantDelivery;

  String get homeDelivery;

  String get skipIntroduction;

  String get receive;

  String get deliver;

  String get pickUpPlace;
  String get restaurantPickup;

  String get district;

  String get city;

  String get area;

  String get searchForNearestBranch;

  String get searchForYourOrder;

  String get searchAgain;

  String get availableBranches;

  String get change;

  String get orderTrack;

  String get myAccount;

  String get personalData;

  String get myOrders;

  String get favourites;

  String get contactUs;

  String get complaintsAndRecommendations;

  String get addresses;

  String get name;

  String get mobile;

  String get address;

  String get updateInformation;

  String get insertName;

  String get insertMobile;

  String get insertValidMobile;

  String get insertEmail;

  String get confirmPassword;

  String get emptyOldPassword;

  String get emptyNewPassword;

  String get emptyConfirmPassword;

  String get identicalPassword;

  String get languageSelect;

  String get arabic;

  String get english;

  String get addition;

  String get message;

  String get messageWrite;

  String get send;

  String get aboutUs;

  String get aboutUsContent;

  String get chooseAddress;

  String get searchForYourLocation;

  String get checkYourCurrentLocation;

  String get confirmationMessage;

  String get confirmationMessageSent;

  String get codeNotSent;

  String get canSendAgain;

  String get optional;

  String get resend;

  String get activate;

  String get resetPassword;

  String get orBy;

  String get offers;

  String get createNewAccount;

  String get noAccountForMeMessage;

  String get emptyPhoneMessageError;

  String get emptyPasswordMessageError;

  String get additions;

  String get without;

  String get notAvailableInRegion;

  String get pleaseChangeRegion;

  String get exploreList;

  String get replace;

  String get register;

  String get emptyPassword;

  String get insertValidMail;

  String get foodMenu;

  String get currentOrders;

  String get lastOrders;

  String get confirmed;

  String get processed;

  String get orderCode;

  String get inWay;

  String get notConfirmed;

  String get searchResult;

  String get meal;

  String get offer;

  String get primaryItems;

  String get freeItems;

  String get itemSelectedCount;

  String get additionalNotes;

  String get code;

  String get takeNote;

  String get youNeedAnyAdditionalThing;

  String get orderWay;

  String get done;

  String get completeOrder;

  String get viewCart;

  String get shoppingCart;

  String get noItemAddedToCard;

  String get addPromoCode;

  String get enterPromoCode;

  String get price;

  String get discount;

  String get totalPrice;

  String get taxes;

  String get addressTitle;

  String get street;

  String get department;

  String get building;

  String get floor;

  String get addAddress;

  String get details;

  String get warningMessage;

  String get insertStreet;

  String get insertDepartment;

  String get insertBuilding;

  String get insertFloor;

  String get insertAddressTitle;

  String get selectDistrict;

  String get save;

  String get edit;

  String get deleteItemFromCart;

  String get deleteAddressConfirmation;

  String get noOrders;

  String get validPassword;

  String get deliverNow;

  String get deliverWithinTime;

  String get choseDifferentAddress;

  String get paymentWay;

  String get finishOrder;

  String get canceled;

  String get delivered;

  String get loginOrRegister;

  String get orderDetail;

  String get orderInformation;

  String get orderDateTime;

  String get noAddresses;

  String get noFavourites;

  String get reOrder;

  String get removeCurrentOrderConfirm;

  String get removeCurrentOrderWarning;

  String get cancel;

  String get noNotifications;

  String get offerWatch;

  String get currentStatus;

  String get restaurantClosed;

  String get timeSelected;

  String get from;

  String get forgetPass;

  String get orderReceived;

  String get networkConnectionProblem;

  String get complaint;

  String get recommendation;

  String get contactUsWhats;

  String get clickHere;

  String get home;

  String get work;

  String get other;

  String get locationSelect;

  String get outOfStock;

  String get region;

  String get requiredCode;

  String get wrongCode;

  String get operationCancelled;

  String get confirm;

  String get addNewCard;

  String get newCard;

  String get cardHolderName;

  String get cardNumber;

  String get cardExpiry;

  String get cardCvv;

  String get saveCard;

  String get editCard;

  String get setAsPrimaryCard;

  String get cardExpiryHint;

  String get enterValidExpiryDate;

  String get enterValidNumber;

  String get enterCardHolder;

  String get enterCardCVV;

  String get enterValidCardCVV;

  String get pay;

  String get primary;

  String get customerCards;

  String get verificationCodeFailed;

  String get otpTooManyRequestsFailed;

  String get shawermalGood;

  String get phoneInsert;

  String get skipLogin;

  String get arriveAt;

  String get total;

  String get add;

  String get close;

  String get locationClosedWarning;

  String get back;

  String get locationClose;

  String get addToYourOrder;

  String get atDate;

  String get orderPrepared;

  String get orderSentFail;

  String get preparedAt;

  String get upgradeTitle;

  String get upgradeMessage;

  String get upgradeAction;

  String get fodo;

  String get itemEdit;

  String get paymentStatus;

  String get paid;

  String get notPaid;

  String get paymentApproval;

  String get otpTitle;

  String get otpBackTitle;

  String get cancelOrder;

  String get continuePayment;

  String get transactionPendingMessage;

  String get transactionFailedMessage;

  String get addressDetail;

  String get addressSaveLater;

  String get friendHouse;

  String get hangouts;

  String get replaceAddressAlertMessage;

  String get replaceAddressAlertMessage2;

  String get insertAddressType;
  String get branchNotCoverageMessage;
  String get deliveryFees;

  String get orderType;
  String get myPoints;
  String get payWithPoints;
  String get myPointsHint;
  String get pointsAmount;
  String get minPointsAmountHint;
  String get payWithPointsExceedError;

  String get search;

}

enum EnumLanguage { ENGLISH, ARABIC }

extension ExtensionEnumLanguage on EnumLanguage {
  String localeValue() {
    switch (this) {
      case EnumLanguage.ARABIC:
        return 'ar';
      default:
        return 'en';
    }
  }

  String countryValue() {
    switch (this) {
      case EnumLanguage.ARABIC:
        return 'EG';
      default:
        return 'US';
    }
  }
}

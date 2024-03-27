import 'package:devkitflutteruikit/Route/Routes.dart';
import 'package:devkitflutteruikit/Screen/ScreenList/ContactUsPage.dart';
import 'package:devkitflutteruikit/Screen/ScreenList/ForgotPasswordPage.dart';
import 'package:devkitflutteruikit/Screen/ScreenList/HomePage.dart';
import 'package:devkitflutteruikit/Screen/ScreenList/NotificationPage.dart';
import 'package:devkitflutteruikit/Screen/ScreenList/OnBoardingPage/OnBoardingPage.dart';
import 'package:devkitflutteruikit/Screen/ScreenList/ProductListPage.dart';
import 'package:devkitflutteruikit/Screen/ScreenList/ScreenList.dart';
import 'package:devkitflutteruikit/Screen/ScreenList/SignUpPage.dart';
import 'package:devkitflutteruikit/Screen/ScreenList/SigninPage.dart';
import 'package:devkitflutteruikit/Screen/ScreenList/TimeLinePage.dart';
import 'package:devkitflutteruikit/Screen/ScreenList/UserPage.dart';
import 'package:devkitflutteruikit/Screen/ScreenList/UserProfilePage.dart';
import 'package:devkitflutteruikit/Screen/ScreenList/VerificationPage.dart';
import 'package:get/get.dart';

class  Screens{
  static final routes =[
    GetPage(name: Routes.screenlistpage, page: () => ScreenListPage()),
    GetPage(name: Routes.onboarding, page: () => OnBoardingPage()),
    GetPage(name: Routes.signin, page: () => SigninPage()),
    GetPage(name: Routes.signup, page: () => SignUpPage()),
    GetPage(name: Routes.verification, page: () => VerificationPage()),
    GetPage(name: Routes.forgetpassword, page: () => ForgotPasswordPage()),
    GetPage(name: Routes.home, page: () => HomePage()),
    GetPage(name: Routes.user, page: () => UserPage()),
    GetPage(name: Routes.userprofile, page: () => UserProfilePage()),
    GetPage(name: Routes.contactus, page: () => ContactUsPage()),
    GetPage(name: Routes.productlist, page: () => ProductListPage()),
    GetPage(name: Routes.timeline, page: () => TimeLinePage()),
    GetPage(name: Routes.notification, page: () => NotificationPage()),
  ];
}
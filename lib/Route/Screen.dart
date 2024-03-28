import 'package:devkitflutteruikit/Route/Routes.dart';
import 'package:devkitflutteruikit/Screen/ScreenList/ContactUsPage.dart';
import 'package:devkitflutteruikit/Screen/ScreenList/ForgotPasswordPage.dart';
import 'package:devkitflutteruikit/Screen/ScreenList/HomePage.dart';
import 'package:devkitflutteruikit/Screen/ScreenList/NotificationPage.dart';
import 'package:devkitflutteruikit/Screen/ScreenList/OnBoardingPage/OnBoardingPage.dart';
import 'package:devkitflutteruikit/Screen/ScreenList/OnBoardingPage/OnBoardingPage1.dart';
import 'package:devkitflutteruikit/Screen/ScreenList/ProductListPage.dart';
import 'package:devkitflutteruikit/Screen/ScreenList.dart';
import 'package:devkitflutteruikit/Screen/ScreenList/SignUpPage.dart';
import 'package:devkitflutteruikit/Screen/ScreenList/SigninPage.dart';
import 'package:devkitflutteruikit/Screen/ScreenList/TimeLinePage.dart';
import 'package:devkitflutteruikit/Screen/ScreenList/UserPage.dart';
import 'package:devkitflutteruikit/Screen/ScreenList/UserProfilePage.dart';
import 'package:devkitflutteruikit/Screen/ScreenList/VerificationPage.dart';
import 'package:devkitflutteruikit/widget/widgetlist/AlignWidgetPage.dart';
import 'package:devkitflutteruikit/widget/widgetlist/AnimatedContiner/AnimatedContinerPage1.dart';
import 'package:devkitflutteruikit/widget/widgetlist/AnimatedCrossFadePage.dart';
import 'package:devkitflutteruikit/widget/widgetlist/AnimatedDefaultTextPage.dart';
import 'package:get/get.dart';

import '../Screen/ScreenList/OnBoardingPage/OnBoardingPage2.dart';
import '../widget/WidgetList.dart';
import '../widget/widgetlist/AbsorbPointerPage.dart';
import '../widget/widgetlist/AnimatedAlignPage.dart';
import '../widget/widgetlist/AnimatedContiner/AnimatedContainerPage.dart';
import '../widget/widgetlist/AnimatedContiner/AnimatedContainerPage2.dart';
import '../widget/widgetlist/AnimatedContiner/AnimatedContainerPage3.dart';


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
    GetPage(name: Routes.onboarding1, page: () => OnBoardingPage1()),
    GetPage(name: Routes.onboarding2, page: () => OnBoardingPage2()),
    GetPage(name: Routes.widgetlist, page: () => WidgetsListPage()),
    GetPage(name: Routes.abscorbpointer, page: () => AbsorbPointerPage()),
    GetPage(name: Routes.alignwidget, page: () => AlignWidgetPage()),
    GetPage(name: Routes.animatealign, page: () => AnimatedAlignPage()),
    GetPage(name: Routes.animatedcontainer, page: () => AnimatedContainerPage()),
    GetPage(name: Routes.animatedcontainer1, page: () => AnimatedContainerPage1()),
    GetPage(name: Routes.animatedcontainer2, page: () => AnimatedContainerPage2()),
    GetPage(name: Routes.animatedcontainer3, page: () => AnimatedContainerPage3()),
    GetPage(name: Routes.animatedcorsssfode, page: () => AnimatedCrossFadePage()),
    GetPage(name: Routes.animateddefaulttext, page: () => AnimatedDefaultTextPage()),
  ];
}
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
import 'package:devkitflutteruikit/widget/widgetlist/AnimatedPhysicalModelPage.dart';
import 'package:devkitflutteruikit/widget/widgetlist/AnimatedPositionedPage.dart';
import 'package:devkitflutteruikit/widget/widgetlist/AppBar/AppBarList.dart';
import 'package:devkitflutteruikit/widget/widgetlist/AppBar/AppBarPage1.dart';
import 'package:devkitflutteruikit/widget/widgetlist/AppBar/AppBarPage2.dart';
import 'package:devkitflutteruikit/widget/widgetlist/AppBar/AppBarPage3.dart';
import 'package:devkitflutteruikit/widget/widgetlist/AppBar/AppBarPage4.dart';
import 'package:devkitflutteruikit/widget/widgetlist/BottomSheet/BottomSheetList.dart';
import 'package:devkitflutteruikit/widget/widgetlist/BottomSheet/BottomSheetPage1.dart';
import 'package:devkitflutteruikit/widget/widgetlist/BottomSheet/BottomSheetPage2.dart';
import 'package:devkitflutteruikit/widget/widgetlist/ClipRReactWidget.dart';
import 'package:devkitflutteruikit/widget/widgetlist/ContinerWidget/BorderContainerPage.dart';
import 'package:devkitflutteruikit/widget/widgetlist/ContinerWidget/BorderRadiusContainerPage.dart';
import 'package:devkitflutteruikit/widget/widgetlist/ContinerWidget/ColoringContinerPage.dart';
import 'package:devkitflutteruikit/widget/widgetlist/ContinerWidget/ContinerWidgetList.dart';
import 'package:devkitflutteruikit/widget/widgetlist/ContinerWidget/GradientColorContainerPage.dart';
import 'package:devkitflutteruikit/widget/widgetlist/ContinerWidget/MarginOnContainerPage.dart';
import 'package:devkitflutteruikit/widget/widgetlist/ContinerWidget/PaddingOnContainerPage.dart';
import 'package:devkitflutteruikit/widget/widgetlist/ContinerWidget/ShadowContainerPage.dart';
import 'package:devkitflutteruikit/widget/widgetlist/ContinerWidget/StandartContainerPage.dart';

import 'package:get/get.dart';

import '../Screen/ScreenList/OnBoardingPage/OnBoardingPage2.dart';
import '../widget/WidgetList.dart';
import '../widget/widgetlist/AbsorbPointerPage.dart';
import '../widget/widgetlist/AnimatedAlignPage.dart';
import '../widget/widgetlist/AnimatedContiner/AnimatedContainerPage.dart';
import '../widget/widgetlist/AnimatedContiner/AnimatedContainerPage2.dart';
import '../widget/widgetlist/AnimatedContiner/AnimatedContainerPage3.dart';
import '../widget/widgetlist/BottomSheet/BottomSheet3.dart';


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
    GetPage(name: Routes.animatedphysicalmodel, page: () => AnimatedPhysicalModelPage()),
    GetPage(name: Routes.animatedpositioned, page: () => AnimatedPositionedPage()),
    GetPage(name: Routes.appbarpage, page: () => AppBarListPage()),
    GetPage(name: Routes.appbarpage1, page: () => AppBarPage1()),
    GetPage(name: Routes.appbarpage2, page: () => AppBarPage2()),
    GetPage(name: Routes.appbarpage3, page: () => AppBarPage3()),
    GetPage(name: Routes.appbarpage4, page: () => AppBarPage4()),

    GetPage(name: Routes.bottomsheetlist, page: () => BottomSheetList()),
    GetPage(name: Routes.bottompage1, page: () => BottomSheetPage1()),
    GetPage(name: Routes.bottompage2, page: () => BottomSheetPage2()),
    GetPage(name: Routes.bottompage3, page: () => BottomSheetPage3()),

    GetPage(name: Routes.clipRRectpage, page: () => ClipRRectPage()),

    GetPage(name: Routes.containerlist, page: () => ContainerWidgetList()),
    GetPage(name: Routes.standartcontiner, page: () =>  StandartContainerPage()),
    GetPage(name: Routes.coloringcontiner, page: () => ColoringContainerPage()),
    GetPage(name: Routes.gradientcolorcontiner, page: () => GradientColorContainerPage()),
    GetPage(name: Routes.margincontiner, page: () => MarginOnContainerPage()),
    GetPage(name: Routes.paddingcontiner, page: () => PaddingOnContainerPage()),
    GetPage(name: Routes.bordercontiner, page: () => BorderContainerPage()),
    GetPage(name: Routes.borderradiuscontiner, page: () => BorderRadiusContainerPage()),
    GetPage(name: Routes.shadowcontiner, page: () => ShadowContainerPage()),
  ];
}
import 'package:flutter/material.dart';
import 'package:loc_s_application_booking/presentation/splash_screen_three_screen/splash_screen_three_screen.dart';
import 'package:loc_s_application_booking/presentation/login_three_screen/login_three_screen.dart';
import 'package:loc_s_application_booking/presentation/home_three_container_screen/home_three_container_screen.dart';
import 'package:loc_s_application_booking/presentation/depart_expanded_screen/depart_expanded_screen.dart';
import 'package:loc_s_application_booking/presentation/ticket_list_two_screen/ticket_list_two_screen.dart';
import 'package:loc_s_application_booking/presentation/ticket_detail_screen/ticket_detail_screen.dart';
import 'package:loc_s_application_booking/presentation/input_info_screen/input_info_screen.dart';
import 'package:loc_s_application_booking/presentation/input_full_info_screen/input_full_info_screen.dart';
import 'package:loc_s_application_booking/presentation/splash_screen/splash_screen.dart';
import 'package:loc_s_application_booking/presentation/login_screen/login_screen.dart';
import 'package:loc_s_application_booking/presentation/login_two_screen/login_two_screen.dart';
import 'package:loc_s_application_booking/presentation/search_ticket_one_tab_container_screen/search_ticket_one_tab_container_screen.dart';
import 'package:loc_s_application_booking/presentation/forgot_password_screen/forgot_password_screen.dart';
import 'package:loc_s_application_booking/presentation/depart_screen/depart_screen.dart';
import 'package:loc_s_application_booking/presentation/popular_destinations_screen/popular_destinations_screen.dart';
import 'package:loc_s_application_booking/presentation/ticket_more_tab_container_screen/ticket_more_tab_container_screen.dart';
import 'package:loc_s_application_booking/presentation/splash_screen_two_screen/splash_screen_two_screen.dart';
import 'package:loc_s_application_booking/presentation/home_screen/home_screen.dart';
import 'package:loc_s_application_booking/presentation/home_two_screen/home_two_screen.dart';
import 'package:loc_s_application_booking/presentation/input_info_two_screen/input_info_two_screen.dart';
import 'package:loc_s_application_booking/presentation/customers_screen/customers_screen.dart';
import 'package:loc_s_application_booking/presentation/manage_ticket_screen/manage_ticket_screen.dart';
import 'package:loc_s_application_booking/presentation/booking_tab_container_screen/booking_tab_container_screen.dart';
import 'package:loc_s_application_booking/presentation/general_info_screen/general_info_screen.dart';
import 'package:loc_s_application_booking/presentation/notification_screen/notification_screen.dart';
import 'package:loc_s_application_booking/presentation/topup_tab_container_screen/topup_tab_container_screen.dart';
import 'package:loc_s_application_booking/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String splashScreenThreeScreen = '/splash_screen_three_screen';

  static const String loginThreeScreen = '/login_three_screen';

  static const String homeThreePage = '/home_three_page';

  static const String homeThreeContainerScreen = '/home_three_container_screen';

  static const String searchTicketTwoPage = '/search_ticket_two_page';

  static const String departExpandedScreen = '/depart_expanded_screen';

  static const String ticketListOnePage = '/ticket_list_one_page';

  static const String ticketListTwoScreen = '/ticket_list_two_screen';

  static const String ticketDetailScreen = '/ticket_detail_screen';

  static const String inputInfoScreen = '/input_info_screen';

  static const String inputFullInfoScreen = '/input_full_info_screen';

  static const String splashScreen = '/splash_screen';

  static const String loginScreen = '/login_screen';

  static const String loginTwoScreen = '/login_two_screen';

  static const String searchTicketOnePage = '/search_ticket_one_page';

  static const String searchTicketOneTabContainerScreen =
      '/search_ticket_one_tab_container_screen';

  static const String forgotPasswordScreen = '/forgot_password_screen';

  static const String multiCitiesPage = '/multi_cities_page';

  static const String departScreen = '/depart_screen';

  static const String popularDestinationsScreen =
      '/popular_destinations_screen';

  static const String ticketMorePage = '/ticket_more_page';

  static const String ticketMoreTabContainerScreen =
      '/ticket_more_tab_container_screen';

  static const String splashScreenTwoScreen = '/splash_screen_two_screen';

  static const String homeScreen = '/home_screen';

  static const String homeTwoScreen = '/home_two_screen';

  static const String inputInfoTwoScreen = '/input_info_two_screen';

  static const String settingFarePage = '/setting_fare_page';

  static const String profilePage = '/profile_page';

  static const String customersScreen = '/customers_screen';

  static const String manageTicketScreen = '/manage_ticket_screen';

  static const String bookingPage = '/booking_page';

  static const String bookingTabContainerScreen =
      '/booking_tab_container_screen';

  static const String generalInfoScreen = '/general_info_screen';

  static const String notificationScreen = '/notification_screen';

  static const String topupPage = '/topup_page';

  static const String topupTabContainerScreen = '/topup_tab_container_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    splashScreenThreeScreen: (context) => SplashScreenThreeScreen(),
    loginThreeScreen: (context) => LoginThreeScreen(),
    homeThreeContainerScreen: (context) => HomeThreeContainerScreen(),
    departExpandedScreen: (context) => DepartExpandedScreen(),
    ticketListTwoScreen: (context) => TicketListTwoScreen(),
    ticketDetailScreen: (context) => TicketDetailScreen(),
    inputInfoScreen: (context) => InputInfoScreen(),
    inputFullInfoScreen: (context) => InputFullInfoScreen(),
    splashScreen: (context) => SplashScreen(),
    loginScreen: (context) => LoginScreen(),
    loginTwoScreen: (context) => LoginTwoScreen(),
    searchTicketOneTabContainerScreen: (context) =>
        SearchTicketOneTabContainerScreen(),
    forgotPasswordScreen: (context) => ForgotPasswordScreen(),
    departScreen: (context) => DepartScreen(),
    popularDestinationsScreen: (context) => PopularDestinationsScreen(),
    ticketMoreTabContainerScreen: (context) => TicketMoreTabContainerScreen(),
    splashScreenTwoScreen: (context) => SplashScreenTwoScreen(),
    homeScreen: (context) => HomeScreen(),
    homeTwoScreen: (context) => HomeTwoScreen(),
    inputInfoTwoScreen: (context) => InputInfoTwoScreen(),
    customersScreen: (context) => CustomersScreen(),
    manageTicketScreen: (context) => ManageTicketScreen(),
    bookingTabContainerScreen: (context) => BookingTabContainerScreen(),
    generalInfoScreen: (context) => GeneralInfoScreen(),
    notificationScreen: (context) => NotificationScreen(),
    topupTabContainerScreen: (context) => TopupTabContainerScreen(),
    appNavigationScreen: (context) => AppNavigationScreen()
  };
}

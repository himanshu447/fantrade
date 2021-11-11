import 'package:fantrade/util/app_color_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
AppStyle appStyle = AppStyle();

class AppStyle with ChangeNotifier {
  bool isDarkTheme = false;

  ThemeMode get currentTheme => isDarkTheme ? ThemeMode.dark : ThemeMode.light;

  void toggleTheme(bool val) {
    isDarkTheme = val;
    notifyListeners();
  }

  static const Color primaryColor = Color(0xFF6300FF);
  static const Color accentColor = Color(0xff00D8A5);

  /// A material design text theme with dark glyphs based on Lato.
  ///
  /// This [TextTheme] provides color but not geometry (font size, weight, etc).
  ///
  /// This theme uses the font names.
  static const TextTheme blackText = TextTheme(
    headline1: TextStyle(
        fontFamily: 'Nunito',
        inherit: true,
        color: Colors.black54,
        decoration: TextDecoration.none),
    headline2: TextStyle(
        fontFamily: 'Nunito',
        inherit: true,
        color: Colors.black54,
        decoration: TextDecoration.none),
    headline3: TextStyle(
        fontFamily: 'Nunito',
        inherit: true,
        color: Colors.black54,
        decoration: TextDecoration.none),
    headline4: TextStyle(
        fontFamily: 'Nunito',
        inherit: true,
        color: Colors.black54,
        decoration: TextDecoration.none),
    headline5: TextStyle(
        fontFamily: 'Nunito',
        inherit: true,
        color: Colors.black87,
        decoration: TextDecoration.none),
    headline6: TextStyle(
        fontFamily: 'Nunito',
        inherit: true,
        color: Colors.black87,
        decoration: TextDecoration.none),
    bodyText1: TextStyle(
        fontFamily: 'Nunito',
        inherit: true,
        color: Colors.black87,
        decoration: TextDecoration.none),
    bodyText2: TextStyle(
        fontFamily: 'Nunito',
        inherit: true,
        color: Colors.black87,
        decoration: TextDecoration.none),
    subtitle1: TextStyle(
        fontFamily: 'Nunito',
        inherit: true,
        color: Colors.black87,
        decoration: TextDecoration.none),
    subtitle2: TextStyle(
        fontFamily: 'Nunito',
        inherit: true,
        color: Colors.black,
        decoration: TextDecoration.none),
    caption: TextStyle(
        fontFamily: 'Nunito',
        inherit: true,
        color: Colors.black54,
        decoration: TextDecoration.none),
    button: TextStyle(
        fontFamily: 'Nunito',
        inherit: true,
        color: Colors.black87,
        decoration: TextDecoration.none),
    overline: TextStyle(
        fontFamily: 'Nunito',
        inherit: true,
        color: Colors.black,
        decoration: TextDecoration.none),
  );

  /// A material design text theme with light glyphs based on Lato.
  ///
  /// This [TextTheme] provides color but not geometry (font size, weight, etc).
  ///
  /// This theme uses the font names.
  static const TextTheme whiteText = TextTheme(
    headline1: TextStyle(
        inherit: true,
        color: Colors.white70,
        fontFamily: 'Nunito',
        decoration: TextDecoration.none),
    headline2: TextStyle(
        inherit: true,
        color: Colors.white70,
        fontFamily: 'Nunito',
        decoration: TextDecoration.none),
    headline3: TextStyle(
        inherit: true,
        color: Colors.white70,
        fontFamily: 'Nunito',
        decoration: TextDecoration.none),
    headline4: TextStyle(
        inherit: true,
        color: Colors.white70,
        fontFamily: 'Nunito',
        decoration: TextDecoration.none),
    headline5: TextStyle(
        inherit: true,
        color: Colors.white,
        fontFamily: 'Nunito',
        decoration: TextDecoration.none),
    headline6: TextStyle(
        inherit: true,
        color: Colors.white,
        fontFamily: 'Nunito',
        decoration: TextDecoration.none),
    subtitle1: TextStyle(
        inherit: true,
        color: Colors.white,
        fontFamily: 'Nunito',
        decoration: TextDecoration.none),
    bodyText1: TextStyle(
        inherit: true,
        color: Colors.white,
        fontFamily: 'Nunito',
        decoration: TextDecoration.none),
    bodyText2: TextStyle(
        inherit: true,
        color: Colors.white,
        fontFamily: 'Nunito',
        decoration: TextDecoration.none),
    caption: TextStyle(
        inherit: true,
        color: Colors.white70,
        fontFamily: 'Nunito',
        decoration: TextDecoration.none),
    button: TextStyle(
        inherit: true,
        color: Colors.white,
        fontFamily: 'Nunito',
        decoration: TextDecoration.none),
    subtitle2: TextStyle(
        inherit: true,
        color: Colors.white,
        fontFamily: 'Nunito',
        decoration: TextDecoration.none),
    overline: TextStyle(
        inherit: true,
        color: Colors.white,
        fontFamily: 'Nunito',
        decoration: TextDecoration.none),
  );

  /*
	 *  LIGHT THEME
	 */
  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    textTheme: blackText,
    primaryColor: primaryColor,
    accentColor: accentColor,
    backgroundColor: Colors.white,
    scaffoldBackgroundColor: Colors.white,
    visualDensity: VisualDensity.adaptivePlatformDensity,
    iconTheme: ThemeData.light().iconTheme,
    appBarTheme: ThemeData.light().appBarTheme.copyWith(
          color: AppColor.primaryColor,
          elevation: 1,
          centerTitle: false,
          textTheme: whiteText,
          iconTheme: const IconThemeData(color: Colors.white),
          backwardsCompatibility: false,
          systemOverlayStyle: const SystemUiOverlayStyle(
            ///bg color of status bar
            statusBarColor: Colors.transparent,

            ///bottom navigation button Brightness
            systemNavigationBarIconBrightness: Brightness.light,

            ///bottom navigation button bg color
            systemNavigationBarColor: Colors.black,

            ///top status bar icon and time color
            statusBarIconBrightness: Brightness.light,

            systemNavigationBarDividerColor: Colors.white,
          ),
        ),
    bottomNavigationBarTheme:
        ThemeData.light().bottomNavigationBarTheme.copyWith(
              backgroundColor: Colors.white,
              selectedItemColor: primaryColor,
            ),
    cardTheme: ThemeData.light().cardTheme,
    cardColor: ThemeData.light().cardColor,
    buttonTheme: ThemeData.light().buttonTheme.copyWith(
          buttonColor: primaryColor,
          colorScheme: const ColorScheme(
            primary: primaryColor,
            primaryVariant: primaryColor,
            secondary: accentColor,
            secondaryVariant: accentColor,
            surface: primaryColor,
            background: primaryColor,
            error: Colors.red,
            onPrimary: primaryColor,
            onSecondary: primaryColor,
            onSurface: primaryColor,
            onBackground: primaryColor,
            onError: Colors.red,
            brightness: Brightness.light,
          ),
        ),
    buttonColor: primaryColor,
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.zero,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25),
        ),
        primary: primaryColor,
      ),
    ),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        padding: EdgeInsets.zero,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25),
        ),
        primary: primaryColor,
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      fillColor: Colors.white,
      filled: true,
      isDense: true,
      contentPadding: const EdgeInsets.symmetric(vertical: 12, horizontal: 12),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(5),
        borderSide: const BorderSide(color: AppColor.borderColor,width: 0.5),
      ),
      errorBorder:  OutlineInputBorder(
        borderRadius: BorderRadius.circular(5),
        borderSide:  const BorderSide(color: AppColor.red,width: 0.5),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(5),
        borderSide: const BorderSide(color: AppColor.borderColor,width: 0.5),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(5),
        borderSide: const BorderSide(color: AppColor.borderColor,width: 0.5),
      ),
      hintStyle: const TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w400,
        fontFamily: 'Nunito',
        color: AppColor.silver,
      )
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(6)
        ),
        padding: const EdgeInsets.symmetric(vertical: 12),
        backgroundColor: Colors.white,
        textStyle: const TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w600,
          color: AppColor.black,
        ),
      ),
    ),
  );

  /*
	 *  Dark THEME
	 */
  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    textTheme: whiteText,
    primaryColor: primaryColor,
    accentColor: accentColor,
    scaffoldBackgroundColor: Colors.black,
    visualDensity: VisualDensity.adaptivePlatformDensity,
    iconTheme: ThemeData.dark().iconTheme,
    appBarTheme: ThemeData.dark().appBarTheme.copyWith(
          color: Colors.black,
          elevation: 1,
          centerTitle: false,
          textTheme: whiteText,
          shadowColor: Colors.white,
          backwardsCompatibility: false,
          systemOverlayStyle: const SystemUiOverlayStyle(
            ///bg color of status bar
            statusBarColor: Colors.transparent,

            ///bottom navigation button Brightness
            systemNavigationBarIconBrightness: Brightness.light,

            ///bottom navigation button bg color
            systemNavigationBarColor: Colors.black,

            ///top status bar icon and time color
            statusBarIconBrightness: Brightness.dark,

            systemNavigationBarDividerColor: Colors.white,
          ),
        ),
    bottomNavigationBarTheme:
        ThemeData.dark().bottomNavigationBarTheme.copyWith(
              backgroundColor: Colors.black,
              selectedItemColor: primaryColor,
            ),
    primaryColorBrightness: Brightness.dark,
  );
}

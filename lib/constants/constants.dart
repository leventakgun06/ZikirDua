import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Responsive {
  late double _width, _height;

  double get width => _width;
  double get height => _height;

  static Responsive of(BuildContext context) => Responsive(context);

  Responsive(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final Size sizeOf = MediaQuery.sizeOf(context);
    _width = size.width;
    _height = size.height;

    _width = sizeOf.width;
    _height = sizeOf.height;
  }

  double wp(double val) => _width * val / 100;
  double hp(double val) => _height * val / 100;
}

//Divider indent
double kDefaultSpacing = 20.0;

//Icon Size
double iconLow = 18;
double iconSmall = 26;
double iconLargeX = 140;

TextStyle get fontSFProM40 => TextStyle(fontSize: 40, fontFamily: sfProM);
TextStyle get fontSFProM34 => TextStyle(fontSize: 34, fontFamily: sfProM);
TextStyle get fontSFProM20 => TextStyle(fontSize: 20, fontFamily: sfProM);
TextStyle get fontSFProM18 => TextStyle(fontSize: 18, fontFamily: sfProM);
TextStyle get fontSFProM16 => TextStyle(fontSize: 16, fontFamily: sfProM);
TextStyle get fontSFProR16 => TextStyle(fontSize: 16, fontFamily: sfProR);

TextStyle get fontSFProBR16 => TextStyle(fontSize: 16, color: colorRed, fontFamily: sfProB);

//Paddings
EdgeInsets paddingAll = EdgeInsets.all(8.0);
EdgeInsets paddingTop = EdgeInsets.only(top: 50);
//PrayeDetail
EdgeInsets paddingLRTB = EdgeInsets.fromLTRB(20, 0, 20, 0);
//MyLeftBackButton
EdgeInsets paddingHor = EdgeInsets.symmetric(horizontal: 14.0);
//TextButton
EdgeInsets paddingVer =
    EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0);
//MyListButton
EdgeInsets paddingVH =
    EdgeInsets.symmetric(vertical: 14.0, horizontal: 40.0);

//Radius
Radius radiusZero = Radius.circular(0);
Radius radiusHeight = Radius.circular(50);

Radius radiusLow = Radius.circular(10);
Radius radiusSmall = Radius.circular(20);

//BorderRadius
BorderRadius borderRadiusLow = BorderRadius.circular(10);
BorderRadius borderRadiusLarge = BorderRadius.circular(40);

//SizedBox Height
SizedBox sizedBoxHeightLow = SizedBox(height: 8);
SizedBox sizedBoxHeightSmall = SizedBox(height: 20);
SizedBox sizedBoxHeightMedium = SizedBox(height: 30);
SizedBox sizedBoxHeightLarge = SizedBox(height: 40);
SizedBox sizedBoxHeightLarge1x = SizedBox(height: 50);
SizedBox sizedBoxHeightLarge2x = SizedBox(height: 80);

//SizedBox Width
SizedBox sizedBoxWidthLow = SizedBox(width: 10);

//Colors
const Color colorBlack = Color(0xFF000000);
const Color colorWhite = Color(0xFFffffff);
const Color colorBlue = Color(0xFF2196F3);
const Color colorGreen = Color(0xFF43A047);
const Color colorRed = Color(0xFFFF0000);
const Color colorPurple = Color(0xFF660099);
const Color colorOrange = Color(0xFFFF9800);
const Color colorGrey = Color(0xFF9E9E9E);
const Color colorCyan = Color(0xFF00bcd4);
const Color colorAmber = Color(0xFFFFBF00);
const Color colorTransparent = Color(0x00000000);

const Color colorMineShaft = Color(0xFF303030);
const Color colorWhites = Color(0xFFE0E0E0);

//Images
const String imgAirplane = 'assets/images/ic_airplane.png';
const String imgAppstore = 'assets/images/ic_appstore.png';
const String imgGithubImg = 'assets/images/ic_github.png';
const String imgShare = 'assets/images/ic_share.png';
const String imgRail = 'assets/images/ic_rail.png';
const String imgAllah = 'assets/images/ic_allah.png';
const String imgKabe = 'assets/images/ic_kabe.png';
const String imgRoza = 'assets/images/ic_roza.png';
const String imgPlay = 'assets/images/ic_play.png';
const String imgBesmele = 'assets/images/ic_besmele.png';
const String imgBesmelem = 'assets/images/ic_besmelem.png';
const String imgCompass = 'assets/images/ic_compass.svg';
const String imgNeedle = 'assets/images/ic_needle.svg';

//Text
const String textAppName = 'ZikirDua';
const String textAppExit = 'Uygulamadan Çıkılsın mı?';
const String textAppYes = 'Evet';
const String textAppNo = 'Hayır';
const String textPrayers = 'Dualar';
const String textHeader = 'Zikir\nDualar';
const String textEsma = 'Esmaül Hüsna';
const String textEsmaUl = 'Esmaül\nHüsna';
const String textHadis = 'Hadisler';
const String textZikir = 'Zikir';
const String textHelp = 'Yardım';
const String textShare = 'Paylaş';
const String textQibla = 'Kıble';
const String textBestDrawer = 'En Güzel Dualar';
const String textBest = 'Güzel\nDualar';
const String textVer = 'Versiyon: 5.1';
const String textZikirm = 'Zikir Matik';
const String textStart = "Başlat";
const String textRetry = "Bitir";
const String textError = "Hata";
const String textBestHadis = 'En\nGüzel\nHadisler';
const String textAyath =
    "\"Gönülden yalvararak, korku ile ve yüksek olmayan bir sesle, sabah ve akşam Rabbini zikret. Sakın gafillerden olma!\"";
const String textSurah = "A'raf 205";
const String textPrayerAbout = "Dualar Hakkında Bilgi.";
const String textPrayerDescp =
    "Dualar bölümüne girdiğinizde, herhangi bir dua'ya gidin ve dua'nın üzerine tıkladığınızda duayı zikirmatik'de okuyarak zikir çekebilirsiniz.";
const String textPrayerFeed = "Puan ve Geribildirim";
const String textPrayerGoogle =
    "Değerli geribildiriminizi verebilir ve uygulamayı GooglePlay'de değerlendirebilirsiniz.";
const String textPrayerAppStore =
    "Değerli geribildiriminizi verebilir ve uygulamayı AppStore'de değerlendirebilirsiniz.";
const String textErrorInfo = "Hata Bildirme";
const String textThisLiving =
    "Bu ZikirDua bağlamında herhangi bir hata görürseniz lütfen aşağıdaki bağlantıdan bildirin.";
const String textErrorReport = "Hata Bildir";
const String textCurrentCode = "Mevcut Kod";
const String textLicences = "ZikirDua uygulaması, aşağıdaki bağlantıda izin verilmeyen uygun LİSANS'a sahiptir.";
const String textHidden = "Gizlilik Politikası";
const String textDevelopInfo = "Geliştirici Bilgileri";
const String textDevelopName = "Name: Levent Akgün";
const String textDevelopEmail = "Email: leventakgun06@gmail.com";
const String textDevelopWebsite = "Website: http://kikirim.blogspot.com";
const String textGitHub = "ZikirDua Uygulaması GitHub'da Açık Kaynak olarak'da mevcuttur!";
const String textFeedPoint = "Bildir";
const String textGitHubIcon = 'GitHub';
const String textBack = 'Geri';
//Qiblah
const String textLocation = 'Konum hizmeti izni reddedildi';
const String textLocations = 'Konum hizmeti Sonsuza Kadar Reddedildi!';
const String textPleaseLoc = 'Lütfen Konum hizmetini etkinleştirin';

//Network json
String get zikirDuaUrl => 'https://leventakgun06.github.io/api/zikirdua.json';

//Font Family
const kanitB = 'Kanit-Bold';
const kanitR = 'Kanit-Regular';
const kanitM = 'Kanit-Medium';

const oswaldB = 'Oswald-Bold';
const oswaldR = 'Oswald-Regular';
const oswaldM = 'Oswald-Medium';

const sfProB = 'SF-Pro-Display-Bold';
const sfProR = 'SF-Pro-Display-Regular';
const sfProM = 'SF-Pro-Display-Medium';

const youngSerif = 'YoungSerif-Regular';
const arabicB = 'NotoNaskhArabic-Bold';

//Theme Light/Dark
class ThemeClass {
  static ThemeData lightTheme = ThemeData(
    scaffoldBackgroundColor: colorWhite,
    listTileTheme: const ListTileThemeData(contentPadding: EdgeInsets.zero),
    cardTheme: const CardTheme(color: colorWhite),
    dividerTheme: const DividerThemeData(color: colorBlack),
    iconTheme: const IconThemeData(color: colorMineShaft),
    iconButtonTheme: IconButtonThemeData(
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(colorMineShaft))),
    appBarTheme: const AppBarTheme(
        systemOverlayStyle: SystemUiOverlayStyle.dark,
        titleTextStyle: TextStyle(color: colorBlack),
        backgroundColor: colorWhite,
        elevation: 0.0),
    colorScheme: const ColorScheme.light().copyWith(
      primary: colorMineShaft,
      secondary: colorWhite,
      onPrimary: colorMineShaft,
      onBackground: colorWhites,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(colorWhite),
        foregroundColor: MaterialStateProperty.all<Color>(colorBlack),
        side: MaterialStateProperty.all(
          const BorderSide(color: colorBlack),
        ),
      ),
    ),
  );

  static ThemeData darkTheme = ThemeData(
    scaffoldBackgroundColor: colorMineShaft,
    listTileTheme: const ListTileThemeData(contentPadding: EdgeInsets.zero),
    cardTheme: const CardTheme(color: colorMineShaft),
    dividerTheme: const DividerThemeData(color: colorWhite),
    iconTheme: const IconThemeData(color: colorWhite),
    iconButtonTheme: IconButtonThemeData(
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(colorWhite))),
    appBarTheme: const AppBarTheme(
        systemOverlayStyle: SystemUiOverlayStyle.light,
        titleTextStyle: TextStyle(color: colorWhite),
        backgroundColor: colorMineShaft,
        elevation: 0.0),
    colorScheme: const ColorScheme.dark().copyWith(
      primary: colorWhite,
      secondary: colorMineShaft,
      onPrimary: colorWhites,
      onBackground: colorGrey.withOpacity(.2),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(colorMineShaft),
        foregroundColor: MaterialStateProperty.all<Color>(colorWhite),
        side: MaterialStateProperty.all(
          const BorderSide(color: colorWhite),
        ),
      ),
    ),
  );
}

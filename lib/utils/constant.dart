import '../models/product.dart';
import '../models/categories.dart';

class StringConstants {
  static var products = [
    ImageContants.product1,
    ImageContants.product2,
    ImageContants.product3,
    ImageContants.product4,
    ImageContants.product5,
  ];
  static List<Product> cartItems = [];
  static String appName = "Plantify";
  static String register = "Signup";

  static String overview = "Overview";
  static String plant_bio = "Plant Bio";
  static String getStarted = "Get Started";
  static String getReady = "GET READY\nBE HIGYENIC";
  static String splashDesc =
      "Jelajahi AiLearn untuk menambah kemampuanmu dalam mengoperasikan Adobe Illustrator";
  static String login = "Login";
  static String loginDesc =
      "Masukan NISN dan password untuk\nmemulai belajar sekarang";
  static String username = "Username/Email";
  static String password = "Password";
  static String forgotPassword = "Forgot Password?";

  static String banner1Head = "There’s a Plant\nfor everyone";
  static String banner1Desc = "Get your 1st plant\n@ 40% off";
  static var selectedIndex = 0;
  static int total = 0;
  static var categories = [
    Categories("Top Pick", true),
    Categories("Indoor", false),
    Categories("Outdoor", false),
    Categories("Seeds", false),
    Categories("Plants", false),
    Categories("Others", false)
  ];
  static bool isobsecure = true;
}

class FontsConstants {
  static var Bold = "PhilospherBold";
  static var Regular = "PhilosopherRegular";
  static var Italic = "PhilosopherItalic";
  static var BoldItalic = "PhilosopherBoldItalic";
}

class ImageContants {
  static String logo = "assets/images/logo.png";
  static String bg = "assets/images/bg.png";

  static String cart = "assets/images/cart.png";
  static String fav = "assets/images/fav.png";
  static String fav_fill = "assets/images/fav_fill.png";
  static String banner1 = "assets/images/banner1.png";
  static String detailsbg = "assets/images/detailsbg.png";
  static String bg_top = "assets/images/bg_top.png";
  static String product1 = "assets/images/product1.png";
  static String product2 = "assets/images/product2.png";
  static String product3 = "assets/images/product3.png";
  static String product4 = "assets/images/product4.png";
  static String product5 = "assets/images/product5.png";
  static String productbg = "assets/images/productbg.png";
  static String sideMenuIcon = "assets/images/side_menu.png";
  static String btnBack = "assets/images/btn_back.png";
  static String options = "assets/images/options.png";

  static String water = "assets/images/water.png";
  static String light = "assets/images/light.png";
  static String fertilizer = "assets/images/fertilizer.png";
}

class ColorConstants {
  static var OffWhite = 0xFFEDECF2;
  static var PrimaryColor = 0xFF002140;
  static var GrayColor = 0xFFD3D3D3;
  static var DarkGrayColor = 0xFF808080;

  static var GreenColor = 0xFF0D986A;
  static var lightGreen = 0xFF9CE5CB;
  static var normalGreen = 0xFF0D986A;
  static var productColors = [
    0xFFFFE899,
    0xFF8CEC8A,
    0xFF56D1A7,
    0xFFB2E28D,
    0xFFDEEC8A,
    0xFFF5EDA8
  ];
}

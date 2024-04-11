class Utils {
  static const String baseurl = "";
  static const String testIpUrl = "";
  static const String migraneIpUrl = "";
  static const String finalLiveUrl = testIpUrl;

  ///CHANGE URL HERE WANT FOR PRODUCT/BETA
  static const String liveUrl = "admin/Api";
  // static const String TestUrl = "admin/Api_Test";
  static String fullBaseurl = "http://$finalLiveUrl/$liveUrl";

  ///FORM DATA USE URL
  static String alreadyLoggedMsg = "";
  static String shortVersionId = "31";
  static String currentVersionId = "2024.02.20.${shortVersionId}";
  static String productionText = "";
  static String testingText = "(Beta Test)";
  static String finalVersionText = testingText;

  ///CHANGE HERE WANT FOR PRODUCT/BETA
  static bool attendance_loader = false;
  static bool orderPlace = false;
}

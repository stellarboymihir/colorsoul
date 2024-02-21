class Utils {
  static const String baseurl = "68.183.82.188";
  static const String testIpUrl = "68.183.81.169";
  static const String migraneIpUrl = "206.189.33.162";
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

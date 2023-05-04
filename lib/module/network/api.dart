class Api {
  static const String baseUrl =
      'http://watchedflix.com/apps/pflix/apps_tigamei';
  static const String baseUrlApp =
      'http://pinterstyles.com/appupdates/v1/api/apps_ads/';
  static const String homeVideos = '$baseUrl/api.php?home_videos';
  static const String allVideos = '$baseUrl/api.php?All_videos';
  static const String latestVideos = '$baseUrl/api.php?latest_video';
  static const String categoryList = '$baseUrl/api.php?cat_list';
  static const String videosListByCatId = '$baseUrl/api.php?cat_id=';
  static const String singleVideo = '$baseUrl/api.php?video_id=';
  static const String searchVideo = '$baseUrl/api.php?search_text=';
  static const String userRegister =
      '$baseUrl/api.php?user_register&name=admina&email=admincx@gmail.com&password=admin1233&phone=1256098765';
  static const String userLogin =
      '$baseUrl/api.php?users_login&email=adminfg@gmail.com&password=admin1233';
  static const String userProfile = '$baseUrl/api.php?user_profile&id=2';
  static const String userProfileUpdate =
      '$baseUrl/api.php?user_profile_update&user_id=37&name=John&email=john@gmail.com&password=123456&phone=1234567891';
  static const String userStatus = '$baseUrl/api.php?user_status&user_id=2';
  static const String forgotPassword = '$baseUrl/api.php?forgot_pass&email=';
  static const String rating =
      '$baseUrl/api.php?video_rate&device_id=123&post_id=8&user_id=10&rate=5';
  static const String userComment =
      '$baseUrl/api.php?video_comment&comment_text=nice video&user_name=Ashok&post_id=19';
  static const String appDetails = '$baseUrl/api.php?settings';
}

import 'package:get_storage/get_storage.dart';

class PreferenceManager {
  static GetStorage getStorage = GetStorage();

  static Future setEmail(String value) async {
    await getStorage.write('email', value);
  }

  static getEmail() {
    return getStorage.read('email');
  }

  static Future setImage(String value) async {
    await getStorage.write('image', value);
  }

  static getImage() {
    return getStorage.read('image');
  }

  static Future setUserType(String value) async {
    await getStorage.write('userType', value);
  }

  static getUserType() {
    return getStorage.read('userType');
  }

  static Future setPassword(var value) async {
    await getStorage.write('password', value);
  }

  static getPassword() {
    return getStorage.read('password');
  }

  static Future setUId(String value) async {
    await getStorage.write('uid', value);
  }

  static getUId() {
    return getStorage.read('uid');
  }

  static Future setWeight(String value) async {
    await getStorage.write('weight', value);
  }

  static getWeight() {
    return getStorage.read('weight');
  }

  static Future setProfilePic(String value) async {
    await getStorage.write('profile_pic', value);
  }

  static getProfilePic() {
    return getStorage.read('profile_pic');
  }

  static Future setAddress(String value) async {
    await getStorage.write('address', value);
  }

  static getAddress() {
    return getStorage.read('address');
  }

  static Future setUserName(String value) async {
    await getStorage.write('user_name', value);
  }

  static getUserName() {
    return getStorage.read('user_name');
  }

  static Future setFirstName(String value) async {
    await getStorage.write('first_name', value);
  }

  static getFirstName() {
    return getStorage.read('first_name');
  }

  static Future setLastName(String value) async {
    await getStorage.write('last_name', value);
  }

  static getLastName() {
    return getStorage.read('last_name');
  }

  static Future setDOB(String value) async {
    await getStorage.write('dob', value);
  }

  static getDOB() {
    return getStorage.read('dob');
  }

  static Future setPhoneNumber(String value) async {
    await getStorage.write('phoneno', value);
  }

  static getPhoneNumber() {
    return getStorage.read('phoneno');
  }

  static Future setTime(String value) async {
    await getStorage.write('time', value);
  }

  static getTime() {
    return getStorage.read('time');
  }

  static Future isSetLogin(bool value) async {
    await getStorage.write('login', value);
  }

  static isGetLogin() {
    return getStorage.read('login');
  }

  static Future isSetSubscriptionStartDate(String value) async {
    await getStorage.write('startDate', value);
  }

  static isGetSubscriptionStartDate() {
    return getStorage.read('startDate');
  }

  static Future isSetSubscriptionEndDate(String value) async {
    await getStorage.write('endDate', value);
  }

  static isGetSubscriptionEndDate() {
    return getStorage.read('endDate');
  }

  static Future isSetSubscriptionPlan(String value) async {
    await getStorage.write('plan', value);
  }

  static isGetSubscriptionPlan() {
    return getStorage.read('plan');
  }

  static Future<void> clearData() async {
    // await getStorage.erase();
    await getStorage.remove('email');
    await getStorage.remove('userType');
    await getStorage.remove('password');
    await getStorage.remove('phoneno');
    await getStorage.remove('user_name');
    await getStorage.remove('first_name');
    await getStorage.remove('last_name');
    await getStorage.remove('dob');
    await getStorage.remove('weight');
    await getStorage.remove('address');
    await getStorage.remove('image');
    await getStorage.remove('uid');
    await getStorage.remove('profile_pic');
    await getStorage.remove('startDate');
    await getStorage.remove('endDate');
    await getStorage.remove('plan');
  }
}

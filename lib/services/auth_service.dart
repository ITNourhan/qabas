//import 'package:http/http.dart' as http;

class AuthService {
  Future<bool> login(String userType, String username, String password) async {
    switch (userType) {
      case 'كإداري':
        return username == 'admin' && password == 'admin';
      case 'كمعلم':
        return username == 'teacher' && password == 'teacher';
      case 'كولي أمر':
        return username == 'parent' && password == 'parent';
      case 'كطالب':
        return username == 'student' && password == 'student';
      default:
        return false;
    }
  }
}
//   // Use this URL when running on an Android emulator
//   static const String baseUrl = 'http://192.168.56.1:8080';
  
//   // Use this URL when running on Windows or web
//   // static const String baseUrl = 'http://localhost:8080';

//   Future<bool> loginAdmin(String username, String password) async {
//     // try {
//     //   final response = await http.post(
//     //     Uri.parse('$baseUrl/login'),
//     //     body: {
//     //       'username': username,
//     //       'password': password,
//     //     },
//     //   );

//     //   print('Response status: ${response.statusCode}');
//     //   print('Response body: ${response.body}');

//     //   return response.statusCode == 200 && response.body == 'Login successful';
//     // } catch (e) {
//     //   print('Error during login: $e');
//     //   return false;
//         return username == 'admin' && password == 'admin';
//     }
// }

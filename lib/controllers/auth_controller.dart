import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class AuthController extends GetxController {
  FirebaseAuth auth = FirebaseAuth.instance;
  var isLoading = false.obs;
  var verificationId = ''.obs;

  // Login Method
  Future<void> login(String email, String password) async {
    isLoading.value = false;
    try {
      await auth.signInWithEmailAndPassword(email: email, password: password);
      Get.snackbar('Login Success', 'Welcome back!');
    } on FirebaseAuthException catch (e) {
  String errorMsg;

  switch (e.code) {
    case 'invalid-email':
      errorMsg = 'The email address is not valid.';
      break;
    case 'user-not-found':
      errorMsg = 'No user found with this email.';
      break;
    case 'wrong-password':
      errorMsg = 'The password is incorrect.';
      break;
    case 'email-already-in-use':
      errorMsg = 'This email is already in use.';
      break;
    case 'weak-password':
      errorMsg = 'Password should be at least 6 characters.';
      break;
    default:
      errorMsg = e.message ?? 'An unknown error occurred.';
  }

  Get.snackbar(
    'Login Failed',
    errorMsg,
    snackPosition: SnackPosition.BOTTOM,
    backgroundColor: Colors.redAccent,
    colorText: Colors.white,
  );
} finally {
      isLoading.value = false;
    }
  }

  // Signup Method
  Future<void> signup(String email, String password) async {
    isLoading.value = true;
    try {
      await auth.createUserWithEmailAndPassword(email: email, password: password);
      Get.snackbar('Signup Success', 'Welcome!');
    } on FirebaseAuthException catch (e) {
  String errorMsg;

  switch (e.code) {
    case 'invalid-email':
      errorMsg = 'The email address is not valid.';
      break;
    case 'user-not-found':
      errorMsg = 'No user found with this email.';
      break;
    case 'wrong-password':
      errorMsg = 'The password is incorrect.';
      break;
    case 'email-already-in-use':
      errorMsg = 'This email is already in use.';
      break;
    case 'weak-password':
      errorMsg = 'Password should be at least 6 characters.';
      break;
    default:
      errorMsg = e.message ?? 'An unknown error occurred.';
  }

  Get.snackbar(
    'Signup Failed',
    errorMsg,
    snackPosition: SnackPosition.BOTTOM,
    // backgroundColor: Colors.redAccent,
    // colorText: Colors.white,
  );
}
  }
// phone number verification
  Future<void> verifyPhone(String phoneNumber) async {
    isLoading.value = true;
    try {
      await auth.verifyPhoneNumber(
        phoneNumber: phoneNumber,
        timeout: const Duration(seconds: 60),

        //  This callback runs when the code is sent to the phone
        codeSent: (String verId, int? resendToken) {
          verificationId.value = verId;
          Get.snackbar('OTP Sent', 'Check your phone for the code');
        },

        //  Auto verify (on some phones)
        verificationCompleted: (PhoneAuthCredential credential) async {
          await auth.signInWithCredential(credential);
          Get.snackbar('Login Success', 'Phone number automatically verified!');
        },

        //  If something goes wrong
        verificationFailed: (FirebaseAuthException e) {
          Get.snackbar('Verification Failed', e.message ?? 'Error');
        },

        //  If timeout happens
        codeAutoRetrievalTimeout: (String verId) {
          verificationId.value = verId;
          Get.snackbar('Timeout', 'Please enter the code manually');
        },
      );
    } catch (e) {
      Get.snackbar('Error', e.toString());
    } finally {
      isLoading.value = false;
    }
  }

   Future<void> verifyOTP(String smsCode) async {
    isLoading.value = true;
    try {
      PhoneAuthCredential credential = PhoneAuthProvider.credential(
        verificationId: verificationId.value,
        smsCode: smsCode,
      );

      await auth.signInWithCredential(credential);
      Get.snackbar('Login Success', 'Welcome!');
    } catch (e) {
      Get.snackbar('Login Failed', e.toString());
    } finally {
      isLoading.value = false;
    }
  }
  // Logout
  void logout() async {
    await auth.signOut();
    Get.offAllNamed('/login');
  }
}

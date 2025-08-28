// auth.dart

// In-memory database
Map<String, Map<String, String>> userDatabase = {};
Map<String, String>? currentUser;

// -------------------
// REGISTER USER
// -------------------
bool registerUser({
  required String email,
  required String password,
  required String phone,
}) {
  if (userDatabase.containsKey(email)) {
    // Email already exists
    return false;
  }
  userDatabase[email] = {
    "email": email,
    "password": password,
    "phone": phone,
  };
  return true;
}

// -------------------
// LOGIN USER
// -------------------
bool loginUser({
  required String email,
  required String password,
}) {
  if (userDatabase.containsKey(email) &&
      userDatabase[email]!['password'] == password) {
    currentUser = userDatabase[email]; // Keep in memory
    return true;
  }
  return false;
}

// -------------------
// LOGOUT USER
// -------------------
void logoutUser() {
  currentUser = null;
}

// -------------------
// GET CURRENT USER
// -------------------
Map<String, String>? getCurrentUser() {
  return currentUser;
}

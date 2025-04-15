class UserRoleChecker {
  static bool isOrganizer(String? role) {
    return role == "President" || role == "VP";
  }
}

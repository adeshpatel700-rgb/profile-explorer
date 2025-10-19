import 'package:flutter/material.dart';
import '../services/api_service.dart';
import '../../models/user_profile.dart';

class ProfileProvider extends ChangeNotifier {
  final ApiService _apiService = ApiService();

  List<UserProfile> _profiles = [];
  bool _isLoading = false;
  String? _error;

  // Getters
  List<UserProfile> get profiles => _profiles;
  bool get isLoading => _isLoading;
  String? get error => _error;

  // Fetch profiles from API
  Future<void> fetchProfiles() async {
    _isLoading = true;
    _error = null;
    notifyListeners();

    try {
      _profiles = await _apiService.fetchProfiles(results: 20);
      _error = null;
    } catch (e) {
      _error = e.toString();
      _profiles = [];
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }

  // Toggle like status
  void toggleLike(String profileId) {
    final index = _profiles.indexWhere((p) => p.id == profileId);
    if (index != -1) {
      _profiles[index].isLiked = !_profiles[index].isLiked;
      notifyListeners();
    }
  }

  // Get single profile by ID
  UserProfile? getProfileById(String id) {
    try {
      return _profiles.firstWhere((p) => p.id == id);
    } catch (e) {
      return null;
    }
  }
}

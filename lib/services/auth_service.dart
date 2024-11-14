import 'package:supabase_flutter/supabase_flutter.dart';

class AuthService {
  final SupabaseClient _supabase = Supabase.instance.client;

  Future<bool> signIn(String email, String password) async {
    final response = await _supabase.auth.signInWithPassword(email: email, password: password);
    return response.session == null;
  }

  Future<bool> signUp(String email, String password) async {
    final response = await _supabase.auth.signUp(email: email, password: password);
    return response.session == null;
  }

  Future<void> signOut() async {
    await _supabase.auth.signOut();
  }
}

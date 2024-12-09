import 'package:supabase_flutter/supabase_flutter.dart' hide Provider;

export 'database/database.dart';

String _kSupabaseUrl = 'https://bnpkjkiolqsclibjjrbp.supabase.co';
String _kSupabaseAnonKey =
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImJucGtqa2lvbHFzY2xpYmpqcmJwIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MjcyOTE1ODcsImV4cCI6MjA0Mjg2NzU4N30.9JjI4tpTZCRJ8bc6LrCRnqUhAdZIrUjmGYMi-UhEoZ8';

class SupaFlow {
  SupaFlow._();

  static SupaFlow? _instance;
  static SupaFlow get instance => _instance ??= SupaFlow._();

  final _supabase = Supabase.instance.client;
  static SupabaseClient get client => instance._supabase;

  static Future initialize() => Supabase.initialize(
        url: _kSupabaseUrl,
        anonKey: _kSupabaseAnonKey,
        debug: false,
      );
}

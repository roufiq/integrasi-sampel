import 'package:supabase_flutter/supabase_flutter.dart' hide Provider;

export 'database/database.dart';

String _kSupabaseUrl = 'https://hhqgxqjtvlgbtlpvggdg.supabase.co';
String _kSupabaseAnonKey =
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImhocWd4cWp0dmxnYnRscHZnZ2RnIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MjM2MjA0MjUsImV4cCI6MjAzOTE5NjQyNX0.PxY9eQ-oS9jjZKeGJyyL80CfOfWy0r58-YbMQUBAzM8';

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

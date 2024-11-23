import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import '../services/api_service.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final supabase = Supabase.instance.client;
  final apiService = ApiService();
  String _response = '';

  Future<void> _testPing() async {
    try {
      final response = await apiService.ping();
      setState(() => _response = 'Ping response: $response');
    } catch (e) {
      setState(() => _response = 'Error: $e');
    }
  }

  Future<void> _testAuthPing() async {
    try {
      final response = await apiService.pingAuthenticated();
      setState(() => _response = 'Auth ping response: $response');
    } catch (e) {
      setState(() => _response = 'Error: $e');
    }
  }

  Future<void> _signOut() async {
    await supabase.auth.signOut();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        actions: [
          IconButton(
            icon: const Icon(Icons.logout),
            onPressed: _signOut,
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(_response),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: _testPing,
              child: const Text('Test Basic Ping'),
            ),
            const SizedBox(height: 8),
            ElevatedButton(
              onPressed: _testAuthPing,
              child: const Text('Test Auth Ping'),
            ),
          ],
        ),
      ),
    );
  }
}

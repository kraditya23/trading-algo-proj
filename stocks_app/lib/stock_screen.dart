import 'dart:convert';
import 'package:flutter/material.dart';
import 'api_service.dart';

class StockScreen extends StatefulWidget {
  @override
  _StockScreenState createState() => _StockScreenState();
}

class _StockScreenState extends State<StockScreen> {
  String _symbol = "NVDA";
  String? _imageBase64;
  bool _loading = false;

  Future<void> _fetchGraph() async {
    setState(() => _loading = true);
    try {
      final image = await ApiService.fetchStockGraph(_symbol, "6mo");
      setState(() => _imageBase64 = image);
    } catch (e) {
      print(e);
    }
    setState(() => _loading = false);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Stock Graph Viewer")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(labelText: "Enter Company Symbol"),
              onChanged: (value) => _symbol = value,
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: _fetchGraph,
              child: Text("Fetch Graph"),
            ),
            SizedBox(height: 20),
            _loading
                ? CircularProgressIndicator()
                : _imageBase64 != null
                    ? Image.memory(base64Decode(_imageBase64!))
                    : Text("Enter a company symbol to view graph")
          ],
        ),
      ),
    );
  }
}
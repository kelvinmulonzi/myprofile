import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

// BaseOptions configuration for Dio
final options = BaseOptions(
  baseUrl: 'https://fakestoreapi.com/products',
  connectTimeout: const Duration(seconds: 5000),
);

Dio dio = Dio(options);

Future<List> getProducts() async {
  try {
    var response = await dio.get('');
    if (response.statusCode == 200) {
      return response.data;
    } else {
      throw Exception(
          'Failed to load products. Status Code: ${response.statusCode}');
    }
  } catch (e) {
    if (e is DioException) {
      print('DioException: ${e.message}');
    } else {
      print('Error: $e');
    }
    rethrow;
  }
}

Future<dynamic> getProductById(String id) async {
  print("Fetching product with: $id");
  try {
    var response = await dio.get('/$id');
    if (response.statusCode == 200) {
      return response.data;
    } else {
      throw Exception(
          'Failed to fetch product. Status Code: ${response.statusCode}');
    }
  } catch (e) {
    print("Error from getProductById: $e");
    if (e is DioException) {
      print('DioException: ${e.message}');
    }
    rethrow;
  }
}

// Main widget
void main() {
  runApp(MaterialApp(
    home: ApiCall(),
  ));
}

class ApiCall extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Fake Store API Products"),
      ),
      body: FutureBuilder<List>(
        future: getProducts(),
        builder: (context, snapshot) {
          // While loading
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          }
          // If error occurs
          else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          }
          // If data is successfully fetched
          else if (snapshot.hasData) {
            final products = snapshot.data!;
            return ListView.builder(
              itemCount: products.length,
              itemBuilder: (context, index) {
                final product = products[index];
                return ListTile(
                  leading: Image.network(
                    product['image'],
                    width: 50,
                    height: 80,

                  ),
                  title: Text(product['title']),
                  subtitle: Text('\$${product['price']}'),
                );
              },
            );
          }
          else {
            return Center(child: Text('No products found'));
          }
        },
      ),
    );
  }
}

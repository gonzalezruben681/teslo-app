import 'package:dio/dio.dart';
import 'package:teslo_shop/config/constants/environment.dart';
import 'package:teslo_shop/features/products/domain/domain.dart';
import 'package:teslo_shop/features/products/infrastructure/models/product_model.dart';

class ProductsDtasourceImpl extends ProductsDataSource {
  late final Dio dio;
  final String accessToken;

  ProductsDtasourceImpl({required this.accessToken})
      : dio = Dio(BaseOptions(baseUrl: Environment.apiUrl, headers: {
          "Authorization": "Bearer $accessToken",
        }));
  @override
  Future<Product> createUpdateProduct(Map<String, dynamic> productLike) {
    // TODO: implement createUpdateProduct
    throw UnimplementedError();
  }

  @override
  Future<Product> getProductsById(String id) {
    // TODO: implement getProductsById
    throw UnimplementedError();
  }

  @override
  Future<List<Product>> getProductsByPage({int limit = 10, offset = 0}) async {
    final reponse =
        await dio.get<List>('/products?limit=$limit&offset=$offset');
    final List<Product> products = [];
    for (final product in reponse.data ?? []) {
      products.add(ProductModel.jsonToEntity(product));
    }
    return products;
  }

  @override
  Future<List<Product>> searchProductByTerm(String term) {
    // TODO: implement searchProductByTerm
    throw UnimplementedError();
  }
}

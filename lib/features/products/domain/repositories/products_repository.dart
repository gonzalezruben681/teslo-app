import 'package:teslo_shop/features/products/domain/entities/product.dart';

abstract class ProductsRepository {
  Future<Product> getProductsById(String id);
  Future<Product> createUpdateProduct(Map<String, dynamic> productLike);
  Future<List<Product>> getProductsByPage({int limit = 10, offset = 0});
  Future<List<Product>> searchProductByTerm(String term);
}

import 'package:teslo_shop/features/products/domain/domain.dart';

class ProductsRepositoryImpl extends ProductsRepository {
  final ProductsDataSource dataSource;

  ProductsRepositoryImpl(this.dataSource);

  @override
  Future<Product> createUpdateProduct(Map<String, dynamic> productLike) {
    return dataSource.createUpdateProduct(productLike);
  }

  @override
  Future<Product> getProductsById(String id) {
    return dataSource.getProductsById(id);
  }

  @override
  Future<List<Product>> getProductsByPage({int limit = 10, offset = 0}) {
    return dataSource.getProductsByPage(limit: limit, offset: offset);
  }

  @override
  Future<List<Product>> searchProductByTerm(String term) {
    return dataSource.searchProductByTerm(term);
  }
}

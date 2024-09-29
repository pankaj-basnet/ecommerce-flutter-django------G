import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:http/http.dart' as http;
import 'package:videosharing/common/utils/enums.dart'; // isn= {sn= QueryType}
import 'package:videosharing/common/utils/environment.dart';
import 'package:videosharing/const/constants.dart';
import 'package:videosharing/src/categories/hook/results/categories_results.dart';
import 'package:videosharing/src/categories/hook/results/category_products_results.dart'; // { FetchProduct sn= }
import 'package:videosharing/src/categories/models/categories_model.dart';
import 'package:videosharing/src/products/models/products_model.dart'; // { Products sn= }

FetchProduct fetchProducts(QueryType queryType) {
  final products = useState<List<Products>>([]);
  final isLoading = useState(false);
  final error = useState<String?>(null);

  Future<void> fetchData() async {
    isLoading.value = true;
    Uri url;

    try {
      switch (queryType) {
        case QueryType.all:
          url = Uri.parse('${Environment.appBaseUrl}/api/products/');
          break;
        case QueryType.popular:
          url = Uri.parse('${Environment.appBaseUrl}/api/products/popular');
          break;
        case QueryType.unisex:
          url = Uri.parse(
              '${Environment.appBaseUrl}/api/products/byType/?clothesType=${queryType.name}');
          break;
        case QueryType.men:
          url = Uri.parse(
              '${Environment.appBaseUrl}/api/products/byType/?clothesType=${queryType.name}');
          break;
        case QueryType.women:
          url = Uri.parse(
              '${Environment.appBaseUrl}/api/products/byType/?clothesType=${queryType.name}');
          break;
        case QueryType.kids:
          url = Uri.parse(
              '${Environment.appBaseUrl}/api/products/byType/?clothesType=${queryType.name}');
          break;
      }

      final response = await http.get(url);

      if (response.statusCode == 200) {
        products.value = productsFromJson(response.body);
      }
    } catch (e) {
      error.value = e.toString();
    } finally {
      isLoading.value = false;
    }
  }

  useEffect(() { 
    // useEffect will run whenever "categories page" will run isn= {{explaination 2 --- time 1hr-15-m--V2--- useEffect run whenever there is change in index of queryType}} ---  
    fetchData();
    print('---useEffect---D:\src_dev\z--proj\ecommerce-flutter-django-dbestech--\videosharing\lib\src\products\hooks\fetch_products.dart----');
    return;
  },  [queryType.index]);

  void refetch() { // {time v2--1hr-11m sn=}
    isLoading.value = true;
    fetchData();
    print('REFETCH RAN----D:\src_dev\z--proj\ecommerce-flutter-django-dbestech--\videosharing\lib\src\products\hooks\fetch_products.dart');
  }

  return FetchProduct(
    products: products.value,
    isLoading: isLoading.value,
    error: error.value,
    refetch: refetch,
  );
}

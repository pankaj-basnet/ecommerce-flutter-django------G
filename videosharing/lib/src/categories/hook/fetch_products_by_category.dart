import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:http/http.dart' as http;
import 'package:videosharing/common/utils/environment.dart';
import 'package:videosharing/src/categories/hook/results/categories_results.dart';
import 'package:videosharing/src/categories/hook/results/category_products_results.dart';
import 'package:videosharing/src/categories/models/categories_model.dart';
import 'package:videosharing/src/products/models/products_model.dart'; // isn= {sn= Products}

FetchProduct fetchProductsByCategories(int category_id) {
  final products = useState<List<Products>>([]);
  final isLoading = useState(false);
  final error = useState<String?>(null);

  Future<void> fetchData() async {
    isLoading.value = true;

    try {
      Uri url = Uri.parse('${Environment.appBaseUrl}/api/products/category/?category=$category_id');

      final response = await http.get(url);

      if (response.statusCode == 200) {
        products.value = productsFromJson(response.body);
      }
    } catch (e) {
      error.value = e.toString();
      print(e.toString());

    } finally {
      isLoading.value = false;
    }
  }

  useEffect(() { // useEffect will run whenever "categories page" will run isn=
    fetchData();
    return;
  }, const []);

  void refetch() {
    isLoading.value = true;
    fetchData();
  }

  return FetchProduct(
    products: products.value,
    isLoading: isLoading.value,
    error: error.value,
    refetch: refetch,
  );
}

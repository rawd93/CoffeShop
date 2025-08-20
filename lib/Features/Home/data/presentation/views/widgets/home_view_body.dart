import 'package:coffe_shop_project/Features/Home/data/Product_service.dart';
import 'package:coffe_shop_project/Features/Home/data/models/product_model.dart';
import 'package:coffe_shop_project/Features/Home/data/presentation/views/widgets/AppBar.dart';
import 'package:coffe_shop_project/Features/Home/data/presentation/views/widgets/Feature_Listofcoffe.dart';
import 'package:coffe_shop_project/Features/Home/data/presentation/views/widgets/custom_scroll.dart';
import 'package:coffe_shop_project/core/Funiction/all_products.dart';
import 'package:coffe_shop_project/core/constant.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatefulWidget {
  const HomeViewBody({super.key, this.product});
  final Product? product;

  @override
  State<HomeViewBody> createState() => _HomeViewBodyState();
}

class _HomeViewBodyState extends State<HomeViewBody> {
  int selectedcategory = 0;

  @override
  void initState() {
    super.initState();
    addproducts();
  }

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Stack(
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.30,
                color: Colors.black,
              ),
              const AppBarWidget(),
            ],
          ),
        ),
        SliverToBoxAdapter(
          child: FeatureListOfCoffe(
            selectIndex: selectedcategory,
            onselctedCategory: (index) {
              setState(() {
                selectedcategory = index;
              });
            },
          ),
        ),
        FutureBuilder<List<Product>>(
          future: ProductService().getproducts(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const SliverFillRemaining(
                hasScrollBody: false,
                child: Center(child: CircularProgressIndicator()),
              );
            } else if (snapshot.hasError) {
              return SliverFillRemaining(
                hasScrollBody: false,
                child: Center(child: Text('Error: ${snapshot.error}')),
              );
            } else if (snapshot.hasData && snapshot.data != null) {
              final products = snapshot.data!;
              final filteredProducts = selectedcategory == 0
                  ? products
                  : products.where((product) {
                      return product.category.contains(
                        coffeeCategories[selectedcategory],
                      );
                    }).toList();
              return SliverList(
                delegate: SliverChildBuilderDelegate((context, index) {
                  final product = filteredProducts[index];
                  return CustomScroll(products: filteredProducts);
                }, childCount: filteredProducts.length),
              );
            } else {
              return const SliverFillRemaining(
                hasScrollBody: false,
                child: Center(child: Text('لم يتم العثور على بيانات')),
              );
            }
          },
        ),
      ],
    );
  }
}

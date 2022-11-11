import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_cubit_bloc_poc/presentation/home/call_plan_screen.dart';

class ProductDetailScreen extends StatefulWidget {
  const ProductDetailScreen({Key? key}) : super(key: key);

  @override
  State<ProductDetailScreen> createState() => _ProductDetailScreenState();
}

class _ProductDetailScreenState extends State<ProductDetailScreen> {
  ProductDetailVM detailVM = ProductDetailVM(
      0,
      "Full Fibre 36",
      "Say hello to your new home broadband HQ. Easy to set up, this powerful router delivers fast WiFi speeds around your home."
          " It also keeps a check on performance, connecting your devices to the fastest WiFi channel available. "
          "And with the clever EE app you can pause the WiFi, turn on parental controls and much more.",
      "assets/images/product1.png",
      [
        ProductDetailVM(0, "£10/monthly", "24 month contract",
            "assets/images/other_product.png", []),
        ProductDetailVM(0, "£10/monthly", "24 month contract",
            "assets/images/other_product.png", []),
        ProductDetailVM(0, "£10/monthly", "24 month contract",
            "assets/images/other_product.png", [])
      ]);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        toolbarHeight: 80,
        title: Text(
          detailVM.title,
          style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
        ),
        iconTheme:
            IconTheme.of(context).copyWith(color: "#FFFFFF".hexToColor()),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(24),
                bottomRight: Radius.circular(24)),
            color: "#007B85".hexToColor(),
          ),
        ),
        systemOverlayStyle: SystemUiOverlayStyle.light,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "What’s included in your plan:",
                    style: TextStyle(
                      fontWeight: FontWeight.w900,
                      color: "#3C3D41".hexToColor(),
                      fontSize: 22,
                    ),
                  ),
                  const SizedBox(height: 20.0),
                  Image.asset('assets/images/product1.png'),
                  const SizedBox(height: 20.0),
                  DefaultTabController(
                    length: 2,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        TabBar(
                          tabs: const [
                            Tab(text: "Smart Hub"),
                            Tab(text: "Speed Guarantee"),
                          ],
                          labelStyle: const TextStyle(
                            fontSize: 20.0,
                            height: 1.8,
                            fontWeight: FontWeight.bold,
                          ),
                          indicatorSize: TabBarIndicatorSize.label,
                          indicatorColor: "#007B85".hexToColor(),
                          indicatorWeight: 0.5,
                          labelColor: "#007B85".hexToColor(),
                          unselectedLabelColor: "#6D6E71".hexToColor(),
                          padding: EdgeInsets.zero,
                          labelPadding: EdgeInsets.zero,
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 20.0),
                          height: MediaQuery.of(context).size.height / 6,
                          child: TabBarView(
                            children: [
                              Text(
                                detailVM.description,
                                style: TextStyle(
                                  height: 1.7,
                                  color: "#6D6E71".hexToColor(),
                                  fontSize: 14,
                                ),
                              ),
                              Text(
                                detailVM.description,
                                style: TextStyle(
                                  color: "#6D6E71".hexToColor(),
                                  fontSize: 14,
                                  height: 1.7,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Card(
                    elevation: 8.0,
                    margin: const EdgeInsets.only(
                      top: 30.0,
                      bottom: 20.0,
                    ),
                    color: "#3C3D41".hexToColor(),
                    shadowColor: "#007B85".hexToColor(),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                      side: BorderSide(
                        color: "#6D6E71".hexToColor(),
                        width: 1,
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 22.0,
                        vertical: 22.0,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Upfront costs",
                            style: TextStyle(
                              fontSize: 20.0,
                              height: 1.2,
                              fontWeight: FontWeight.bold,
                              color: "#FFFFFF".hexToColor(),
                            ),
                          ),
                          Text(
                            "These will be added to your first monthly bill.",
                            style: TextStyle(
                              fontSize: 14.0,
                              height: 1.4,
                              color: "#FFFFFF".hexToColor(),
                            ),
                          ),
                          const SizedBox(height: 30),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Post packaging",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16.0,
                                  color: "#FFE600".hexToColor(),
                                ),
                              ),
                              Text(
                                "£XX.xx",
                                style: TextStyle(
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.w500,
                                  color: "#FFFFFF".hexToColor(),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 50.0),
                  Text(
                    "Other plans",
                    style: TextStyle(
                      fontWeight: FontWeight.w900,
                      color: "#3C3D41".hexToColor(),
                      fontSize: 22,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 280,
              child: ListView.builder(
                shrinkWrap: true,
                padding: EdgeInsets.zero,
                scrollDirection: Axis.horizontal,
                itemCount: detailVM.otherPlans.length,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    width: MediaQuery.of(context).size.width / 1.6,
                    margin: EdgeInsets.only(left: index == 0 ? 20.0 : 10.0),
                    child: Card(
                      margin: const EdgeInsets.symmetric(
                        vertical: 15.0,
                        horizontal: 10.0,
                      ),
                      elevation: 0.0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                        // if you need this
                        side: BorderSide(
                          color: "#6D6E71".hexToColor(),
                          width: 1,
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 20.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Image.asset(
                              detailVM.otherPlans[index].productImg,
                              height: 160,
                            ),
                            Text(
                              detailVM.otherPlans[index].title,
                              style: TextStyle(
                                fontSize: 18.0,
                                height: 1.8,
                                fontWeight: FontWeight.w500,
                                color: "#6D6E71".hexToColor(),
                              ),
                            ),
                            Text(
                              detailVM.otherPlans[index].description,
                              style: TextStyle(
                                fontSize: 14.0,
                                height: 1.2,
                                color: "#6D6E71".hexToColor(),
                                fontWeight: FontWeight.w500,
                              ),
                              softWrap: true,
                              maxLines: 2,
                              textAlign: TextAlign.center,
                            )
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}

class ProductDetailVM {
  int id;
  String title;
  String description;
  String productImg;
  String amount = "0";
  List<ProductDetailVM> otherPlans = [];

  ProductDetailVM(
      this.id, this.title, this.description, this.productImg, this.otherPlans);
}

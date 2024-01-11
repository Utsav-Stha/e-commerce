import 'package:e_commerce/config/network/networkRequest.dart';
import 'package:e_commerce/core/app_constants/device_size.dart';
import 'package:e_commerce/core/widgets/custom_app_bar.dart';
import 'package:e_commerce/core/widgets/product_display_card.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    double height = DeviceSize.getHeight(context);
    return Scaffold(
      backgroundColor: const Color.fromRGBO(255, 100, 19, 0.1),
      appBar: PreferredSize(
        preferredSize: Size(double.infinity, height * 0.08),
        child: const CustomAppBar(),
      ),
      body: RefreshIndicator(
        onRefresh: () async {
          await NetworkRequest.getAllProduct();
        },
        child: FutureBuilder(
          future: NetworkRequest.getAllProduct(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return ListView(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                children: [
                  Container(
                    height: DeviceSize.getHeight(context) * 0.83,
                    child: ListView.builder(
                      // physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: snapshot.data?.length ?? 0,
                      itemBuilder: (context, index) {
                        Map<String, dynamic> retrievedData =
                            snapshot.data?[index];
                        return Padding(
                          padding: const EdgeInsets.all(14.0),
                          child: ProductDisplayCard(data: retrievedData),
                        );
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                      onPressed: () {},
                      child: const Padding(
                        padding: EdgeInsets.all(12.0),
                        child: Text('Checkout'),
                      ),
                    ),
                  ),
                ],
              );
            } else if (snapshot.hasError) {
              return Text(snapshot.error.toString());
            } else {
              return const Center(child: CircularProgressIndicator());
            }
          },
        ),
      ),
    );
  }
}

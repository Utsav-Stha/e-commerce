import 'package:e_commerce/config/network/networkRequest.dart';
import 'package:e_commerce/core/app_constants/device_size.dart';
import 'package:e_commerce/core/widgets/custom_app_bar.dart';
import 'package:e_commerce/core/widgets/product_display_card.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    double height =  DeviceSize.getHeight(context);
    return Scaffold(
      appBar: PreferredSize(preferredSize: Size(double.infinity, height*0.08), child: CustomAppBar()),
      body: RefreshIndicator(
        onRefresh: () async {
          await NetworkRequest.getAllProduct();
        },
        child: FutureBuilder(
          future: NetworkRequest.getAllProduct(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return ListView(
                children: [

                  ListView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: snapshot.data?.length ?? 0,
                    itemBuilder: (context, index) {
                      Map<String, dynamic> retrievedData =
                          snapshot.data?[index];
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ProductDisplayCard(data: retrievedData),
                      );
                    },
                  )
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

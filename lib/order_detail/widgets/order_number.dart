// ignore_for_file: deprecated_member_use

import 'package:dio/dio.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:torri_cantine_app/app/app_config.dart';
import 'package:torri_cantine_app/app/dependency_injection/dependency_factory_impl.dart';
import 'package:torri_cantine_app/my_orders/my_orders/list_all_orders/model/response/list_all_orders_response.dart';
import 'package:torri_cantine_app/app/common/utilities/tc_typography.dart';
import 'package:url_launcher/url_launcher.dart';

class OrderNumber extends StatefulWidget {
  Order order;
  OrderNumber({required this.order, super.key});

  @override
  State<OrderNumber> createState() => _OrderNumberState();
}

class _OrderNumberState extends State<OrderNumber> {

  bool isDisabled = false;

  void launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(
        url,
        enableJavaScript: true,
        forceSafariVC: true,
        forceWebView: true,
      );
    } else {
      throw 'Impossibile aprire $url';
    }
  }



  @override
  Widget build(BuildContext context) {

    var inputFormat = DateFormat('dd/MM/yyyy HH:mm');
    //var dateFormatted = inputFormat.parse('${widget.order.dateCreated}');


    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 20, left: 20),
          child: Row(
            children: <Widget>[
              Text("Ordine n. ${widget.order.id}",
                  style: TCTypography.of(context)
                      .text_18_bold
                      .copyWith(color: Colors.black)),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 5, left: 20),
          child: Row(
            children: [
              Text(
                "Data: ${widget.order.dateCreated}",
                style: TCTypography.of(context).text_14.copyWith(
                      color: const Color.fromARGB(255, 100, 100, 100),
                    ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 5, left: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Text(
                    "Stato: ",
                    style: TCTypography.of(context).text_14.copyWith(
                          color: const Color.fromARGB(255, 22, 137, 185),
                        ),
                  ),
                  Text(
                    " ${widget.order.status}",
                    style: TCTypography.of(context).text_14_bold.copyWith(
                          color: const Color.fromARGB(255, 22, 137, 185),
                        ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(right: 20),
                child: GestureDetector(
                  onTap: () async {

                    if(!isDisabled){
                      var codeInfo;
                      try {
                        final dep = DependencyFactoryImpl();
                        final Dio dio = dep.createDioForApiCart().dio;

                        codeInfo = await dio.request(
                          '/wp-json/wp/v2/get_track_link',
                          options: Options(
                            method: 'GET',
                          ),
                          queryParameters: {
                            "id": widget.order.id,
                          },
                        );

                        if (codeInfo.data != null && codeInfo.data != null) {
                          final trackLink = codeInfo.data;
                          if(trackLink == "notrack"){
                            setState(() {
                              isDisabled = true;
                            });
                            ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                              content: Text('Tracciamento non disponibile torna quando il tuo ordine verrà spedito'),
                              elevation: 1,
                            ));
                          }else{
                            launchURL(trackLink);
                          }
                        }

                      } catch (e) {}
                    }


                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.40,
                    height: 30,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(7),
                      color: isDisabled ? Colors.grey : const Color.fromARGB(255, 161, 29, 52),
                    ),
                    child: Center(
                      child: Text(
                        "TRACCIA ORDINE",
                        style: TCTypography.of(context).text_14_bold.copyWith(
                              color: const Color.fromARGB(255, 234, 237, 239),
                            ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

import 'package:configurable_expansion_tile_null_safety/configurable_expansion_tile_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:torri_cantine_app/app/common/utilities/tc_typography.dart';
import 'package:torri_cantine_app/product_detail/product_detail/product_detail_bloc.dart';

class DescriptionList extends StatefulWidget {
  const DescriptionList({super.key});

  @override
  State<DescriptionList> createState() => _DescriptionListState();
}
bool isExpanded=false;
class _DescriptionListState extends State<DescriptionList> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductDetailBloc, ProductDetailState>(
      builder: (context, state) => state.maybeWhen(
        loaded: (model) => ConfigurableExpansionTile(
          onExpansionChanged: (value) =>
      setState(() {
         isExpanded=value;
      }),
          header: (isExpanded, iconTurns, heightFactor, controller) => SizedBox(
            width: MediaQuery.of(context).size.width,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("DESCRIZIONE",
                      style: TCTypography.of(context).text_14_bold),
                  isExpanded==false?const Icon(Icons.add): const Icon(Icons.remove)
                ],
              ),
            ),
          ),
          childrenBody: Padding(
            padding: const EdgeInsets.only(left: 24.0, right: 24.0, top: 17),
            child: Column(
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                    child: Html(
                      data: model.description ?? "Descrizione non disponibile",
                    )
                ),
              ],
            ),
          ),
        ),
        orElse: () => const SizedBox(),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:torri_cantine_app/account/account/account_bloc.dart';
import 'package:torri_cantine_app/app/common/utilities/tc_typography.dart';

class AddressDelivery extends StatefulWidget {
  const AddressDelivery({super.key});

  @override
  State<AddressDelivery> createState() => _AddressDeliveryState();
}

class _AddressDeliveryState extends State<AddressDelivery> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AccountBloc, AccountState>(
      builder: (context, state) => state.maybeWhen(
        orElse: () => const SizedBox(),
        initial: () => const Center(
          child: CircularProgressIndicator(
            color: Color.fromARGB(255, 161, 29, 51),
          ),
        ),
        loading: () => const Center(
          child: CircularProgressIndicator(
            color: Color.fromARGB(255, 161, 29, 51),
          ),
        ),
        loaded: (model) => Padding(
          padding: const EdgeInsets.only(left: 20),
          child: model.user.first.billing!.address_1 == null ||
                  model.user.first.billing!.address_1 == ""
              ? const Center(
                  child: Text("Non ci sono indirizzi"),
                )
              : Column(
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 20),
                          child: Text("INDIRIZZO DI SPEDIZIONE",
                              style: TCTypography.of(context).text_18_bold),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 10.0),
                          child: Row(
                            children: [
                              SvgPicture.asset(
                                "assets/Account-indirizzi.svg",
                                // ignore: deprecated_member_use
                                color: Colors.grey,
                              ),
                              const SizedBox(width: 5),
                              Text(
                                  model.user.first.billing!.address_1
                                      .toString(),
                                  style: TCTypography.of(context).text_16_bold)
                            ],
                          ),
                        ),
                        Text(
                          "${model.user.first.billing!.first_name} ${model.user.first.billing!.last_name}",
                          style: TCTypography.of(context).text_14.copyWith(
                                color: const Color.fromARGB(255, 127, 127, 127),
                              ),
                        ),
                        Text(
                          model.user.first.billing!.address_2 ?? "",
                          style: TCTypography.of(context).text_14.copyWith(
                                color: const Color.fromARGB(255, 127, 127, 127),
                              ),
                        ),
                        Text(
                          "${model.user.first.billing!.city ?? ""}, ${model.user.first.billing!.postcode ?? ""}",
                          style: TCTypography.of(context).text_14.copyWith(
                                color: const Color.fromARGB(255, 127, 127, 127),
                              ),
                        ),
                        Text(
                          model.user.first.billing!.country ?? "",
                          style: TCTypography.of(context).text_14.copyWith(
                                color: const Color.fromARGB(255, 127, 127, 127),
                              ),
                        ),
                      ],
                    ),
                  ],
                ),
        ),
      ),
    );
  }
}

import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:torri_cantine_app/account/account/account_bloc.dart';
import 'package:torri_cantine_app/account/account/address/address_bloc.dart';
import 'package:torri_cantine_app/account/model/request/add_address_request.dart';
import 'package:torri_cantine_app/account/model/response/add_address_response.dart';
import 'package:torri_cantine_app/app/common/bottom_bar_items/bottom_bar.dart';
import 'package:torri_cantine_app/app/common/bottom_bar_items/floating_action_button.dart';
import 'package:torri_cantine_app/app/common/primary_button.dart';
import 'package:torri_cantine_app/app/common/sub_page_appbar.dart';
import 'package:torri_cantine_app/app/common/utilities/tc_typography.dart';
import 'package:torri_cantine_app/app/routing/auto_route/app_router.dart';
import 'package:torri_cantine_app/app/routing/main_navigation.dart';
import 'package:torri_cantine_app/menu_screen/menu_screen.dart';
import 'package:torri_cantine_app/utilities/local_storage.dart';

@RoutePage()
class AddressListScreen extends StatefulWidget {
  final int customerdId;
  const AddressListScreen({super.key, required this.customerdId});

  @override
  State<AddressListScreen> createState() => _AddressListScreenState();
}

class _AddressListScreenState extends State<AddressListScreen> {
  LocalStorage storage = LocalStorage();
  Map<int, bool> indFatturaExpandedMap = {};
  Map<int, bool> indSpedizioneExpandedMap = {};
  int? selectedBillingIndex;
  int? selectedShippingIndex;
  String? userEmail;

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) async {
      userEmail = await storage.getUserEmail() ?? "";
      if (mounted) {
        context.read<AccountBloc>().add(const AccountEvent.fetchAddress());

      }
    });
    super.initState();
  }

  @override
Widget build(BuildContext context) {
return PopScope(
  canPop: true,
  onPopInvokedWithResult: (didPop, _) {
      if(didPop){
        storage.setBottomTabState(4);
        context.read<AccountBloc>().add(AccountEvent.fetch(userEmail ?? ""));
    }
  },
  child: Container(
    color: const Color.fromARGB(255, 244, 244, 244),
    child: SafeArea(
      top: false,
      child: Scaffold(
        backgroundColor:const Color.fromARGB(255, 244, 244, 244),
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(60),
          child: SubPageAppbar(
            onTap: () {
              context.read<AccountBloc>().add(AccountEvent.fetch(userEmail ?? ""));
              context.router.popForced();
            },
            text: "I MIEI INDIRIZZI",
          ),
        ),
        // drawer: const Drawer(child: MenuScreen()),
        // floatingActionButtonLocation: FloatingActionButtonLocation.miniCenterDocked,
        // floatingActionButton: const FloatingButton(),
        // bottomNavigationBar: BottomBanvigationMenu(
        //   scaffoldKey: GlobalKey(),
        //   initialSelectedIndex: 0,
        //   context: context,
        // ),
        body: MultiBlocListener(
            listeners: [
              BlocListener<AccountBloc, AccountState>(
                listener: (context, state) {
                  state.maybeWhen<void>(
                    deletedAddress: () {
                      context.read<AccountBloc>().add(const AccountEvent.fetchAddress());
                    },
                    orElse: () {},
                  );
                },
              ),
            ],
            child:  BlocBuilder<AccountBloc, AccountState>(
              builder: (context, state) => state.maybeWhen(
                loading: () => const Center(
                  child: CircularProgressIndicator(
                    color: Color.fromARGB(255, 161, 29, 51),
                  ),
                ),
                loadedAddress: (model) {
                  if (model.billing.isNotEmpty) {
                    var billingElement = model.billing.firstWhere((e) => e.is_default, orElse: () => model.billing.first);
                    selectedBillingIndex = model.billing.indexOf(billingElement);
                  }

                  if (model.shipping.isNotEmpty) {
                    var shippingElement = model.shipping.firstWhere((e) => e.is_default, orElse: () => model.shipping.first);
                    selectedShippingIndex = model.shipping.indexOf(shippingElement);
                  }

                  if (model.shipping.isNotEmpty || model.billing.isNotEmpty) {
                    return Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            model.billing.isEmpty
                                ? GestureDetector(
                              onTap: (){
                                context.router.push(NewAddressFromAccountRoute(customerdId: widget.customerdId, editFatturazione: true, editShipping: false, returnPage:  "account", isNewAddress: true, subTotal: "", isFirstShippingAddress: model.shipping.isEmpty, isFirstBillingAddress: model.billing.isEmpty));
                              },
                                // MainNavigation.push(context, MainNavigation.newAddressFromAccount(widget.customerdId, true, false, null, "account", true,null, ""));},
                              child: const Row(
                                children: [
                                  Text(
                                    "Aggiungi un nuovo indirizzo di fatturazione",
                                    style: TextStyle(
                                      color: Color.fromARGB(255, 161, 29, 51),
                                    ),
                                  ),
                                  Icon(Icons.add, color: Color.fromARGB(255, 161, 29, 51))
                                ],
                              ),
                            )
                                : Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                Text(
                                  'Indirizzi di Fatturazione',
                                  style: TCTypography.of(context).text_18_bold,
                                ),
                                const SizedBox(height: 10),
                                model.billing.length == 1
                                    ? Column(
                                  children: [
                                    _buildBillingAddress(model.billing.first),
                                    GestureDetector(
                                      onTap: (){
                                        context.router.push(NewAddressFromAccountRoute(customerdId: widget.customerdId, editFatturazione: false, editShipping: false, returnPage:  "account", isNewAddress: true, subTotal: "null",isFirstShippingAddress: model.shipping.isEmpty, isFirstBillingAddress: model.billing.isEmpty));

                                        // MainNavigation.push(context, MainNavigation.newAddressFromAccount(widget.customerdId, false, false, null, "account", true,null, "null"));
                                      },
                                      child: const Row(
                                        children: [
                                          Text(
                                            "Aggiungi un nuovo indirizzo di fatturazione",
                                            style: TextStyle(
                                              color: Color.fromARGB(255, 161, 29, 51),
                                            ),
                                          ),
                                          Icon(Icons.add, color: Color.fromARGB(255, 161, 29, 51))
                                        ],
                                      ),
                                    ),
                                  ],
                                )
                                    : Column(
                                  children: [
                                    Column(
                                      children: List.generate(
                                          model.billing.length, (index) {
                                        return _buildAddressListItem(
                                          title: '${model.billing[index].address_1}, ${model.billing[index].city}',
                                          expanded: indFatturaExpandedMap[index] ?? false,
                                          onExpand: () {
                                            setState(() {
                                              indFatturaExpandedMap[index] =
                                              !(indFatturaExpandedMap[index] ?? false);
                                            });
                                          },
                                          content: _buildBillingAddress(model.billing[index]),
                                          isSelected: selectedBillingIndex == index,
                                          onSelected: () async {
                                            setState(() {
                                              selectedBillingIndex = index;
                                            });
                                            await _updateDefaultAddress(
                                                model.billing[index],
                                                "billing",
                                                model.billing[index].id
                                            );
                                          },
                                        );
                                      }),
                                    ),
                                    GestureDetector(
                                      onTap: (){
                                        context.router.push(NewAddressFromAccountRoute(customerdId: widget.customerdId, editFatturazione: true, editShipping: false, returnPage:  "account", isNewAddress: true, subTotal: "",isFirstShippingAddress: model.shipping.isEmpty, isFirstBillingAddress: model.billing.isEmpty));

                                        // MainNavigation.push(context, MainNavigation.newAddressFromAccount(widget.customerdId, true, false, null, "account", true,null, "null"));
                                      },
                                      child: const Row(
                                        children: [
                                          Text(
                                            "Aggiungi un nuovo indirizzo di fatturazione",
                                            style: TextStyle(
                                              color: Color.fromARGB(255, 161, 29, 51),
                                            ),
                                          ),
                                          Icon(Icons.add, color: Color.fromARGB(255, 161, 29, 51))
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                const Divider(),
                              ],
                            ),
                            model.shipping.isEmpty
                                ? GestureDetector(
                              onTap: (){
                                context.router.push(NewAddressFromAccountRoute(customerdId: widget.customerdId, editFatturazione: false, editShipping: true, returnPage:  "account", isNewAddress: true, subTotal: "",isFirstShippingAddress: model.shipping.isEmpty, isFirstBillingAddress: model.billing.isEmpty));

                                // MainNavigation.push(context, MainNavigation.newAddressFromAccount(widget.customerdId, false, true, null, "account", true,null, "null"));
                              },
                              child: const Row(
                                children: [
                                  Text(
                                    "Aggiungi un nuovo indirizzo di spedizione",
                                    style: TextStyle(
                                      color: Color.fromARGB(255, 161, 29, 51),
                                    ),
                                  ),
                                  Icon(Icons.add, color: Color.fromARGB(255, 161, 29, 51))
                                ],
                              ),
                            )
                                : Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                Text(
                                  'Indirizzi di Spedizione',
                                  style: TCTypography.of(context).text_18_bold,
                                ),
                                const SizedBox(height: 10),
                                model.shipping.length == 1
                                    ? Column(
                                  children: [
                                    _buildShippingAddress(model.shipping.first),
                                    GestureDetector(
                                      onTap: (){
                                        context.router.push(NewAddressFromAccountRoute(customerdId: widget.customerdId, editFatturazione: false, editShipping: false, returnPage:  "account", isNewAddress: true, subTotal: "",isFirstShippingAddress: model.shipping.isEmpty, isFirstBillingAddress: model.billing.isEmpty));

                                        // MainNavigation.push(context, MainNavigation.newAddressFromAccount(widget.customerdId, false, false, null, "account", true,null, "null"));
                                      },
                                      child: const Row(
                                        children: [
                                          Text(
                                            "Aggiungi un nuovo indirizzo di spedizione",
                                            style: TextStyle(
                                              color: Color.fromARGB(255, 161, 29, 51),
                                            ),
                                          ),
                                          Icon(Icons.add, color: Color.fromARGB(255, 161, 29, 51))
                                        ],
                                      ),
                                    ),
                                  ],
                                )
                                    : Column(
                                  children: [
                                    Column(
                                      children: List.generate(
                                          model.shipping.length, (index) {
                                        return _buildAddressListItem(
                                          title: '${model.shipping[index].address_1}, ${model.shipping[index].city}',
                                          expanded: indSpedizioneExpandedMap[index] ?? false,
                                          onExpand: () {
                                            setState(() {
                                              indSpedizioneExpandedMap[index] = !(indSpedizioneExpandedMap[index] ?? false);
                                            });
                                          },
                                          content: _buildShippingAddress(model.shipping[index]),
                                          isSelected: selectedShippingIndex == index,
                                          onSelected: () async {
                                            setState(() {
                                              selectedShippingIndex = index;
                                            });
                                            await _updateDefaultAddress(
                                                model.shipping[index],
                                                "shipping",
                                                model.shipping[index].id
                                            );
                                          },
                                        );
                                      }
                                      ),
                                    ),
                                    GestureDetector(
                                      onTap: (){
                                        context.router.push(NewAddressFromAccountRoute(customerdId: widget.customerdId, editFatturazione: false, editShipping: true, returnPage:  "account", isNewAddress: true, subTotal: "",isFirstShippingAddress: model.shipping.isEmpty, isFirstBillingAddress: model.billing.isEmpty));
                                        },
                                      child: const Row(
                                        children: [
                                          Text(
                                            "Aggiungi un nuovo indirizzo di spedizione",
                                            style: TextStyle(
                                              color: Color.fromARGB(255, 161, 29, 51),
                                            ),
                                          ),
                                          Icon(Icons.add, color: Color.fromARGB(255, 161, 29, 51))
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    );
                  } else {
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(bottom: 20.0),
                          child: Text(
                            "Nessun indirizzo trovato",
                          ),
                        ),
                        Center(
                          child: PrimaryButton(
                            text: "Aggiungi nuovo indirizzo",
                            colorText: Colors.white,
                            ontap: () {
                              context.router.push(NewAddressFromAccountRoute(customerdId: widget.customerdId, editFatturazione: false, editShipping: true, returnPage:  "account", isNewAddress: true, subTotal: "",isFirstShippingAddress: model.shipping.isEmpty, isFirstBillingAddress: model.billing.isEmpty));
                            },
                          ),
                        ),
                      ],
                    );
                  }
                },
                orElse: () => const SizedBox(),
              ),
            ))),
    ),
  ),
);
  }

  // Metodo per aggiornare l'indirizzo predefinito
  Future<void> _updateDefaultAddress(UserAddress address, String type, String id) async {

    context.router.replaceAll([const MainRoute(),AccountRoute(fromSecondPage: true)]);
    context.read<AccountBloc>().add(
        AccountEvent.updateAddress(
          AddAddressRequest(
            first_name: address.first_name,
            last_name: address.last_name,
            company: address.company,
            address_1: address.address_1,
            address_2: address.address_2,
            city: address.city,
            state: address.state,
            postcode: address.postcode,
            country: address.country,
            email: address.email,
            phone: address.phone,
            notes: "",
            type: type,
            is_default: true,
          ),
          id
        )
    );
    // context.read<AccountBloc>().add(AccountEvent.fetchAddress());
  }

  Widget _buildAddressListItem({
    required String title,
    required bool expanded,
    required VoidCallback onExpand,
    required Widget content,
    required bool isSelected,
    required VoidCallback onSelected,
  }) {
    return Column(
      children: [
        ListTile(
          leading: Radio<int>(
            value: 1,
            groupValue: isSelected ? 1 : 0,
            onChanged: (_) => onSelected(),
            activeColor: const Color.fromARGB(255, 161, 29, 51),
          ),
          title: Text(title),
          trailing: IconButton(
            icon: Icon(expanded ? Icons.expand_less : Icons.expand_more),
            onPressed: onExpand,
          ),
        ),
        if (expanded) content,
      ],
    );
  }

  Widget _buildBillingAddress(UserAddress billing) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text('Nome e Cognome: ${billing.first_name} ${billing.last_name}'),
        Text('Indirizzo: ${billing.address_1}, ${billing.address_2}'),
        Text('CAP: ${billing.postcode}, ${billing.city} (${billing.state})'),
        Text('Email: ${billing.email}'),
        Text('Telefono: ${billing.phone}'),
        const SizedBox(height: 10),
        PrimaryButton(
          text: "MODIFICA",
          colorText: Colors.white,
          ontap: () {
            context.router.push(NewAddressFromAccountRoute(customerdId: widget.customerdId, editFatturazione: billing.is_default, existingAddress: billing, editShipping: false, returnPage:  "account", isNewAddress: false, subTotal: "", isFirstShippingAddress: false, isFirstBillingAddress: false));
          },
        ),
        const SizedBox(
          height: 5,
        ),
        PrimaryButton(
          text: "Elimina",
          colorText: Colors.white,
          ontap: () async {
            context.read<AccountBloc>().add(
                AccountEvent.deleteAddress(
              AddAddressRequest(
                  first_name: billing.first_name,
                  last_name: billing.last_name,
                  company: billing.company,
                  address_1: billing.address_1,
                  address_2: billing.address_2,
                  city: billing.city,
                  state: billing.state,
                  postcode: billing.postcode,
                  country: billing.country,
                  email: billing.email,
                  phone: billing.phone,
                  notes: billing.notes,
                  type: "billing",
                  is_default: billing.is_default
              ),
                billing.id
            ));


          },
        ),
      ],
    );
  }

  Widget _buildShippingAddress(UserAddress shipping) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text('Nome e Cognome: ${shipping.first_name} ${shipping.last_name}'),
        Text('Indirizzo: ${shipping.address_1}, ${shipping.address_2}'),
        Text('CAP: ${shipping.postcode}, ${shipping.city} (${shipping.state})'),
        const SizedBox(height: 10),
        PrimaryButton(
          text: "MODIFICA",
          colorText: Colors.white,
          ontap: () {
            context.router.push(NewAddressFromAccountRoute(customerdId: widget.customerdId, editFatturazione: shipping.is_default,existingAddress: shipping, editShipping: false, returnPage:  "account", isNewAddress: false, subTotal: "", isFirstShippingAddress: false, isFirstBillingAddress: false));
          },
        ),
        const SizedBox(
          height: 5,
        ),
        PrimaryButton(
          text: "Elimina",
          colorText: Colors.white,
          ontap: ()  async {
            context.read<AccountBloc>().add(
                AccountEvent.deleteAddress(
                AddAddressRequest(
                    first_name: shipping.first_name,
                    last_name: shipping.last_name,
                    company: shipping.company,
                    address_1: shipping.address_1,
                    address_2: shipping.address_2,
                    city: shipping.city,
                    state: shipping.state,
                    postcode: shipping.postcode,
                    country: shipping.country,
                    email: shipping.email,
                    phone: shipping.phone,
                    notes: shipping.notes,
                    type: "shipping",
                    is_default: shipping.is_default
                ),
                shipping.id
            ));
          },
        ),
      ],
    );
  }
}
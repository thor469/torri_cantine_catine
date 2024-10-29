import 'dart:convert';
import 'dart:core';

import 'package:http_services/http_services.dart';
import 'package:torri_cantine_app/utilities/local_storage.dart';
import '../../../app/app_config.dart';
import '../../../app/dependency_injection/dependency_factory_impl.dart';


Future<List<PaymentGateway?>> processPaymentGateway() async {

  List<PaymentGateway?> sz = await payGatewayServices().getPayGateway();

  return sz;
}


class payGatewayServices {

  static DependencyFactoryImpl dep = DependencyFactoryImpl();
  Dio dio= dep.createDioForApi().dio;


  Future<List<PaymentGateway?>> getPayGateway() async {

    List<PaymentGateway?> pg = [];

    // List<int> wl = [];
    // wl = await wishList.getWishList() ?? [];

    // print('${AppConfig.baseUrl}/wp-json/wc/v3/shipping/zones/');
    // print(dio.options.baseUrl);
    // print(dio.options.headers);

    var response = await dio.request(
      '/wp-json/wc/v3/payment_gateways?orderby=order&order=asc',
      options: Options(
        method: 'GET',
      ),
    );

    if (response.statusCode == 200) {
      //print(json.encode(response.data));
      List resData = response.data;
      int idx=0;
      for(idx=0;idx<resData.length;idx++) {
        if(response.data[idx]['enabled']) {
          pg.add(PaymentGateway.fromJson(response.data[idx]));
        }

      }

    }
    else {
      print(response.statusMessage);
    }

    // print('//getShippingZones');
    // print(zones);

    return pg;
  }

}










// ### FACTORIES #####################################





class PaymentGateway {
  String? id;
  String? title;
  String? description;
  String? order;
  bool? enabled;
  String? methodTitle;
  String? methodDescription;
  List<String>? methodSupports;
  //GatewaySettings? settings;
  bool? needsSetup;
  List<Null>? postInstallScripts;
  String? settingsUrl;
  String? connectionUrl;
  String? setupHelpText;
  List<String>? requiredSettingsKeys;

  PaymentGateway({this.id, this.title, this.description, this.order, this.enabled, this.methodTitle, this.methodDescription, this.methodSupports,
    //this.settings,
    this.needsSetup, this.postInstallScripts, this.settingsUrl, this.connectionUrl, this.setupHelpText, this.requiredSettingsKeys});

  PaymentGateway.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    description = json['description'];
    order = json['order'];
    enabled = json['enabled'];
    methodTitle = json['method_title'];
    methodDescription = json['method_description'];
    methodSupports = json['method_supports'].cast<String>();
    //settings = json['settings'] != null ? new GatewaySettings.fromJson(json['settings']) : null;
    needsSetup = json['needs_setup'];

    settingsUrl = json['settings_url'];
    connectionUrl = json['connection_url'];
    setupHelpText = json['setup_help_text'];
    requiredSettingsKeys = json['required_settings_keys'].cast<String>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['title'] = this.title;
    data['description'] = this.description;
    data['order'] = this.order;
    data['enabled'] = this.enabled;
    data['method_title'] = this.methodTitle;
    data['method_description'] = this.methodDescription;
    data['method_supports'] = this.methodSupports;
    // if (this.settings != null) {
    //   data['settings'] = this.settings!.toJson();
    // }
    data['needs_setup'] = this.needsSetup;

    data['settings_url'] = this.settingsUrl;
    data['connection_url'] = this.connectionUrl;
    data['setup_help_text'] = this.setupHelpText;
    data['required_settings_keys'] = this.requiredSettingsKeys;
    return data;
  }
}
class GatewaySettings {
  Title? title;
  Title? apiCredentials;
  Title? testmode;
  Title? testPublishableKey;
  Title? testSecretKey;
  Title? publishableKey;
  Title? secretKey;
  Title? webhook;
  Title? testWebhookSecret;
  Title? webhookSecret;
  Title? inlineCcForm;
  Title? statementDescriptor;
  Title? shortStatementDescriptor;
  Title? capture;
  Title? paymentRequest;
  Title? savedCards;
  Title? logging;
  Title? upeCheckoutExperienceEnabled;

  GatewaySettings({this.title, this.apiCredentials, this.testmode, this.testPublishableKey, this.testSecretKey, this.publishableKey, this.secretKey, this.webhook, this.testWebhookSecret, this.webhookSecret, this.inlineCcForm, this.statementDescriptor, this.shortStatementDescriptor, this.capture, this.paymentRequest, this.savedCards, this.logging, this.upeCheckoutExperienceEnabled});

  GatewaySettings.fromJson(Map<String, dynamic> json) {
    title = json['title'] != null ? new Title.fromJson(json['title']) : null;
    apiCredentials = json['api_credentials'] != null ? new Title.fromJson(json['api_credentials']) : null;
    testmode = json['testmode'] != null ? new Title.fromJson(json['testmode']) : null;
    testPublishableKey = json['test_publishable_key'] != null ? new Title.fromJson(json['test_publishable_key']) : null;
    testSecretKey = json['test_secret_key'] != null ? new Title.fromJson(json['test_secret_key']) : null;
    publishableKey = json['publishable_key'] != null ? new Title.fromJson(json['publishable_key']) : null;
    secretKey = json['secret_key'] != null ? new Title.fromJson(json['secret_key']) : null;
    webhook = json['webhook'] != null ? new Title.fromJson(json['webhook']) : null;
    testWebhookSecret = json['test_webhook_secret'] != null ? new Title.fromJson(json['test_webhook_secret']) : null;
    webhookSecret = json['webhook_secret'] != null ? new Title.fromJson(json['webhook_secret']) : null;
    inlineCcForm = json['inline_cc_form'] != null ? new Title.fromJson(json['inline_cc_form']) : null;
    statementDescriptor = json['statement_descriptor'] != null ? new Title.fromJson(json['statement_descriptor']) : null;
    shortStatementDescriptor = json['short_statement_descriptor'] != null ? new Title.fromJson(json['short_statement_descriptor']) : null;
    capture = json['capture'] != null ? new Title.fromJson(json['capture']) : null;
    paymentRequest = json['payment_request'] != null ? new Title.fromJson(json['payment_request']) : null;
    savedCards = json['saved_cards'] != null ? new Title.fromJson(json['saved_cards']) : null;
    logging = json['logging'] != null ? new Title.fromJson(json['logging']) : null;
    upeCheckoutExperienceEnabled = json['upe_checkout_experience_enabled'] != null ? new Title.fromJson(json['upe_checkout_experience_enabled']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.title != null) {
      data['title'] = this.title!.toJson();
    }
    if (this.apiCredentials != null) {
      data['api_credentials'] = this.apiCredentials!.toJson();
    }
    if (this.testmode != null) {
      data['testmode'] = this.testmode!.toJson();
    }
    if (this.testPublishableKey != null) {
      data['test_publishable_key'] = this.testPublishableKey!.toJson();
    }
    if (this.testSecretKey != null) {
      data['test_secret_key'] = this.testSecretKey!.toJson();
    }
    if (this.publishableKey != null) {
      data['publishable_key'] = this.publishableKey!.toJson();
    }
    if (this.secretKey != null) {
      data['secret_key'] = this.secretKey!.toJson();
    }
    if (this.webhook != null) {
      data['webhook'] = this.webhook!.toJson();
    }
    if (this.testWebhookSecret != null) {
      data['test_webhook_secret'] = this.testWebhookSecret!.toJson();
    }
    if (this.webhookSecret != null) {
      data['webhook_secret'] = this.webhookSecret!.toJson();
    }
    if (this.inlineCcForm != null) {
      data['inline_cc_form'] = this.inlineCcForm!.toJson();
    }
    if (this.statementDescriptor != null) {
      data['statement_descriptor'] = this.statementDescriptor!.toJson();
    }
    if (this.shortStatementDescriptor != null) {
      data['short_statement_descriptor'] = this.shortStatementDescriptor!.toJson();
    }
    if (this.capture != null) {
      data['capture'] = this.capture!.toJson();
    }
    if (this.paymentRequest != null) {
      data['payment_request'] = this.paymentRequest!.toJson();
    }
    if (this.savedCards != null) {
      data['saved_cards'] = this.savedCards!.toJson();
    }
    if (this.logging != null) {
      data['logging'] = this.logging!.toJson();
    }
    if (this.upeCheckoutExperienceEnabled != null) {
      data['upe_checkout_experience_enabled'] = this.upeCheckoutExperienceEnabled!.toJson();
    }
    return data;
  }
}


class Title {
  String? id;
  String? label;
  String? description;
  String? type;
  String? value;
  String? defaultValue;
  String? tip;
  String? placeholder;

  Title({this.id, this.label, this.description, this.type, this.value, this.defaultValue, this.tip, this.placeholder});

Title.fromJson(Map<String, dynamic> json) {
id = json['id'];
label = json['label'];
description = json['description'];
type = json['type'];
value = json['value'];
defaultValue = json['default'];
tip = json['tip'];
placeholder = json['placeholder'];
}

Map<String, dynamic> toJson() {
final Map<String, dynamic> data = new Map<String, dynamic>();
data['id'] = this.id;
data['label'] = this.label;
data['description'] = this.description;
data['type'] = this.type;
data['value'] = this.value;
data['default'] = this.defaultValue;
data['tip'] = this.tip;
data['placeholder'] = this.placeholder;
return data;
}
}

class PayGatewaySettings {
Title? title;
Title? apiCredentials;
Title? testmode;
Title? testPublishableKey;
Title? testSecretKey;
Title? publishableKey;
Title? secretKey;
Title? webhook;
Title? testWebhookSecret;
Title? webhookSecret;
Title? inlineCcForm;
Title? statementDescriptor;
Title? shortStatementDescriptor;
Title? capture;
Title? paymentRequest;
Title? savedCards;
Title? logging;
Title? upeCheckoutExperienceEnabled;

PayGatewaySettings({this.title, this.apiCredentials, this.testmode, this.testPublishableKey, this.testSecretKey, this.publishableKey, this.secretKey, this.webhook, this.testWebhookSecret, this.webhookSecret, this.inlineCcForm, this.statementDescriptor, this.shortStatementDescriptor, this.capture, this.paymentRequest, this.savedCards, this.logging, this.upeCheckoutExperienceEnabled});

PayGatewaySettings.fromJson(Map<String, dynamic> json) {
title = json['title'] != null ? new Title.fromJson(json['title']) : null;
apiCredentials = json['api_credentials'] != null ? new Title.fromJson(json['api_credentials']) : null;
testmode = json['testmode'] != null ? new Title.fromJson(json['testmode']) : null;
testPublishableKey = json['test_publishable_key'] != null ? new Title.fromJson(json['test_publishable_key']) : null;
testSecretKey = json['test_secret_key'] != null ? new Title.fromJson(json['test_secret_key']) : null;
publishableKey = json['publishable_key'] != null ? new Title.fromJson(json['publishable_key']) : null;
secretKey = json['secret_key'] != null ? new Title.fromJson(json['secret_key']) : null;
webhook = json['webhook'] != null ? new Title.fromJson(json['webhook']) : null;
testWebhookSecret = json['test_webhook_secret'] != null ? new Title.fromJson(json['test_webhook_secret']) : null;
webhookSecret = json['webhook_secret'] != null ? new Title.fromJson(json['webhook_secret']) : null;
inlineCcForm = json['inline_cc_form'] != null ? new Title.fromJson(json['inline_cc_form']) : null;
statementDescriptor = json['statement_descriptor'] != null ? new Title.fromJson(json['statement_descriptor']) : null;
shortStatementDescriptor = json['short_statement_descriptor'] != null ? new Title.fromJson(json['short_statement_descriptor']) : null;
capture = json['capture'] != null ? new Title.fromJson(json['capture']) : null;
paymentRequest = json['payment_request'] != null ? new Title.fromJson(json['payment_request']) : null;
savedCards = json['saved_cards'] != null ? new Title.fromJson(json['saved_cards']) : null;
logging = json['logging'] != null ? new Title.fromJson(json['logging']) : null;
upeCheckoutExperienceEnabled = json['upe_checkout_experience_enabled'] != null ? new Title.fromJson(json['upe_checkout_experience_enabled']) : null;
}

Map<String, dynamic> toJson() {
final Map<String, dynamic> data = new Map<String, dynamic>();
if (this.title != null) {
data['title'] = this.title!.toJson();
}
if (this.apiCredentials != null) {
data['api_credentials'] = this.apiCredentials!.toJson();
}
if (this.testmode != null) {
data['testmode'] = this.testmode!.toJson();
}
if (this.testPublishableKey != null) {
data['test_publishable_key'] = this.testPublishableKey!.toJson();
}
if (this.testSecretKey != null) {
data['test_secret_key'] = this.testSecretKey!.toJson();
}
if (this.publishableKey != null) {
data['publishable_key'] = this.publishableKey!.toJson();
}
if (this.secretKey != null) {
data['secret_key'] = this.secretKey!.toJson();
}
if (this.webhook != null) {
data['webhook'] = this.webhook!.toJson();
}
if (this.testWebhookSecret != null) {
data['test_webhook_secret'] = this.testWebhookSecret!.toJson();
}
if (this.webhookSecret != null) {
data['webhook_secret'] = this.webhookSecret!.toJson();
}
if (this.inlineCcForm != null) {
data['inline_cc_form'] = this.inlineCcForm!.toJson();
}
if (this.statementDescriptor != null) {
data['statement_descriptor'] = this.statementDescriptor!.toJson();
}
if (this.shortStatementDescriptor != null) {
data['short_statement_descriptor'] = this.shortStatementDescriptor!.toJson();
}
if (this.capture != null) {
data['capture'] = this.capture!.toJson();
}
if (this.paymentRequest != null) {
data['payment_request'] = this.paymentRequest!.toJson();
}
if (this.savedCards != null) {
data['saved_cards'] = this.savedCards!.toJson();
}
if (this.logging != null) {
data['logging'] = this.logging!.toJson();
}
if (this.upeCheckoutExperienceEnabled != null) {
data['upe_checkout_experience_enabled'] = this.upeCheckoutExperienceEnabled!.toJson();
}
return data;
}
}

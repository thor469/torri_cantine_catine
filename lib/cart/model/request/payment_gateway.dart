import 'dart:convert';
import 'dart:core';

import 'package:flutter/foundation.dart';
import 'package:http_services/http_services.dart';
import 'package:torri_cantine_app/utilities/local_storage.dart';
import '../../../app/app_config.dart';
import '../../../app/dependency_injection/dependency_factory_impl.dart';


Future<List<PaymentGateway?>> processPaymentGateway() async {

  List<PaymentGateway?> sz = await payGatewayServices().getPayGateway();

  return sz;
}


class payGatewayServices {

  static DependencyFactoryImpl dep = const DependencyFactoryImpl();
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
      if (kDebugMode) {
        print(response.statusMessage);
      }
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
  List<void>? postInstallScripts;
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
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['title'] = title;
    data['description'] = description;
    data['order'] = order;
    data['enabled'] = enabled;
    data['method_title'] = methodTitle;
    data['method_description'] = methodDescription;
    data['method_supports'] = methodSupports;
    // if (this.settings != null) {
    //   data['settings'] = this.settings!.toJson();
    // }
    data['needs_setup'] = needsSetup;

    data['settings_url'] = settingsUrl;
    data['connection_url'] = connectionUrl;
    data['setup_help_text'] = setupHelpText;
    data['required_settings_keys'] = requiredSettingsKeys;
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
    title = json['title'] != null ? Title.fromJson(json['title']) : null;
    apiCredentials = json['api_credentials'] != null ? Title.fromJson(json['api_credentials']) : null;
    testmode = json['testmode'] != null ? Title.fromJson(json['testmode']) : null;
    testPublishableKey = json['test_publishable_key'] != null ? Title.fromJson(json['test_publishable_key']) : null;
    testSecretKey = json['test_secret_key'] != null ? Title.fromJson(json['test_secret_key']) : null;
    publishableKey = json['publishable_key'] != null ? Title.fromJson(json['publishable_key']) : null;
    secretKey = json['secret_key'] != null ? Title.fromJson(json['secret_key']) : null;
    webhook = json['webhook'] != null ? Title.fromJson(json['webhook']) : null;
    testWebhookSecret = json['test_webhook_secret'] != null ? Title.fromJson(json['test_webhook_secret']) : null;
    webhookSecret = json['webhook_secret'] != null ? Title.fromJson(json['webhook_secret']) : null;
    inlineCcForm = json['inline_cc_form'] != null ? Title.fromJson(json['inline_cc_form']) : null;
    statementDescriptor = json['statement_descriptor'] != null ? Title.fromJson(json['statement_descriptor']) : null;
    shortStatementDescriptor = json['short_statement_descriptor'] != null ? Title.fromJson(json['short_statement_descriptor']) : null;
    capture = json['capture'] != null ? Title.fromJson(json['capture']) : null;
    paymentRequest = json['payment_request'] != null ? Title.fromJson(json['payment_request']) : null;
    savedCards = json['saved_cards'] != null ? Title.fromJson(json['saved_cards']) : null;
    logging = json['logging'] != null ? Title.fromJson(json['logging']) : null;
    upeCheckoutExperienceEnabled = json['upe_checkout_experience_enabled'] != null ? Title.fromJson(json['upe_checkout_experience_enabled']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (title != null) {
      data['title'] = title!.toJson();
    }
    if (apiCredentials != null) {
      data['api_credentials'] = apiCredentials!.toJson();
    }
    if (testmode != null) {
      data['testmode'] = testmode!.toJson();
    }
    if (testPublishableKey != null) {
      data['test_publishable_key'] = testPublishableKey!.toJson();
    }
    if (testSecretKey != null) {
      data['test_secret_key'] = testSecretKey!.toJson();
    }
    if (publishableKey != null) {
      data['publishable_key'] = publishableKey!.toJson();
    }
    if (secretKey != null) {
      data['secret_key'] = secretKey!.toJson();
    }
    if (webhook != null) {
      data['webhook'] = webhook!.toJson();
    }
    if (testWebhookSecret != null) {
      data['test_webhook_secret'] = testWebhookSecret!.toJson();
    }
    if (webhookSecret != null) {
      data['webhook_secret'] = webhookSecret!.toJson();
    }
    if (inlineCcForm != null) {
      data['inline_cc_form'] = inlineCcForm!.toJson();
    }
    if (statementDescriptor != null) {
      data['statement_descriptor'] = statementDescriptor!.toJson();
    }
    if (shortStatementDescriptor != null) {
      data['short_statement_descriptor'] = shortStatementDescriptor!.toJson();
    }
    if (capture != null) {
      data['capture'] = capture!.toJson();
    }
    if (paymentRequest != null) {
      data['payment_request'] = paymentRequest!.toJson();
    }
    if (savedCards != null) {
      data['saved_cards'] = savedCards!.toJson();
    }
    if (logging != null) {
      data['logging'] = logging!.toJson();
    }
    if (upeCheckoutExperienceEnabled != null) {
      data['upe_checkout_experience_enabled'] = upeCheckoutExperienceEnabled!.toJson();
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
final Map<String, dynamic> data = <String, dynamic>{};
data['id'] = id;
data['label'] = label;
data['description'] = description;
data['type'] = type;
data['value'] = value;
data['default'] = defaultValue;
data['tip'] = tip;
data['placeholder'] = placeholder;
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
title = json['title'] != null ? Title.fromJson(json['title']) : null;
apiCredentials = json['api_credentials'] != null ? Title.fromJson(json['api_credentials']) : null;
testmode = json['testmode'] != null ? Title.fromJson(json['testmode']) : null;
testPublishableKey = json['test_publishable_key'] != null ? Title.fromJson(json['test_publishable_key']) : null;
testSecretKey = json['test_secret_key'] != null ? Title.fromJson(json['test_secret_key']) : null;
publishableKey = json['publishable_key'] != null ? Title.fromJson(json['publishable_key']) : null;
secretKey = json['secret_key'] != null ? Title.fromJson(json['secret_key']) : null;
webhook = json['webhook'] != null ? Title.fromJson(json['webhook']) : null;
testWebhookSecret = json['test_webhook_secret'] != null ? Title.fromJson(json['test_webhook_secret']) : null;
webhookSecret = json['webhook_secret'] != null ? Title.fromJson(json['webhook_secret']) : null;
inlineCcForm = json['inline_cc_form'] != null ? Title.fromJson(json['inline_cc_form']) : null;
statementDescriptor = json['statement_descriptor'] != null ? Title.fromJson(json['statement_descriptor']) : null;
shortStatementDescriptor = json['short_statement_descriptor'] != null ? Title.fromJson(json['short_statement_descriptor']) : null;
capture = json['capture'] != null ? Title.fromJson(json['capture']) : null;
paymentRequest = json['payment_request'] != null ? Title.fromJson(json['payment_request']) : null;
savedCards = json['saved_cards'] != null ? Title.fromJson(json['saved_cards']) : null;
logging = json['logging'] != null ? Title.fromJson(json['logging']) : null;
upeCheckoutExperienceEnabled = json['upe_checkout_experience_enabled'] != null ? Title.fromJson(json['upe_checkout_experience_enabled']) : null;
}

Map<String, dynamic> toJson() {
final Map<String, dynamic> data = <String, dynamic>{};
if (title != null) {
data['title'] = title!.toJson();
}
if (apiCredentials != null) {
data['api_credentials'] = apiCredentials!.toJson();
}
if (testmode != null) {
data['testmode'] = testmode!.toJson();
}
if (testPublishableKey != null) {
data['test_publishable_key'] = testPublishableKey!.toJson();
}
if (testSecretKey != null) {
data['test_secret_key'] = testSecretKey!.toJson();
}
if (publishableKey != null) {
data['publishable_key'] = publishableKey!.toJson();
}
if (secretKey != null) {
data['secret_key'] = secretKey!.toJson();
}
if (webhook != null) {
data['webhook'] = webhook!.toJson();
}
if (testWebhookSecret != null) {
data['test_webhook_secret'] = testWebhookSecret!.toJson();
}
if (webhookSecret != null) {
data['webhook_secret'] = webhookSecret!.toJson();
}
if (inlineCcForm != null) {
data['inline_cc_form'] = inlineCcForm!.toJson();
}
if (statementDescriptor != null) {
data['statement_descriptor'] = statementDescriptor!.toJson();
}
if (shortStatementDescriptor != null) {
data['short_statement_descriptor'] = shortStatementDescriptor!.toJson();
}
if (capture != null) {
data['capture'] = capture!.toJson();
}
if (paymentRequest != null) {
data['payment_request'] = paymentRequest!.toJson();
}
if (savedCards != null) {
data['saved_cards'] = savedCards!.toJson();
}
if (logging != null) {
data['logging'] = logging!.toJson();
}
if (upeCheckoutExperienceEnabled != null) {
data['upe_checkout_experience_enabled'] = upeCheckoutExperienceEnabled!.toJson();
}
return data;
}
}

import 'package:amplify_api/amplify_api.dart';
import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_datastore/amplify_datastore.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:amplify_storage_s3/amplify_storage_s3.dart';
import 'package:flutter/material.dart';

import 'amplifyconfiguration.dart';
import 'models/ModelProvider.dart';
import 'src/app.dart';
import 'src/settings/settings_controller.dart';
import 'src/settings/settings_service.dart';

void main() async {
  // Set up the SettingsController, which will glue user settings to multiple
  // Flutter Widgets.
  final settingsController = SettingsController(SettingsService());

  // Load the user's preferred theme while the splash screen is displayed.
  // This prevents a sudden theme change when the app is first displayed.
  await settingsController.loadSettings();
  // await _configureAmplify();

  // Run the app and pass in the SettingsController. The app listens to the
  // SettingsController for changes, then passes it further down to the
  // SettingsView.
  runApp(MyApp(settingsController: settingsController));
}

Future<void> _configureAmplify() async {
  try {
    // Create the API plugin.
    //
    // If `ModelProvider.instance` is not available, try running
    // `amplify codegen models` from the root of your project.
    final api = AmplifyAPI(modelProvider: ModelProvider.instance);
    final dataStore = AmplifyDataStore(modelProvider: ModelProvider.instance);
    // Create the Auth plugin.
    final auth = AmplifyAuthCognito();
    final storage = AmplifyStorageS3();
    // Add the plugins and configure Amplify for your app.
    await Amplify.addPlugins([api, dataStore, auth, storage]);
    await Amplify.configure(amplifyconfig);
    safePrint('Successfully configured');

    // await Amplify.Auth.signOut();

    // final result = await Amplify.Storage.getUrl(
    //   key: 'images/IMG_20230925_130408.jpg',
    // ).result;

    final result = await Amplify.Storage.getUrl(
      key: 'FullCalibration_20230911-153006.txt',
      options: const StorageGetUrlOptions(
        accessLevel: StorageAccessLevel.guest,
        pluginOptions: S3GetUrlPluginOptions(
          validateObjectExistence: true,
          expiresIn: Duration(minutes: 15),
        ),
      ),
    ).result;
    // return result.url;

    safePrint('result Url: ${result.url}');

    // final result = await Amplify.Storage.getProperties(
    //   key: 'FullCalibration_20230911-153006',
    // ).result;

    // safePrint('File size: ${result.storageItem.metadata}');
  } on Exception catch (e) {
    safePrint('Error configuring Amplify: $e');
  }
}

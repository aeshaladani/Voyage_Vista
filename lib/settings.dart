import 'package:flutter/material.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  _SettingsScreenState createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 5, vsync: this); // 5 tabs
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
        bottom: TabBar(
          controller: _tabController,
          tabs: const [
            Tab(text: 'Account'),
            Tab(text: 'App Preferences'),
            Tab(text: 'Security & Privacy'),
            Tab(text: 'Notifications'),
            Tab(text: 'General'),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          AccountSettingsTab(),
          const AppPreferencesTab(),
          const SecurityPrivacySettingsTab(),
          const NotificationSettingsTab(),
          const GeneralSettingsTab(),
        ],
      ),
    );
  }
}

// ACCOUNT SETTINGS TAB
class AccountSettingsTab extends StatelessWidget {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();

  AccountSettingsTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          const Text('Change Username'),
          TextField(
            controller: _usernameController,
            decoration: const InputDecoration(
              labelText: 'New Username',
              border: OutlineInputBorder(),
            ),
          ),
          const SizedBox(height: 20),
          const Text('Change Email'),
          TextField(
            controller: _emailController,
            decoration: const InputDecoration(
              labelText: 'New Email',
              border: OutlineInputBorder(),
            ),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              // Logic to save account changes
            },
            child: const Text('Save Changes'),
          ),
          const Divider(),
          const SizedBox(height: 20),
          const Text('Delete Account'),
          ElevatedButton(
            onPressed: () {
              // Logic to delete the account
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.red, // Corrected the issue here
            ),
            child: const Text('Delete My Account'),
          ),
        ],
      ),
    );
  }
}

// APP PREFERENCES TAB
class AppPreferencesTab extends StatefulWidget {
  const AppPreferencesTab({super.key});

  @override
  _AppPreferencesTabState createState() => _AppPreferencesTabState();
}

class _AppPreferencesTabState extends State<AppPreferencesTab> {
  bool _darkModeEnabled = false;
  bool _useSystemTheme = true;
  String _selectedLanguage = 'English';

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          SwitchListTile(
            title: const Text('Enable Dark Mode'),
            value: _darkModeEnabled,
            onChanged: (bool value) {
              setState(() {
                _darkModeEnabled = value;
              });
            },
          ),
          SwitchListTile(
            title: const Text('Use System Theme'),
            value: _useSystemTheme,
            onChanged: (bool value) {
              setState(() {
                _useSystemTheme = value;
              });
            },
          ),
          const SizedBox(height: 20),
          const Text('Select App Language'),
          DropdownButton<String>(
            value: _selectedLanguage,
            onChanged: (String? newValue) {
              setState(() {
                _selectedLanguage = newValue!;
              });
            },
            items: <String>['English', 'Spanish', 'French', 'German', 'Chinese']
                .map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}

// SECURITY & PRIVACY SETTINGS TAB
class SecurityPrivacySettingsTab extends StatefulWidget {
  const SecurityPrivacySettingsTab({super.key});

  @override
  _SecurityPrivacySettingsTabState createState() => _SecurityPrivacySettingsTabState();
}

class _SecurityPrivacySettingsTabState extends State<SecurityPrivacySettingsTab> {
  bool _isProfileVisible = true;
  bool _isDataCollectionEnabled = true;
  bool _isTwoFactorEnabled = false;
  bool _isFaceIDEnabled = false;
  bool _isFingerprintEnabled = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          SwitchListTile(
            title: const Text('Profile Visibility'),
            value: _isProfileVisible,
            onChanged: (bool value) {
              setState(() {
                _isProfileVisible = value;
              });
            },
          ),
          SwitchListTile(
            title: const Text('Allow Data Collection'),
            value: _isDataCollectionEnabled,
            onChanged: (bool value) {
              setState(() {
                _isDataCollectionEnabled = value;
              });
            },
          ),
          SwitchListTile(
            title: const Text('Enable Two-Factor Authentication'),
            value: _isTwoFactorEnabled,
            onChanged: (bool value) {
              setState(() {
                _isTwoFactorEnabled = value;
              });
            },
          ),
          SwitchListTile(
            title: const Text('Enable Face ID'),
            value: _isFaceIDEnabled,
            onChanged: (bool value) {
              setState(() {
                _isFaceIDEnabled = value;
              });
            },
          ),
          SwitchListTile(
            title: const Text('Enable Fingerprint Authentication'),
            value: _isFingerprintEnabled,
            onChanged: (bool value) {
              setState(() {
                _isFingerprintEnabled = value;
              });
            },
          ),
        ],
      ),
    );
  }
}

// NOTIFICATIONS SETTINGS TAB
class NotificationSettingsTab extends StatefulWidget {
  const NotificationSettingsTab({super.key});

  @override
  _NotificationSettingsTabState createState() => _NotificationSettingsTabState();
}

class _NotificationSettingsTabState extends State<NotificationSettingsTab> {
  bool _pushNotificationsEnabled = true;
  bool _emailNotificationsEnabled = true;
  bool _smsNotificationsEnabled = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          SwitchListTile(
            title: const Text('Enable Push Notifications'),
            value: _pushNotificationsEnabled,
            onChanged: (bool value) {
              setState(() {
                _pushNotificationsEnabled = value;
              });
            },
          ),
          SwitchListTile(
            title: const Text('Enable Email Notifications'),
            value: _emailNotificationsEnabled,
            onChanged: (bool value) {
              setState(() {
                _emailNotificationsEnabled = value;
              });
            },
          ),
          SwitchListTile(
            title: const Text('Enable SMS Notifications'),
            value: _smsNotificationsEnabled,
            onChanged: (bool value) {
              setState(() {
                _smsNotificationsEnabled = value;
              });
            },
          ),
        ],
      ),
    );
  }
}

// GENERAL SETTINGS TAB
class GeneralSettingsTab extends StatefulWidget {
  const GeneralSettingsTab({super.key});

  @override
  _GeneralSettingsTabState createState() => _GeneralSettingsTabState();
}

class _GeneralSettingsTabState extends State<GeneralSettingsTab> {
  bool _autoUpdateEnabled = true;
  bool _locationTrackingEnabled = true;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          SwitchListTile(
            title: const Text('Enable Auto-Updates'),
            value: _autoUpdateEnabled,
            onChanged: (bool value) {
              setState(() {
                _autoUpdateEnabled = value;
              });
            },
          ),
          SwitchListTile(
            title: const Text('Enable Location Tracking'),
            value: _locationTrackingEnabled,
            onChanged: (bool value) {
              setState(() {
                _locationTrackingEnabled = value;
              });
            },
          ),
          const Divider(),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              // Logic to reset app settings
            },
            child: const Text('Reset App Settings'),
          ),
        ],
      ),
    );
  }
}

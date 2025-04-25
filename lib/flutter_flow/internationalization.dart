import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

const _kLocaleStorageKey = '__locale_key__';

class FFLocalizations {
  FFLocalizations(this.locale);

  final Locale locale;

  static FFLocalizations of(BuildContext context) =>
      Localizations.of<FFLocalizations>(context, FFLocalizations)!;

  static List<String> languages() => ['en', 'nl', 'de'];

  static late SharedPreferences _prefs;
  static Future initialize() async =>
      _prefs = await SharedPreferences.getInstance();
  static Future storeLocale(String locale) =>
      _prefs.setString(_kLocaleStorageKey, locale);
  static Locale? getStoredLocale() {
    final locale = _prefs.getString(_kLocaleStorageKey);
    return locale != null && locale.isNotEmpty ? createLocale(locale) : null;
  }

  String get languageCode => locale.toString();
  String? get languageShortCode =>
      _languagesWithShortCode.contains(locale.toString())
          ? '${locale.toString()}_short'
          : null;
  int get languageIndex => languages().contains(languageCode)
      ? languages().indexOf(languageCode)
      : 0;

  String getText(String key) =>
      (kTranslationsMap[key] ?? {})[locale.toString()] ?? '';

  String getVariableText({
    String? enText = '',
    String? nlText = '',
    String? deText = '',
  }) =>
      [enText, nlText, deText][languageIndex] ?? '';

  static const Set<String> _languagesWithShortCode = {
    'ar',
    'az',
    'ca',
    'cs',
    'da',
    'de',
    'dv',
    'en',
    'es',
    'et',
    'fi',
    'fr',
    'gr',
    'he',
    'hi',
    'hu',
    'it',
    'km',
    'ku',
    'mn',
    'ms',
    'no',
    'pt',
    'ro',
    'ru',
    'rw',
    'sv',
    'th',
    'uk',
    'vi',
  };
}

/// Used if the locale is not supported by GlobalMaterialLocalizations.
class FallbackMaterialLocalizationDelegate
    extends LocalizationsDelegate<MaterialLocalizations> {
  const FallbackMaterialLocalizationDelegate();

  @override
  bool isSupported(Locale locale) => _isSupportedLocale(locale);

  @override
  Future<MaterialLocalizations> load(Locale locale) async =>
      SynchronousFuture<MaterialLocalizations>(
        const DefaultMaterialLocalizations(),
      );

  @override
  bool shouldReload(FallbackMaterialLocalizationDelegate old) => false;
}

/// Used if the locale is not supported by GlobalCupertinoLocalizations.
class FallbackCupertinoLocalizationDelegate
    extends LocalizationsDelegate<CupertinoLocalizations> {
  const FallbackCupertinoLocalizationDelegate();

  @override
  bool isSupported(Locale locale) => _isSupportedLocale(locale);

  @override
  Future<CupertinoLocalizations> load(Locale locale) =>
      SynchronousFuture<CupertinoLocalizations>(
        const DefaultCupertinoLocalizations(),
      );

  @override
  bool shouldReload(FallbackCupertinoLocalizationDelegate old) => false;
}

class FFLocalizationsDelegate extends LocalizationsDelegate<FFLocalizations> {
  const FFLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) => _isSupportedLocale(locale);

  @override
  Future<FFLocalizations> load(Locale locale) =>
      SynchronousFuture<FFLocalizations>(FFLocalizations(locale));

  @override
  bool shouldReload(FFLocalizationsDelegate old) => false;
}

Locale createLocale(String language) => language.contains('_')
    ? Locale.fromSubtags(
        languageCode: language.split('_').first,
        scriptCode: language.split('_').last,
      )
    : Locale(language);

bool _isSupportedLocale(Locale locale) {
  final language = locale.toString();
  return FFLocalizations.languages().contains(
    language.endsWith('_')
        ? language.substring(0, language.length - 1)
        : language,
  );
}

final kTranslationsMap = <Map<String, Map<String, String>>>[
  // Onboarding01
  {
    'iv6ggeus': {
      'en': 'Welcome!',
      'de': '',
      'nl': '',
    },
    'ke7wkmir': {
      'en':
          'Thanks for joining! Access or create your account below, and get started on your journey!',
      'de': '',
      'nl': '',
    },
    'wdqda9fe': {
      'en': 'About us',
      'de': '',
      'nl': '',
    },
    'vans99ju': {
      'en': 'Get Started',
      'de': '',
      'nl': '',
    },
    'kd0ijxoh': {
      'en': 'Home',
      'de': '',
      'nl': '',
    },
  },
  // CreateAccount
  {
    '8a1r6n5b': {
      'en': 'Get Started',
      'de': '',
      'nl': '',
    },
    'ctc8zbvz': {
      'en': 'Let\'s get started by filling out the form below.',
      'de': '',
      'nl': '',
    },
    'vxm5kycu': {
      'en': 'Email',
      'de': '',
      'nl': '',
    },
    'kv52i342': {
      'en': 'Password',
      'de': '',
      'nl': '',
    },
    '80t4jq5m': {
      'en': 'Create Account',
      'de': '',
      'nl': '',
    },
    'f8m2vk80': {
      'en': 'Or sign up with',
      'de': '',
      'nl': '',
    },
    '7h5x8jx2': {
      'en': 'Continue with Google',
      'de': '',
      'nl': '',
    },
    '4p90z7qy': {
      'en': 'Continue with Apple',
      'de': '',
      'nl': '',
    },
    'o993t3ad': {
      'en': 'Don\'t have an account?  ',
      'de': '',
      'nl': '',
    },
    'cr2vokf9': {
      'en': 'Sign Up here',
      'de': '',
      'nl': '',
    },
    'l1hjqjtp': {
      'en': 'Home',
      'de': '',
      'nl': '',
    },
  },
  // CreatetIntake
  {
    'nqtl4rww': {
      'en': 'Full name*',
      'de': '',
      'nl': '',
    },
    'kfah1w6m': {
      'en': 'Age*',
      'de': '',
      'nl': '',
    },
    '8ba0qvhi': {
      'en': 'Phone number',
      'de': '',
      'nl': '',
    },
    'xcszc3c9': {
      'en': 'Date of birth*',
      'de': '',
      'nl': '',
    },
    '4oz67oax': {
      'en': 'Insurance Provider',
      'de': '',
      'nl': '',
    },
    'nyg8naw6': {
      'en': 'Select one...',
      'de': '',
      'nl': '',
    },
    'w32po693': {
      'en': 'Search for an item...',
      'de': '',
      'nl': '',
    },
    'qghaslyn': {
      'en': 'Insurance Provider 1',
      'de': '',
      'nl': '',
    },
    'p4v0mfzp': {
      'en': 'Insurance Provider 2',
      'de': '',
      'nl': '',
    },
    'x3f676cr': {
      'en': 'Insurance Provider 3',
      'de': '',
      'nl': '',
    },
    'wid4m49s': {
      'en': 'Gender',
      'de': '',
      'nl': '',
    },
    'h5vo5dic': {
      'en': 'Female',
      'de': '',
      'nl': '',
    },
    'sig3fvda': {
      'en': 'Male',
      'de': '',
      'nl': '',
    },
    'n13htugt': {
      'en': 'Please describe your symptoms...',
      'de': '',
      'nl': '',
    },
    '3pefjnrj': {
      'en': 'Submit Form',
      'de': '',
      'nl': '',
    },
    '8ya77eho': {
      'en': 'Please enter the patients full name.',
      'de': '',
      'nl': '',
    },
    'a41nxw53': {
      'en': 'Please choose an option from the dropdown',
      'de': '',
      'nl': '',
    },
    '76deggjo': {
      'en': 'Please enter an age for the patient.',
      'de': '',
      'nl': '',
    },
    'g45h50y2': {
      'en': 'Please choose an option from the dropdown',
      'de': '',
      'nl': '',
    },
    'jx1km547': {
      'en': 'Please choose an option from the dropdown',
      'de': '',
      'nl': '',
    },
    'e032w7sx': {
      'en': 'Please enter the date of birth of the patient.',
      'de': '',
      'nl': '',
    },
    '83zj6d4x': {
      'en': 'Please choose an option from the dropdown',
      'de': '',
      'nl': '',
    },
    't8bn7zge': {
      'en': 'Field is required',
      'de': '',
      'nl': '',
    },
    '2ievpyf9': {
      'en': 'Please choose an option from the dropdown',
      'de': '',
      'nl': '',
    },
    'zfjl4b0d': {
      'en': 'Patient Intake form',
      'de': '',
      'nl': '',
    },
    'k17ew90p': {
      'en': 'Please fill out the form below to continue.',
      'de': '',
      'nl': '',
    },
    '7s6ejtvn': {
      'en': 'Home',
      'de': '',
      'nl': '',
    },
  },
  // test
  {
    '2vqurfpw': {
      'en': 'Option 1',
      'de': '',
      'nl': '',
    },
    'ur9icifr': {
      'en': 'Home',
      'de': '',
      'nl': '',
    },
  },
  // Onboarding02
  {
    'mi2t7mmy': {
      'en': 'Home',
      'de': '',
      'nl': '',
    },
  },
  // Auth2
  {
    'qsj6xto1': {
      'en': 'brand.ai',
      'de': '',
      'nl': '',
    },
    '1r92drp9': {
      'en': 'Home',
      'de': '',
      'nl': '',
    },
  },
  // Success
  {
    '4l5229ro': {
      'en': 'Home',
      'de': '',
      'nl': '',
    },
  },
  // Dashboard5
  {
    'ghb5kko1': {
      'en': 'Below is a summary of your day.',
      'de': '',
      'nl': '',
    },
    '6mkd93yq': {
      'en': '16',
      'de': '',
      'nl': '',
    },
    '8d2gc1zc': {
      'en': 'New Activity',
      'de': '',
      'nl': '',
    },
    'ou8elsma': {
      'en': '16',
      'de': '',
      'nl': '',
    },
    'zmykq0xh': {
      'en': 'Current Tasks',
      'de': '',
      'nl': '',
    },
    'wngrbrja': {
      'en': '16',
      'de': '',
      'nl': '',
    },
    'pp6vnnke': {
      'en': 'Completed Tasks',
      'de': '',
      'nl': '',
    },
    'ov7usqzi': {
      'en': 'Current Route',
      'de': '',
      'nl': '',
    },
    'juxi5i9o': {
      'en': 'An overview of your route.',
      'de': '',
      'nl': '',
    },
    '82hv8x79': {
      'en': '15/26',
      'de': '',
      'nl': '',
    },
    '04dsk75r': {
      'en': 'Route progress',
      'de': '',
      'nl': '',
    },
    '36nd4gcv': {
      'en': '12',
      'de': '',
      'nl': '',
    },
    '7gjfqvbp': {
      'en': 'Tasks to be completed',
      'de': '',
      'nl': '',
    },
    '39kxskmo': {
      'en': 'Current Tasks',
      'de': '',
      'nl': '',
    },
    'yn8galrj': {
      'en': 'A summary of your tasks',
      'de': '',
      'nl': '',
    },
    '5qr1rjqe': {
      'en': 'Task Type',
      'de': '',
      'nl': '',
    },
    'x5lxbsp0': {
      'en':
          'Task Description here this one is really long and it goes over maybe? And goes to two lines.',
      'de': '',
      'nl': '',
    },
    'zsm3gsru': {
      'en': 'Due:',
      'de': '',
      'nl': '',
    },
    'sgsnge6x': {
      'en': 'Today, 6:20pm',
      'de': '',
      'nl': '',
    },
    'fg5dq1yq': {
      'en': 'Update',
      'de': '',
      'nl': '',
    },
    'pduokyuq': {
      'en': '1',
      'de': '',
      'nl': '',
    },
    '7whb0d1e': {
      'en': 'Task Type',
      'de': '',
      'nl': '',
    },
    'bcg01yxr': {
      'en': 'Task description here.',
      'de': '',
      'nl': '',
    },
    'tpjsyyv2': {
      'en': 'Due:',
      'de': '',
      'nl': '',
    },
    'v96ywcye': {
      'en': 'Today, 6:20pm',
      'de': '',
      'nl': '',
    },
    '1rp72sx7': {
      'en': 'Update',
      'de': '',
      'nl': '',
    },
    '5ynxmchk': {
      'en': '1',
      'de': '',
      'nl': '',
    },
    'z84u6pt4': {
      'en': 'Recent Activity',
      'de': '',
      'nl': '',
    },
    '7qo32ytz': {
      'en': 'Below is an overview of tasks & activity completed.',
      'de': '',
      'nl': '',
    },
    'kpn09imr': {
      'en': 'Tasks',
      'de': '',
      'nl': '',
    },
    'r2qiuwib': {
      'en': 'Completed',
      'de': '',
      'nl': '',
    },
    '1atxhimr': {
      'en': 'Launches',
      'de': '',
      'nl': '',
    },
    '61nxogm0': {
      'en': 'Last 30 Days',
      'de': '',
      'nl': '',
    },
    '9q2d4l3m': {
      'en': 'Avg. Grade',
      'de': '',
      'nl': '',
    },
    'upgsil8s': {
      'en': 'Dashboard',
      'de': '',
      'nl': '',
    },
    '11stc3jd': {
      'en': 'Home',
      'de': '',
      'nl': '',
    },
  },
  // Home25BudgetDashboardResponsive
  {
    'y30zefjk': {
      'en': 'check.io',
      'de': '',
      'nl': '',
    },
    'ukq2nl1t': {
      'en': 'Andrew D.',
      'de': '',
      'nl': '',
    },
    'vu794bgr': {
      'en': 'admin@gmail.com',
      'de': '',
      'nl': '',
    },
    'bulo9cf1': {
      'en': 'Dashboard',
      'de': '',
      'nl': '',
    },
    'go9efd22': {
      'en': 'Transactions',
      'de': '',
      'nl': '',
    },
    'ifa4bhzi': {
      'en': 'Projects',
      'de': '',
      'nl': '',
    },
    'jsjm2cge': {
      'en': 'Users',
      'de': '',
      'nl': '',
    },
    '6pepj1k2': {
      'en': 'Overview',
      'de': '',
      'nl': '',
    },
    'qq2vdwx5': {
      'en': 'Below is a company overview',
      'de': '',
      'nl': '',
    },
    '28hidefy': {
      'en': 'Andrew D.',
      'de': '',
      'nl': '',
    },
    'krgjokz8': {
      'en': 'admin@gmail.com',
      'de': '',
      'nl': '',
    },
    'sbu42zrq': {
      'en': 'Income this Month',
      'de': '',
      'nl': '',
    },
    'k8daz07l': {
      'en': '\$567,402',
      'de': '',
      'nl': '',
    },
    'jdsxfc3o': {
      'en': 'Total Orders',
      'de': '',
      'nl': '',
    },
    'lzhoxwgi': {
      'en': '2,208',
      'de': '',
      'nl': '',
    },
    'qnxjijaz': {
      'en': 'Total Orders',
      'de': '',
      'nl': '',
    },
    'pc12j67l': {
      'en': '2,208',
      'de': '',
      'nl': '',
    },
    'nk8mb3yo': {
      'en': 'Total Orders',
      'de': '',
      'nl': '',
    },
    'aw49p8wd': {
      'en': '2,208',
      'de': '',
      'nl': '',
    },
    'j6ri62oi': {
      'en': 'Outstanding Balance',
      'de': '',
      'nl': '',
    },
    '9rj7zv8y': {
      'en': '\$529,204',
      'de': '',
      'nl': '',
    },
    'htjewt2g': {
      'en': '55%',
      'de': '',
      'nl': '',
    },
    'q98l2ra9': {
      'en': 'Budget Overview',
      'de': '',
      'nl': '',
    },
    'ipu5ycp5': {
      'en': '\$242,102',
      'de': '',
      'nl': '',
    },
    'pa7putqq': {
      'en': '25%',
      'de': '',
      'nl': '',
    },
    'bpi3urll': {
      'en': 'Outstanding Invoices',
      'de': '',
      'nl': '',
    },
    '5eqyjok8': {
      'en': 'Below are some of the outstanding invoices for your clients.',
      'de': '',
      'nl': '',
    },
    'rxnj49nf': {
      'en': 'Add New',
      'de': '',
      'nl': '',
    },
    '2j7jv9lk': {
      'en': 'Work Type',
      'de': '',
      'nl': '',
    },
    '6mpqnbjf': {
      'en': 'Sent To:',
      'de': '',
      'nl': '',
    },
    'vk5olzf2': {
      'en': 'Contract Amount',
      'de': '',
      'nl': '',
    },
    'ylpx9jvw': {
      'en': 'Status',
      'de': '',
      'nl': '',
    },
    'hnsv78ft': {
      'en': 'Actions',
      'de': '',
      'nl': '',
    },
    'yw96dhga': {
      'en': 'Design Work',
      'de': '',
      'nl': '',
    },
    'y6n6huvv': {
      'en': 'Randy Peterson',
      'de': '',
      'nl': '',
    },
    'cbs924rw': {
      'en': 'Business Name',
      'de': '',
      'nl': '',
    },
    'o063k1ey': {
      'en': '\$2,100',
      'de': '',
      'nl': '',
    },
    'u4lv3cly': {
      'en': 'Paid',
      'de': '',
      'nl': '',
    },
    'z2fom1zl': {
      'en': 'Design Work',
      'de': '',
      'nl': '',
    },
    '2ae15k58': {
      'en': 'Randy Peterson',
      'de': '',
      'nl': '',
    },
    'dww1q2fd': {
      'en': 'Business Name',
      'de': '',
      'nl': '',
    },
    '3pnnzlr7': {
      'en': '\$2,100',
      'de': '',
      'nl': '',
    },
    'iziwqmz0': {
      'en': 'Paid',
      'de': '',
      'nl': '',
    },
    'je5dj75d': {
      'en': 'Design Work',
      'de': '',
      'nl': '',
    },
    'gskhdhua': {
      'en': 'Randy Peterson',
      'de': '',
      'nl': '',
    },
    '73wu79lh': {
      'en': 'Business Name',
      'de': '',
      'nl': '',
    },
    'fq5v7g1w': {
      'en': '\$2,100',
      'de': '',
      'nl': '',
    },
    'sjrrj2jk': {
      'en': 'Paid',
      'de': '',
      'nl': '',
    },
    'cfx6m88u': {
      'en': 'Design Work',
      'de': '',
      'nl': '',
    },
    'fpin4ugx': {
      'en': 'Randy Peterson',
      'de': '',
      'nl': '',
    },
    'efy3t157': {
      'en': 'Business Name',
      'de': '',
      'nl': '',
    },
    'dawrbj7v': {
      'en': '\$2,100',
      'de': '',
      'nl': '',
    },
    '1y8leiv9': {
      'en': 'Paid',
      'de': '',
      'nl': '',
    },
    '91p0vg57': {
      'en': 'Design Work',
      'de': '',
      'nl': '',
    },
    'wqkdgqb1': {
      'en': 'Randy Peterson',
      'de': '',
      'nl': '',
    },
    'iezrvddd': {
      'en': 'Business Name',
      'de': '',
      'nl': '',
    },
    'lmbj0onn': {
      'en': '\$2,100',
      'de': '',
      'nl': '',
    },
    'agneavui': {
      'en': 'Pending',
      'de': '',
      'nl': '',
    },
    'tuxxqwgt': {
      'en': 'Design Work',
      'de': '',
      'nl': '',
    },
    '1swiwpbt': {
      'en': 'Randy Peterson',
      'de': '',
      'nl': '',
    },
    'rco6goyl': {
      'en': 'Business Name',
      'de': '',
      'nl': '',
    },
    '2osmzg0c': {
      'en': '\$2,100',
      'de': '',
      'nl': '',
    },
    '4c4fxi0x': {
      'en': 'Pending',
      'de': '',
      'nl': '',
    },
    '6hkcpcuk': {
      'en': 'Design Work',
      'de': '',
      'nl': '',
    },
    'y243mkhu': {
      'en': 'Randy Peterson',
      'de': '',
      'nl': '',
    },
    '3v7bmqsb': {
      'en': 'Business Name',
      'de': '',
      'nl': '',
    },
    '3q6kkn49': {
      'en': '\$2,100',
      'de': '',
      'nl': '',
    },
    'joiib17s': {
      'en': 'Pending',
      'de': '',
      'nl': '',
    },
    '9x4h710t': {
      'en': 'Home',
      'de': '',
      'nl': '',
    },
  },
  // CircleTemplate
  {
    'tkww5cjv': {
      'en': 'Below is a summary of your teams activity.',
      'de': '',
      'nl': '',
    },
    'fjtkmnjn': {
      'en': 'New Customers',
      'de': '',
      'nl': '',
    },
    'ppy3s3sa': {
      'en': '24',
      'de': '',
      'nl': '',
    },
    '7ht6aju1': {
      'en': 'New Contracts',
      'de': '',
      'nl': '',
    },
    'a541jknp': {
      'en': '3,200',
      'de': '',
      'nl': '',
    },
    'y7eadwcs': {
      'en': 'Projects',
      'de': '',
      'nl': '',
    },
    'emz1qz5k': {
      'en': 'UI Design Team',
      'de': '',
      'nl': '',
    },
    'f6sazo9e': {
      'en': '4 Members',
      'de': '',
      'nl': '',
    },
    'tony1wfa': {
      'en': 'Contract Activity',
      'de': '',
      'nl': '',
    },
    'emjmde05': {
      'en': 'Below is an a summary of activity.',
      'de': '',
      'nl': '',
    },
    'qdr0afas': {
      'en': 'Device Management',
      'de': '',
      'nl': '',
    },
    'ge1so06x': {
      'en': 'Below is an a summary of activity.',
      'de': '',
      'nl': '',
    },
    '3u72valx': {
      'en': 'Dashboard',
      'de': '',
      'nl': '',
    },
    'vg23gmx5': {
      'en': '__',
      'de': '',
      'nl': '',
    },
  },
  // Home
  {
    't800947g': {
      'en': 'Home',
      'de': '',
      'nl': '',
    },
    'ekgl7kbs': {
      'en': 'Join',
      'de': '',
      'nl': '',
    },
    'qpmu2k3t': {
      'en': 'Stay connected with us!',
      'de': '',
      'nl': '',
    },
    '0yzx95m7': {
      'en':
          'Follow us on our various platforms to \nknow the latest news, initiatives and \nevents offered by the association.',
      'de': '',
      'nl': '',
    },
    'ru6b9p47': {
      'en': 'Follow Us',
      'de': '',
      'nl': '',
    },
    'hokboiqf': {
      'en':
          'There is no Circle that you are currently affiliated with. To create a Circle or join an existing Circle, click \"join.\"',
      'de': '',
      'nl': '',
    },
    'od6mtfge': {
      'en': 'Stay connected with us!',
      'de': '',
      'nl': '',
    },
    'pg5sij64': {
      'en':
          'Follow us on our various platforms to \nknow the latest news, initiatives and \nevents offered by the association.',
      'de': '',
      'nl': '',
    },
    'ry0p8g13': {
      'en': 'Follow Us',
      'de': '',
      'nl': '',
    },
    '4fiihwhz': {
      'en': 'Your Circles',
      'de': '',
      'nl': '',
    },
    '1uf68ot2': {
      'en': 'View All',
      'de': '',
      'nl': '',
    },
    'ct8vbw11': {
      'en': 'Details',
      'de': '',
      'nl': '',
    },
    '2on9665c': {
      'en': 'Home',
      'de': '',
      'nl': '',
    },
  },
  // Dashboard6
  {
    '7u16y8b7': {
      'en': 'Below is a summary of your day.',
      'de': '',
      'nl': '',
    },
    '2ypys224': {
      'en': '16',
      'de': '',
      'nl': '',
    },
    'jo0b4lkm': {
      'en': 'New Activity',
      'de': '',
      'nl': '',
    },
    'fp1qfoku': {
      'en': '16',
      'de': '',
      'nl': '',
    },
    '6aik3o2l': {
      'en': 'Current Tasks',
      'de': '',
      'nl': '',
    },
    'rtu3rpt8': {
      'en': '16',
      'de': '',
      'nl': '',
    },
    'crdnqutq': {
      'en': 'Completed Tasks',
      'de': '',
      'nl': '',
    },
    'iwmsvxxn': {
      'en': 'Current Route',
      'de': '',
      'nl': '',
    },
    'yqa67tcg': {
      'en': 'An overview of your route.',
      'de': '',
      'nl': '',
    },
    'fnp1yyg3': {
      'en': '15/26',
      'de': '',
      'nl': '',
    },
    'ntgpn9lf': {
      'en': 'Route progress',
      'de': '',
      'nl': '',
    },
    'xpsym2ua': {
      'en': '12',
      'de': '',
      'nl': '',
    },
    '6tfhvgls': {
      'en': 'Tasks to be completed',
      'de': '',
      'nl': '',
    },
    '79p2e9lj': {
      'en': 'Current Tasks',
      'de': '',
      'nl': '',
    },
    'rljt0wun': {
      'en': 'A summary of your tasks',
      'de': '',
      'nl': '',
    },
    'n2k35ime': {
      'en': 'Task Type',
      'de': '',
      'nl': '',
    },
    'kvgtv2fd': {
      'en':
          'Task Description here this one is really long and it goes over maybe? And goes to two lines.',
      'de': '',
      'nl': '',
    },
    'c1oq0016': {
      'en': 'Due:',
      'de': '',
      'nl': '',
    },
    'x40fkhng': {
      'en': 'Today, 6:20pm',
      'de': '',
      'nl': '',
    },
    'xlcjeglu': {
      'en': 'Update',
      'de': '',
      'nl': '',
    },
    'ib1jvzhr': {
      'en': '1',
      'de': '',
      'nl': '',
    },
    'xj0pu24g': {
      'en': 'Task Type',
      'de': '',
      'nl': '',
    },
    'z2fvdiq1': {
      'en': 'Task description here.',
      'de': '',
      'nl': '',
    },
    'jub4o6xd': {
      'en': 'Due:',
      'de': '',
      'nl': '',
    },
    'elgvkhca': {
      'en': 'Today, 6:20pm',
      'de': '',
      'nl': '',
    },
    'cfor6u8t': {
      'en': 'Update',
      'de': '',
      'nl': '',
    },
    'then5tgo': {
      'en': '1',
      'de': '',
      'nl': '',
    },
    '2iwcs3zk': {
      'en': 'Recent Activity',
      'de': '',
      'nl': '',
    },
    '2cq1fors': {
      'en': 'Below is an overview of tasks & activity completed.',
      'de': '',
      'nl': '',
    },
    '1b91m21q': {
      'en': 'Tasks',
      'de': '',
      'nl': '',
    },
    '38q6qm0y': {
      'en': 'Completed',
      'de': '',
      'nl': '',
    },
    '6hym1d5d': {
      'en': 'Launches',
      'de': '',
      'nl': '',
    },
    'grkz9ayp': {
      'en': 'Last 30 Days',
      'de': '',
      'nl': '',
    },
    'zguady49': {
      'en': 'Avg. Grade',
      'de': '',
      'nl': '',
    },
    'b2bm1hi8': {
      'en': 'Dashboard',
      'de': '',
      'nl': '',
    },
    '5gm8qytl': {
      'en': 'Home',
      'de': '',
      'nl': '',
    },
  },
  // Home12ProjectDashboard
  {
    'kfif1bs2': {
      'en': 'Max Rosco',
      'de': '',
      'nl': '',
    },
    '9tmmj2ug': {
      'en': 'Good morning Max!',
      'de': '',
      'nl': '',
    },
    'bk04nbp8': {
      'en': 'Find your task...',
      'de': '',
      'nl': '',
    },
    '1vxfshil': {
      'en': 'Categories',
      'de': '',
      'nl': '',
    },
    'osnvu9gz': {
      'en': 'No-Code Platform Design',
      'de': '',
      'nl': '',
    },
    '4jfy3cn6': {
      'en': '12 Projects',
      'de': '',
      'nl': '',
    },
    'ncdub5wz': {
      'en': '30%',
      'de': '',
      'nl': '',
    },
    '8bwas1je': {
      'en': 'Design for sample apps',
      'de': '',
      'nl': '',
    },
    'ce6m6hr2': {
      'en': '12 Projects',
      'de': '',
      'nl': '',
    },
    '13cqxzpk': {
      'en': '30%',
      'de': '',
      'nl': '',
    },
    'whkscxrb': {
      'en': 'My Tasks',
      'de': '',
      'nl': '',
    },
    '41qdg2hl': {
      'en': 'Today',
      'de': '',
      'nl': '',
    },
    'yvq5ff0z': {
      'en': 'Design Template Screens',
      'de': '',
      'nl': '',
    },
    '3xt6l3kf': {
      'en': 'Create template screen for task todo app.',
      'de': '',
      'nl': '',
    },
    'dsoccfw2': {
      'en': 'Due',
      'de': '',
      'nl': '',
    },
    '46ox9bg6': {
      'en': 'Tuesday, 10:00am',
      'de': '',
      'nl': '',
    },
    'oik6c070': {
      'en': 'In Progress',
      'de': '',
      'nl': '',
    },
    'llde8d63': {
      'en': 'Theme Collection',
      'de': '',
      'nl': '',
    },
    'xdcgqvt3': {
      'en': 'Create themes for use by our users.',
      'de': '',
      'nl': '',
    },
    'qtpz2fye': {
      'en': 'Due',
      'de': '',
      'nl': '',
    },
    '3e22nqw6': {
      'en': 'Tuesday, 10:00am',
      'de': '',
      'nl': '',
    },
    '6pejtgdl': {
      'en': 'In Progress',
      'de': '',
      'nl': '',
    },
    '9lreqkis': {
      'en': 'Upcoming',
      'de': '',
      'nl': '',
    },
    'kt0w7775': {
      'en': 'Design Template Screens',
      'de': '',
      'nl': '',
    },
    'ot9zi6vl': {
      'en': 'Create template screen for task todo app.',
      'de': '',
      'nl': '',
    },
    '795gcpoy': {
      'en': 'Due',
      'de': '',
      'nl': '',
    },
    '46bxwoe7': {
      'en': 'Tuesday, 10:00am',
      'de': '',
      'nl': '',
    },
    'jbdz5umb': {
      'en': 'In Progress',
      'de': '',
      'nl': '',
    },
    '7vch6vzk': {
      'en': 'Design Template Screens',
      'de': '',
      'nl': '',
    },
    'zngi9ztk': {
      'en': 'Create template screen for task todo app.',
      'de': '',
      'nl': '',
    },
    'tszre89r': {
      'en': 'Due',
      'de': '',
      'nl': '',
    },
    'c1h2uhxq': {
      'en': 'Tuesday, 10:00am',
      'de': '',
      'nl': '',
    },
    'q1j4qqif': {
      'en': 'In Progress',
      'de': '',
      'nl': '',
    },
    'uksk6cav': {
      'en': 'Completed',
      'de': '',
      'nl': '',
    },
    '56v8re4d': {
      'en': 'Design Template Screens',
      'de': '',
      'nl': '',
    },
    'vx50f6k0': {
      'en': 'Create template screen for task todo app.',
      'de': '',
      'nl': '',
    },
    'dys96894': {
      'en': 'Completed',
      'de': '',
      'nl': '',
    },
    '8q3jyxc0': {
      'en': 'Tuesday, 10:00am',
      'de': '',
      'nl': '',
    },
    'dmsj48ly': {
      'en': 'Complete',
      'de': '',
      'nl': '',
    },
    '7vmeo5un': {
      'en': 'Design Template Screens',
      'de': '',
      'nl': '',
    },
    'ignqg63w': {
      'en': 'Create template screen for task todo app.',
      'de': '',
      'nl': '',
    },
    '4gdgd718': {
      'en': 'Completed',
      'de': '',
      'nl': '',
    },
    'yq0tuv5r': {
      'en': 'Tuesday, 10:00am',
      'de': '',
      'nl': '',
    },
    'is326nvl': {
      'en': 'Complete',
      'de': '',
      'nl': '',
    },
    'kya8ddwv': {
      'en': 'Home',
      'de': '',
      'nl': '',
    },
  },
  // Profile08
  {
    'ef4b1dm4': {
      'en': 'David Jerome',
      'de': '',
      'nl': '',
    },
    '46tano6h': {
      'en': 'David.j@gmail.com',
      'de': '',
      'nl': '',
    },
    '6h6i1hdy': {
      'en': 'Passenger Documents',
      'de': '',
      'nl': '',
    },
    'x1a3fpnn': {
      'en': 'Tracker Notifications',
      'de': '',
      'nl': '',
    },
    '4ydb0qag': {
      'en': 'Help Center',
      'de': '',
      'nl': '',
    },
    'rern5hls': {
      'en': 'Settings',
      'de': '',
      'nl': '',
    },
    'owu7a25z': {
      'en': 'Phone Number',
      'de': '',
      'nl': '',
    },
    '8d7mdk5f': {
      'en': 'Add Number',
      'de': '',
      'nl': '',
    },
    'n683nq5g': {
      'en': 'Language',
      'de': '',
      'nl': '',
    },
    '5g1d1p78': {
      'en': 'English (eng)',
      'de': '',
      'nl': '',
    },
    '5r6pzv1m': {
      'en': 'Currency',
      'de': '',
      'nl': '',
    },
    'uofkebz3': {
      'en': 'US Dollar (\$)',
      'de': '',
      'nl': '',
    },
    '0zn8bk57': {
      'en': 'Profile Settings',
      'de': '',
      'nl': '',
    },
    'oek0ylnp': {
      'en': 'Edit Profile',
      'de': '',
      'nl': '',
    },
    'wn66p6xr': {
      'en': 'Notification Settings',
      'de': '',
      'nl': '',
    },
    'tlnj964k': {
      'en': 'Log out of account',
      'de': '',
      'nl': '',
    },
    '6lnnpqhx': {
      'en': 'Log Out?',
      'de': '',
      'nl': '',
    },
    'omn9q506': {
      'en': 'Home',
      'de': '',
      'nl': '',
    },
  },
  // Account
  {
    '8ha3p1xr': {
      'en': 'FAQs',
      'de': '',
      'nl': '',
    },
    't7v8ubd8': {
      'en': 'Help Center',
      'de': '',
      'nl': '',
    },
    'sva99nql': {
      'en': 'Settings',
      'de': '',
      'nl': '',
    },
    'qxi7k1jv': {
      'en': 'Phone Number',
      'de': '',
      'nl': '',
    },
    'djyxe3c3': {
      'en': 'Language',
      'de': '',
      'nl': '',
    },
    'wyl2gncp': {
      'en': 'English (eng)',
      'de': '',
      'nl': '',
    },
    'yh61dijf': {
      'en': 'Date of birth',
      'de': '',
      'nl': '',
    },
    'ikj7cyrm': {
      'en': 'Notification Settings',
      'de': '',
      'nl': '',
    },
    'aw9nhn9j': {
      'en': 'Log out of account',
      'de': '',
      'nl': '',
    },
    'bathq9kp': {
      'en': 'Log Out?',
      'de': '',
      'nl': '',
    },
    'ifirnnzc': {
      'en': 'Account',
      'de': '',
      'nl': '',
    },
    'qxyffips': {
      'en': '',
      'de': '',
      'nl': '',
    },
  },
  // phoneNumberScreen
  {
    '3k9wr1ph': {
      'en': 'Home',
      'de': '',
      'nl': '',
    },
  },
  // VeriifyCode
  {
    '4r2ink0q': {
      'en': 'Home',
      'de': '',
      'nl': '',
    },
  },
  // FAQs
  {
    '8z18zfob': {
      'en': 'Why Payspin?',
      'de': '',
      'nl': '',
    },
    'yo1s5s0c': {
      'en':
          'The platform enhances money circle user experience with automated and digital processes. Connecting users with a community that shares the same interests. It help users to build financial resilancy or target savings by calloberating seamlessly within selected groups within platform communities.',
      'de': '',
      'nl': '',
    },
    'sjdw012g': {
      'en': 'Receive your payments?',
      'de': '',
      'nl': '',
    },
    '85cn39o7': {
      'en':
          'Choose your preferred payment method through the app, whether it\'s bank transfer or SEPA or ideal or via credit card. Enter your payment details, and pay/receive your payment on time.',
      'de': '',
      'nl': '',
    },
    '22a4m0li': {
      'en': 'How can I join an association?',
      'de': '',
      'nl': '',
    },
    'ahmhpm1w': {
      'en':
          'Download the app, build or join circle, select your desired amount, duration, and role. Upload your ID for verification. Once approved you will be admitted, able to view your circle details, and make or receive your monthly payments on time.',
      'de': '',
      'nl': '',
    },
    'bgxryfz4': {
      'en': 'What documents are required?',
      'de': '',
      'nl': '',
    },
    't352cmhz': {
      'en':
          'You can join the platform with just your ID card or driving license, and filling in registeration form. However, if you need larger amounts or more circles, you may be required to provide payslips and bank statements.',
      'de': '',
      'nl': '',
    },
    'ten5cke8': {
      'en': 'How can I ensure the security of Payspin?',
      'de': '',
      'nl': '',
    },
    'exluirmp': {
      'en':
          'Users sign a legal contract to secure their rights, and Payspin cooperates with popular payment gateways licensed from the European bank and the European union.',
      'de': '',
      'nl': '',
    },
    'b26pyezo': {
      'en': 'How do I pay the installment?',
      'de': '',
      'nl': '',
    },
    '14ocizef': {
      'en':
          'You can pay your monthly installments through the application using various payment methods such as credit cards, SEPA, ideal, and bank transfers.',
      'de': '',
      'nl': '',
    },
    'cc12pcwo': {
      'en': 'Is there any interest?',
      'de': '',
      'nl': '',
    },
    'lub7q2j7': {
      'en':
          'There are no interest charges, but there is a plaform subscription fee.',
      'de': '',
      'nl': '',
    },
    'ab9gsklv': {
      'en': 'Copyright © 2024 Payspin - All Rights Reserved.',
      'de': '',
      'nl': '',
    },
    'w2zz8cnf': {
      'en': 'Home',
      'de': '',
      'nl': '',
    },
  },
  // step1
  {
    'hukwmj1d': {
      'en': 'Let’s Get Started ',
      'de': '',
      'nl': '',
    },
    'bc7hwhee': {
      'en': 'Create an account or log in to explore about our app',
      'de': '',
      'nl': '',
    },
    'aalgnmtl': {
      'en': 'Sign Up',
      'de': '',
      'nl': '',
    },
    '4h6jwfty': {
      'en': 'Email',
      'de': '',
      'nl': '',
    },
    '9k9hxlsb': {
      'en': ' Password',
      'de': '',
      'nl': '',
    },
    'h5ps4j3d': {
      'en': 'Remember me',
      'de': '',
      'nl': '',
    },
    'd96dyyc3': {
      'en': 'Forgot Password ?',
      'de': '',
      'nl': '',
    },
    '3xug9c3u': {
      'en': 'Log In',
      'de': '',
      'nl': '',
    },
    'ktic4wun': {
      'en': 'Or login with',
      'de': '',
      'nl': '',
    },
    '72sbrhsa': {
      'en': 'Apple',
      'de': '',
      'nl': '',
    },
    '7gu45zm3': {
      'en': 'Google',
      'de': '',
      'nl': '',
    },
    'l213zo5r': {
      'en': 'Enter your password',
      'de': '',
      'nl': '',
    },
    'tdx11kug': {
      'en': 'Enter your email address',
      'de': '',
      'nl': '',
    },
    '9eavsjuz': {
      'en': 'Log In',
      'de': '',
      'nl': '',
    },
    'dxqi2214': {
      'en': 'First Name',
      'de': '',
      'nl': '',
    },
    'hfv385xm': {
      'en': 'Last Name',
      'de': '',
      'nl': '',
    },
    'xk7hpgtc': {
      'en': ' Password',
      'de': '',
      'nl': '',
    },
    'pxc8rgs4': {
      'en': 'Email',
      'de': '',
      'nl': '',
    },
    'v76jg9no': {
      'en': 'Birth of date',
      'de': '',
      'nl': '',
    },
    's7duipmf': {
      'en': 'Or Sign Up with',
      'de': '',
      'nl': '',
    },
    '7o5kawnc': {
      'en': 'Apple',
      'de': '',
      'nl': '',
    },
    'dbha06em': {
      'en': '       Google',
      'de': '',
      'nl': '',
    },
    '52c4j916': {
      'en': 'Sign Up',
      'de': '',
      'nl': '',
    },
    'd7u1qbmb': {
      'en': 'Becket',
      'de': '',
      'nl': '',
    },
    '6292ioi6': {
      'en': '18/03/2024',
      'de': '',
      'nl': '',
    },
    'f98rlw86': {
      'en': 'Lois',
      'de': '',
      'nl': '',
    },
    'wl4o0mhr': {
      'en': '*******',
      'de': '',
      'nl': '',
    },
    '9wvpjygs': {
      'en': 'Loisbecket@gmail.com',
      'de': '',
      'nl': '',
    },
    '4xa1wpzo': {
      'en': 'Home',
      'de': '',
      'nl': '',
    },
  },
  // step2
  {
    'seyo21wt': {
      'en': 'Step 2 - Account Details',
      'de': '',
      'nl': '',
    },
    'xv2oelo2': {
      'en': 'Create Account',
      'de': '',
      'nl': '',
    },
    'yw63almh': {
      'en': 'Let\'s get started by filling out the form below.',
      'de': '',
      'nl': '',
    },
    'c8xyqkcj': {
      'en': 'Email',
      'de': '',
      'nl': '',
    },
    't2ta9nuz': {
      'en': 'First Name',
      'de': '',
      'nl': '',
    },
    'd87opw1g': {
      'en': 'Get Started',
      'de': '',
      'nl': '',
    },
    '8r5sp249': {
      'en': 'Cancel Signup',
      'de': '',
      'nl': '',
    },
    '4kx3wvno': {
      'en': '2/4',
      'de': '',
      'nl': '',
    },
    'hrnhc7s4': {
      'en': 'Create account progress - Step 2',
      'de': '',
      'nl': '',
    },
    'a3pypmnu': {
      'en': 'Field is required',
      'de': '',
      'nl': '',
    },
    'ywdg8jva': {
      'en': 'Please choose an option from the dropdown',
      'de': '',
      'nl': '',
    },
    '6hyi4q2f': {
      'en': 'Field is required',
      'de': '',
      'nl': '',
    },
    'pv2myqfq': {
      'en': 'Please choose an option from the dropdown',
      'de': '',
      'nl': '',
    },
    'qdjrwab3': {
      'en': 'Home',
      'de': '',
      'nl': '',
    },
  },
  // step3
  {
    '14v4kxs4': {
      'en': 'Home',
      'de': '',
      'nl': '',
    },
  },
  // step4
  {
    'ksocfjjt': {
      'en': 'Home',
      'de': '',
      'nl': '',
    },
  },
  // Home25BudgetDashboardResponsiveCopy
  {
    'sh9nr5od': {
      'en': 'check.io',
      'de': '',
      'nl': '',
    },
    'n4k48r05': {
      'en': 'Andrew D.',
      'de': '',
      'nl': '',
    },
    '8lrc9zld': {
      'en': 'admin@gmail.com',
      'de': '',
      'nl': '',
    },
    '5d95mgey': {
      'en': 'Dashboard',
      'de': '',
      'nl': '',
    },
    '3oxo7qpn': {
      'en': 'Transactions',
      'de': '',
      'nl': '',
    },
    'olafcvzk': {
      'en': 'Projects',
      'de': '',
      'nl': '',
    },
    'yweutqrj': {
      'en': 'Users',
      'de': '',
      'nl': '',
    },
    '4fttd0uk': {
      'en': 'Overview',
      'de': '',
      'nl': '',
    },
    'h2xirz2e': {
      'en': 'Below is a company overview',
      'de': '',
      'nl': '',
    },
    'lgydmzl5': {
      'en': 'Andrew D.',
      'de': '',
      'nl': '',
    },
    'clntyuaw': {
      'en': 'admin@gmail.com',
      'de': '',
      'nl': '',
    },
    'dgoyg0vv': {
      'en': 'Income this Month',
      'de': '',
      'nl': '',
    },
    '3cb1wibm': {
      'en': '\$567,402',
      'de': '',
      'nl': '',
    },
    '5zkr69wu': {
      'en': 'Total Orders',
      'de': '',
      'nl': '',
    },
    'i3jrk6jk': {
      'en': '2,208',
      'de': '',
      'nl': '',
    },
    'xiaegzzi': {
      'en': 'Total Orders',
      'de': '',
      'nl': '',
    },
    '3yzgvzv8': {
      'en': '2,208',
      'de': '',
      'nl': '',
    },
    'nhwancje': {
      'en': 'Total Orders',
      'de': '',
      'nl': '',
    },
    'uxdnvhau': {
      'en': '2,208',
      'de': '',
      'nl': '',
    },
    '2irggldj': {
      'en': 'Outstanding Balance',
      'de': '',
      'nl': '',
    },
    'g2y7twdr': {
      'en': '\$529,204',
      'de': '',
      'nl': '',
    },
    'burkh0ep': {
      'en': '55%',
      'de': '',
      'nl': '',
    },
    'alhnn08i': {
      'en': 'Budget Overview',
      'de': '',
      'nl': '',
    },
    'ni94osnz': {
      'en': '\$242,102',
      'de': '',
      'nl': '',
    },
    '47rjo54g': {
      'en': '25%',
      'de': '',
      'nl': '',
    },
    'mu3wzqxs': {
      'en': 'Outstanding Invoices',
      'de': '',
      'nl': '',
    },
    'prg9lu2t': {
      'en': 'Below are some of the outstanding invoices for your clients.',
      'de': '',
      'nl': '',
    },
    'if7jsy4m': {
      'en': 'Add New',
      'de': '',
      'nl': '',
    },
    '7210lny6': {
      'en': 'Work Type',
      'de': '',
      'nl': '',
    },
    'i4c8yaav': {
      'en': 'Sent To:',
      'de': '',
      'nl': '',
    },
    'gz8h3ct7': {
      'en': 'Contract Amount',
      'de': '',
      'nl': '',
    },
    'oy2o2hxz': {
      'en': 'Status',
      'de': '',
      'nl': '',
    },
    'ii9ep5ah': {
      'en': 'Actions',
      'de': '',
      'nl': '',
    },
    'ghljmzj6': {
      'en': 'Design Work',
      'de': '',
      'nl': '',
    },
    'gq8s8g6h': {
      'en': 'Randy Peterson',
      'de': '',
      'nl': '',
    },
    'aco6sn1s': {
      'en': 'Business Name',
      'de': '',
      'nl': '',
    },
    'hcakhxtx': {
      'en': '\$2,100',
      'de': '',
      'nl': '',
    },
    'lg36z1p9': {
      'en': 'Paid',
      'de': '',
      'nl': '',
    },
    'r54949bn': {
      'en': 'Design Work',
      'de': '',
      'nl': '',
    },
    'scgxfxcw': {
      'en': 'Randy Peterson',
      'de': '',
      'nl': '',
    },
    '8qy769qq': {
      'en': 'Business Name',
      'de': '',
      'nl': '',
    },
    '1c7xlonf': {
      'en': '\$2,100',
      'de': '',
      'nl': '',
    },
    'zdqfhmzv': {
      'en': 'Paid',
      'de': '',
      'nl': '',
    },
    '7y86say9': {
      'en': 'Design Work',
      'de': '',
      'nl': '',
    },
    '2cygvlqd': {
      'en': 'Randy Peterson',
      'de': '',
      'nl': '',
    },
    '5s1xd6d3': {
      'en': 'Business Name',
      'de': '',
      'nl': '',
    },
    'tvgx1c6y': {
      'en': '\$2,100',
      'de': '',
      'nl': '',
    },
    'inp3i02l': {
      'en': 'Paid',
      'de': '',
      'nl': '',
    },
    'boowjb05': {
      'en': 'Design Work',
      'de': '',
      'nl': '',
    },
    'mi198a4y': {
      'en': 'Randy Peterson',
      'de': '',
      'nl': '',
    },
    '2h7hv7he': {
      'en': 'Business Name',
      'de': '',
      'nl': '',
    },
    '201muzpk': {
      'en': '\$2,100',
      'de': '',
      'nl': '',
    },
    '0y1azoe1': {
      'en': 'Paid',
      'de': '',
      'nl': '',
    },
    '2ahgy4vk': {
      'en': 'Design Work',
      'de': '',
      'nl': '',
    },
    'c8edsm51': {
      'en': 'Randy Peterson',
      'de': '',
      'nl': '',
    },
    'jiiambdf': {
      'en': 'Business Name',
      'de': '',
      'nl': '',
    },
    '03jrvyuy': {
      'en': '\$2,100',
      'de': '',
      'nl': '',
    },
    'c6zao97h': {
      'en': 'Pending',
      'de': '',
      'nl': '',
    },
    '7yvybcz3': {
      'en': 'Design Work',
      'de': '',
      'nl': '',
    },
    'libnu4dm': {
      'en': 'Randy Peterson',
      'de': '',
      'nl': '',
    },
    'ka59wmob': {
      'en': 'Business Name',
      'de': '',
      'nl': '',
    },
    'oytigouw': {
      'en': '\$2,100',
      'de': '',
      'nl': '',
    },
    '55rz56bc': {
      'en': 'Pending',
      'de': '',
      'nl': '',
    },
    'bq500hlz': {
      'en': 'Design Work',
      'de': '',
      'nl': '',
    },
    '2lwn7kc0': {
      'en': 'Randy Peterson',
      'de': '',
      'nl': '',
    },
    'q6g2sg4z': {
      'en': 'Business Name',
      'de': '',
      'nl': '',
    },
    'm54kxhcv': {
      'en': '\$2,100',
      'de': '',
      'nl': '',
    },
    'a9qbg4vb': {
      'en': 'Pending',
      'de': '',
      'nl': '',
    },
    'yv0yqb81': {
      'en': 'Home',
      'de': '',
      'nl': '',
    },
  },
  // Onboarding012
  {
    'blb0y2pc': {
      'en': 'Trusted & Secured',
      'de': '',
      'nl': '',
    },
    '7skpub2j': {
      'en': 'Same tradition',
      'de': '',
      'nl': '',
    },
    'bve4jvww': {
      'en': 'Same Trust',
      'de': '',
      'nl': '',
    },
    'iubrfapz': {
      'en': 'Secured payments',
      'de': '',
      'nl': '',
    },
    'j130shgp': {
      'en':
          'Your trusted tradition,now is smarter not harder. \nYour money, your community, and your peace of mind. Secured payments, powered by top EU providers. \n',
      'de': '',
      'nl': '',
    },
    '7jskpe2o': {
      'en': 'Financial Well-Being',
      'de': '',
      'nl': '',
    },
    '7a2ona78': {
      'en': 'Grow Together',
      'de': '',
      'nl': '',
    },
    '9k0orvlt': {
      'en': 'Zero Interest',
      'de': '',
      'nl': '',
    },
    '9byol1a1': {
      'en': 'Pure Gains',
      'de': '',
      'nl': '',
    },
    'xnbakhu4': {
      'en':
          'Secure savings by your social network bonds - Your financial resilience future, powered by community.\n',
      'de': '',
      'nl': '',
    },
    '9mi5jj8a': {
      'en': '',
      'de': '',
      'nl': '',
    },
    'c9p8zac5': {
      'en': '',
      'de': '',
      'nl': '',
    },
    'd1etm06s': {
      'en': 'Easy & Convenient',
      'de': '',
      'nl': '',
    },
    'eh04xkes': {
      'en': 'Install app',
      'de': '',
      'nl': '',
    },
    'iumgn4j9': {
      'en': 'Sign-up',
      'de': '',
      'nl': '',
    },
    'b1x1f25g': {
      'en': 'Circle-up',
      'de': '',
      'nl': '',
    },
    'jypz2rye': {
      'en': 'Get plan',
      'de': '',
      'nl': '',
    },
    '6e8se633': {
      'en': 'Get paid',
      'de': '',
      'nl': '',
    },
    's4h88yqx': {
      'en':
          'Payspin made it simple. Modern method you will love minus the hassle. All automatic, all secured, well planned right in your pocket. Beyod borders, more members, more possibilties.',
      'de': '',
      'nl': '',
    },
    'q86z8ipx': {
      'en': 'About us',
      'de': '',
      'nl': '',
    },
    '29akdg62': {
      'en': 'Get Started',
      'de': '',
      'nl': '',
    },
    '6z60she2': {
      'en': 'Home',
      'de': '',
      'nl': '',
    },
  },
  // Onboarding022
  {
    'd4hbdxbr': {
      'en': 'Home',
      'de': '',
      'nl': '',
    },
  },
  // Auth1Phone
  {
    'qu01gytb': {
      'en': 'Phone number Verification',
      'de': '',
      'nl': '',
    },
    'jdkddbpi': {
      'en': 'Enter your phone number',
      'de': '',
      'nl': '',
    },
    'frq4m18f': {
      'en':
          'Enter your primary phone number which will be used to contact you after creating your account',
      'de': '',
      'nl': '',
    },
    'z94x6wln': {
      'en': 'Netherlands',
      'de': '',
      'nl': '',
    },
    'fi7do3hw': {
      'en': 'Select country...',
      'de': '',
      'nl': '',
    },
    'ccsf5j1e': {
      'en': 'Search country...',
      'de': '',
      'nl': '',
    },
    'dji645y0': {
      'en': 'Option 1',
      'de': '',
      'nl': '',
    },
    '5epj4ha2': {
      'en': 'Phone number',
      'de': '',
      'nl': '',
    },
    'vf73z8yq': {
      'en': '100000000',
      'de': '',
      'nl': '',
    },
    'o8mt3n8a': {
      'en': 'Field is required',
      'de': '',
      'nl': '',
    },
    'annapdci': {
      'en': 'Please choose an option from the dropdown',
      'de': '',
      'nl': '',
    },
    '20csfrpw': {
      'en': 'Continue',
      'de': '',
      'nl': '',
    },
    'tyz1tqex': {
      'en': 'Cancel Signup',
      'de': '',
      'nl': '',
    },
    'wo9e8azo': {
      'en': 'Home',
      'de': '',
      'nl': '',
    },
  },
  // Auth2OTP
  {
    '4yhozm1j': {
      'en': 'Phone number Verification',
      'de': '',
      'nl': '',
    },
    'yufy6bnw': {
      'en': 'Continue',
      'de': '',
      'nl': '',
    },
    'm23al5js': {
      'en': 'Cancel Signup',
      'de': '',
      'nl': '',
    },
    'd2jlde2u': {
      'en': 'Enter the 6-digit code',
      'de': '',
      'nl': '',
    },
    '2i1o6gvs': {
      'en': 'Change Number',
      'de': '',
      'nl': '',
    },
    'gx5zrcg0': {
      'en':
          'We\'ve sent you a verification code via sms to your phone number, assuming you entered your phone number correctly in the previous step. Enter the verification code to continue.',
      'de': '',
      'nl': '',
    },
    'f0eyl236': {
      'en': 'Resend code',
      'de': '',
      'nl': '',
    },
    'g62b8v0u': {
      'en': 'Home',
      'de': '',
      'nl': '',
    },
  },
  // testing
  {
    'wluo9wfr': {
      'en': 'Netherlands',
      'de': '',
      'nl': '',
    },
    'dn5rt7sw': {
      'en': 'Please select...',
      'de': '',
      'nl': '',
    },
    'fgszmex3': {
      'en': 'Search for an item...',
      'de': '',
      'nl': '',
    },
    '9tgopkn5': {
      'en': 'Netherlands',
      'de': '',
      'nl': '',
    },
    '7pak7zt6': {
      'en': 'Germany',
      'de': '',
      'nl': '',
    },
    '8wwc3ioy': {
      'en': 'Label here...',
      'de': '',
      'nl': '',
    },
    'faiwc659': {
      'en': 'Netherlands',
      'de': '',
      'nl': '',
    },
    '8cmswpie': {
      'en': 'Home',
      'de': '',
      'nl': '',
    },
  },
  // Auth3CreateProfile
  {
    'jfq6pn04': {
      'en': 'Complete your profile',
      'de': '',
      'nl': '',
    },
    '30f62t3v': {
      'en': 'Get Started',
      'de': '',
      'nl': '',
    },
    'umkngmc3': {
      'en': 'Cancel Signup',
      'de': '',
      'nl': '',
    },
    'k5y7wh2o': {
      'en': 'Lets get started',
      'de': '',
      'nl': '',
    },
    'tbvhwbz1': {
      'en': 'Continue with Google',
      'de': '',
      'nl': '',
    },
    'foe1jdur': {
      'en': '',
      'de': '',
      'nl': '',
    },
    'cw0myxr7': {
      'en': '',
      'de': '',
      'nl': '',
    },
    '7409lh9g': {
      'en': 'OR',
      'de': '',
      'nl': '',
    },
    'v0z707z1': {
      'en': 'First Name',
      'de': '',
      'nl': '',
    },
    'q3wkvzm3': {
      'en': 'Last Name',
      'de': '',
      'nl': '',
    },
    '0unzznko': {
      'en': 'Field is required',
      'de': '',
      'nl': '',
    },
    'luj5nhcs': {
      'en': 'Please choose an option from the dropdown',
      'de': '',
      'nl': '',
    },
    'nbwd67k8': {
      'en': 'Field is required',
      'de': '',
      'nl': '',
    },
    'aun73q7e': {
      'en': 'Please choose an option from the dropdown',
      'de': '',
      'nl': '',
    },
    'aouxzvv0': {
      'en': 'Email',
      'de': '',
      'nl': '',
    },
    'obpl895z': {
      'en': 'Field is required',
      'de': '',
      'nl': '',
    },
    'o54jiiw3': {
      'en': 'Please choose an option from the dropdown',
      'de': '',
      'nl': '',
    },
    'oi4s67wt': {
      'en': 'Home',
      'de': '',
      'nl': '',
    },
  },
  // Onboarding013
  {
    '6fyeie3u': {
      'en': 'Welcome back!',
      'de': '',
      'nl': '',
    },
    'hvu6v5iy': {
      'en': 'Please login to access your account',
      'de': '',
      'nl': '',
    },
    '91vdlc17': {
      'en': 'LOG OUT',
      'de': '',
      'nl': '',
    },
    '2rs1aan1': {
      'en': 'LOG IN',
      'de': '',
      'nl': '',
    },
    'sdy31jvt': {
      'en': 'Home',
      'de': '',
      'nl': '',
    },
  },
  // Details12SocialPost
  {
    '2x5t55f2': {
      'en': 'Coffee Farm Tours',
      'de': '',
      'nl': '',
    },
    'kboe3jy3': {
      'en': '3.1k Members',
      'de': '',
      'nl': '',
    },
    'q7pdnthy': {
      'en':
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
      'de': '',
      'nl': '',
    },
    'ti42itqs': {
      'en': 'Alexandria Smith',
      'de': '',
      'nl': '',
    },
    'h9w6p16u': {
      'en': '1m ago',
      'de': '',
      'nl': '',
    },
    'nausq9xj': {
      'en':
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
      'de': '',
      'nl': '',
    },
    'kmpk5q0l': {
      'en': '3',
      'de': '',
      'nl': '',
    },
    'smhvy77i': {
      'en': 'likes',
      'de': '',
      'nl': '',
    },
    '57nf99mh': {
      'en': '8',
      'de': '',
      'nl': '',
    },
    '2gr3droq': {
      'en': 'Comments',
      'de': '',
      'nl': '',
    },
    'p23ccnbr': {
      'en': 'Randy Alcorn',
      'de': '',
      'nl': '',
    },
    'ipsvcckb': {
      'en':
          'I\'m not really sure about this section here aI think you should do soemthing cool!',
      'de': '',
      'nl': '',
    },
    'mhurxx0c': {
      'en': 'a min ago',
      'de': '',
      'nl': '',
    },
    'nuxcbt1u': {
      'en': 'Sandra Smith',
      'de': '',
      'nl': '',
    },
    '129qj8kk': {
      'en':
          'I\'m not really sure about this section here aI think you should do soemthing cool!',
      'de': '',
      'nl': '',
    },
    'rfol4t7j': {
      'en': 'a min ago',
      'de': '',
      'nl': '',
    },
    '7io0xz9u': {
      'en': 'Write a Post',
      'de': '',
      'nl': '',
    },
    'ualdq5kt': {
      'en': 'Home',
      'de': '',
      'nl': '',
    },
  },
  // Home02List
  {
    '03q7fr9u': {
      'en': 'What\'s New',
      'de': '',
      'nl': '',
    },
    'apm7yk42': {
      'en': 'Payspin Hottest updates',
      'de': '',
      'nl': '',
    },
    'z1637ych': {
      'en': 'Popular Bookings',
      'de': '',
      'nl': '',
    },
    '8rz35zrx': {
      'en': 'Mountain Lake Cabin',
      'de': '',
      'nl': '',
    },
    'trgvpx34': {
      'en':
          'Retreat to the natural beauty of the mountains and immerse yourself in the comfort of our luxurious mountain house, an idyllic escape for your perfect mountain getaway.',
      'de': '',
      'nl': '',
    },
    'sq266jpm': {
      'en': '\$143/night',
      'de': '',
      'nl': '',
    },
    'unsq06cs': {
      'en': 'Little Mountain House',
      'de': '',
      'nl': '',
    },
    '630v0tzp': {
      'en':
          'Escape to the serene beauty of the mountains and enjoy a luxurious stay in our cozy mountain house, the perfect destination for your dream mountain getaway.',
      'de': '',
      'nl': '',
    },
    '1tczyoze': {
      'en': '\$182/night',
      'de': '',
      'nl': '',
    },
    'jqhhqjd5': {
      'en': 'Ski Cabin',
      'de': '',
      'nl': '',
    },
    '4brsigd9': {
      'en':
          'Escape to the serene beauty of the mountains and enjoy a luxurious stay in our cozy mountain house, the perfect destination for your dream mountain getaway.',
      'de': '',
      'nl': '',
    },
    'c1n67bu1': {
      'en': '\$182/night',
      'de': '',
      'nl': '',
    },
    'kh4d431n': {
      'en': 'Home',
      'de': '',
      'nl': '',
    },
  },
  // WhatsNew
  {
    'knl73e15': {
      'en': 'What\'s New',
      'de': '',
      'nl': '',
    },
    'fqjz4q70': {
      'en': 'Payspin Hottest updates',
      'de': '',
      'nl': '',
    },
    'cjbfln1u': {
      'en': '\$143/night',
      'de': '',
      'nl': '',
    },
    'lexsbryg': {
      'en': 'Home',
      'de': '',
      'nl': '',
    },
  },
  // Onboarding022onboarding
  {
    'zyzenv5z': {
      'en': 'Home',
      'de': '',
      'nl': '',
    },
  },
  // Notifications
  {
    'mptv5owp': {
      'en': '\$143/night',
      'de': '',
      'nl': '',
    },
    'ek7q22mg': {
      'en': 'Hello World',
      'de': '',
      'nl': '',
    },
    'srbbv3t0': {
      'en': 'Notifiications',
      'de': '',
      'nl': '',
    },
    'pjvsd7xi': {
      'en': 'Home',
      'de': '',
      'nl': '',
    },
  },
  // edit
  {
    '7x5v19oy': {
      'en': '     25 \nOctober\n   2024',
      'de': '',
      'nl': '',
    },
    'idcgte2i': {
      'en': '    25\nAugust\n  2024',
      'de': '',
      'nl': '',
    },
    '5x7p61f7': {
      'en': '      25\nDecember\n    2024',
      'de': '',
      'nl': '',
    },
    't18jvpu1': {
      'en': '  25 \n July\n2024',
      'de': '',
      'nl': '',
    },
    'x64vdpj5': {
      'en': '        25\nSeptember\n      2024',
      'de': '',
      'nl': '',
    },
    '58llkz6x': {
      'en': '       25\nNovember\n     2024',
      'de': '',
      'nl': '',
    },
    'sxrq0ti4': {
      'en': 'Your payment in the circle',
      'de': '',
      'nl': '',
    },
    '4xz8j0ck': {
      'en': '1,800 EUR',
      'de': '',
      'nl': '',
    },
    'kulj0kk4': {
      'en': 'Page Title',
      'de': '',
      'nl': '',
    },
    'xdohudvm': {
      'en': 'Home',
      'de': '',
      'nl': '',
    },
  },
  // onboardingREHAM
  {
    '9ei7j76h': {
      'en': 'Skip',
      'de': '',
      'nl': '',
    },
    'gtgegom3': {
      'en': 'Trusted & Secured',
      'de': '',
      'nl': '',
    },
    '5gwk47nm': {
      'en': 'Same Trust',
      'de': '',
      'nl': '',
    },
    'it116ya0': {
      'en': 'Same tradition',
      'de': '',
      'nl': '',
    },
    '1fs0unw2': {
      'en': 'Secured payments',
      'de': '',
      'nl': '',
    },
    '5yzjyw4h': {
      'en':
          'Your trusted tradition,now is smarter not harder. Your money, your community, and your peace of mind. Secured payments, powered by top EU providers. ',
      'de': '',
      'nl': '',
    },
    '2qwn2swp': {
      'en': 'Next',
      'de': '',
      'nl': '',
    },
    'b8k0pvvh': {
      'en': 'Financial Well-Being',
      'de': '',
      'nl': '',
    },
    '34jxn5sy': {
      'en': 'Grow Together',
      'de': '',
      'nl': '',
    },
    'vyiahe6x': {
      'en': 'Zero Interest',
      'de': '',
      'nl': '',
    },
    'ggbhdrwq': {
      'en': 'Pure Gains',
      'de': '',
      'nl': '',
    },
    'x6hwenvl': {
      'en':
          'Your trusted tradition,now is smarter not harder. \nYour money, your community, and your peace of mind.\nSecured payments, powered by top EU providers. ',
      'de': '',
      'nl': '',
    },
    'gewqo9wi': {
      'en': 'Next',
      'de': '',
      'nl': '',
    },
    'sno0hqc8': {
      'en': 'Easy & Convenient',
      'de': '',
      'nl': '',
    },
    'po1emz9q': {
      'en': 'Install app',
      'de': '',
      'nl': '',
    },
    'mo406oje': {
      'en': 'Sign-up',
      'de': '',
      'nl': '',
    },
    'm294bbag': {
      'en': 'Circle-up',
      'de': '',
      'nl': '',
    },
    'asv6k1dr': {
      'en': 'Get plan',
      'de': '',
      'nl': '',
    },
    's9xitxsu': {
      'en': 'Get paid',
      'de': '',
      'nl': '',
    },
    'u6reaqks': {
      'en':
          'Payspin made it simple. Modern method you will love minus the hassle. All automatic, all secured, well planned right in your pocket. Beyod borders, more members, more possibilties.',
      'de': '',
      'nl': '',
    },
    'm7nyukgh': {
      'en': 'Next',
      'de': '',
      'nl': '',
    },
    '52mx5iqy': {
      'en': 'Home',
      'de': '',
      'nl': '',
    },
  },
  // Homeold
  {
    '2othv7g3': {
      'en': 'New Payspin',
      'de': '',
      'nl': '',
    },
    '84b07v8y': {
      'en': 'Home',
      'de': '',
      'nl': '',
    },
    'i7zrdlhc': {
      'en': 'New Payspin',
      'de': '',
      'nl': '',
    },
    '7imcwlnt': {
      'en': 'Starts on',
      'de': '',
      'nl': '',
    },
    'jk5bpt3x': {
      'en': 'Payout date',
      'de': '',
      'nl': '',
    },
    '9ibq7sl6': {
      'en': 'Total payout',
      'de': '',
      'nl': '',
    },
    'muy6b669': {
      'en': '€ ',
      'de': '',
      'nl': '',
    },
    'duadamv6': {
      'en': 'Payspin duration',
      'de': '',
      'nl': '',
    },
    'kquql88m': {
      'en': 'months',
      'de': '',
      'nl': '',
    },
    'oj4vfihh': {
      'en': '€/amount',
      'de': '',
      'nl': '',
    },
    'axoley56': {
      'en': 'Payspin progress',
      'de': '',
      'nl': '',
    },
    'fahdzxq5': {
      'en': '50%',
      'de': '',
      'nl': '',
    },
    'lqcnz2ey': {
      'en': 'Notification',
      'de': '',
      'nl': '',
    },
    'ofpa7xg9': {
      'en': '\$143/night',
      'de': '',
      'nl': '',
    },
    '6gdemx3i': {
      'en': 'Hello World',
      'de': '',
      'nl': '',
    },
    'aqten9xi': {
      'en': 'see more',
      'de': '',
      'nl': '',
    },
    'siqw3j0x': {
      'en': '',
      'de': '',
      'nl': '',
    },
  },
  // PayspinOld
  {
    'qus3hrvm': {
      'en': 'Active',
      'de': '',
      'nl': '',
    },
    '96i297ar': {
      'en':
          'Your active Payspins (money circles) should appear here, but it seems you don\'t have any yet',
      'de': '',
      'nl': '',
    },
    '31cg03m1': {
      'en': 'Starts on',
      'de': '',
      'nl': '',
    },
    'nvfldnjy': {
      'en': 'Payout date',
      'de': '',
      'nl': '',
    },
    'dhopx7qf': {
      'en': 'Total payout',
      'de': '',
      'nl': '',
    },
    'fkqyxis6': {
      'en': '€ ',
      'de': '',
      'nl': '',
    },
    '443d9unn': {
      'en': 'Payspin duration',
      'de': '',
      'nl': '',
    },
    'anebnzh2': {
      'en': 'months',
      'de': '',
      'nl': '',
    },
    'b6jaxnv2': {
      'en': '€/month',
      'de': '',
      'nl': '',
    },
    '1m8hhuwg': {
      'en': 'Payspin progress',
      'de': '',
      'nl': '',
    },
    'oc9nejz5': {
      'en': '50%',
      'de': '',
      'nl': '',
    },
    '80p7qf87': {
      'en': 'Design Work',
      'de': '',
      'nl': '',
    },
    '8joprj24': {
      'en': '\$2,100',
      'de': '',
      'nl': '',
    },
    'ge84qgpa': {
      'en': 'Finished',
      'de': '',
      'nl': '',
    },
    'te3wdvpc': {
      'en':
          'Your completed Payspins (money circles) should appear here, but it seems you haven\'t finished any yet',
      'de': '',
      'nl': '',
    },
    'x049txqh': {
      'en':
          'Your completed Payspins (money circles) should appear here, but it seems you haven\'t finished any',
      'de': '',
      'nl': '',
    },
    'n7bz9h9u': {
      'en': 'My Payspin',
      'de': '',
      'nl': '',
    },
    'jwpuyesx': {
      'en': 'Join',
      'de': '',
      'nl': '',
    },
    '4siykmag': {
      'en': '',
      'de': '',
      'nl': '',
    },
  },
  // Auth1PhoneNEW
  {
    'ajs26ifh': {
      'en': 'Enter your Phone Number',
      'de': '',
      'nl': '',
    },
    'dilq7l3j': {
      'en':
          'Enter your phone number, We will send you a\n confirmation code there.',
      'de': '',
      'nl': '',
    },
    '983q0ddl': {
      'en': '',
      'de': '',
      'nl': '',
    },
    'yzox6if4': {
      'en': 'Search...',
      'de': '',
      'nl': '',
    },
    'kvfkuxzw': {
      'en': 'Option 1',
      'de': '',
      'nl': '',
    },
    '70b5cjd9': {
      'en': 'Option 2',
      'de': '',
      'nl': '',
    },
    '0hmr88as': {
      'en': 'Option 3',
      'de': '',
      'nl': '',
    },
    'z6ryu98e': {
      'en': '(454) 726-0592',
      'de': '',
      'nl': '',
    },
    'pkw2y2n1': {
      'en': 'Continuo',
      'de': '',
      'nl': '',
    },
    '0sgf3jx4': {
      'en': 'Home',
      'de': '',
      'nl': '',
    },
  },
  // Auth2OTPNEW
  {
    'tqqb0sf4': {
      'en': 'Verify your Phone Number',
      'de': '',
      'nl': '',
    },
    '57szj0rq': {
      'en': 'A 6-digit OTP code has been sent to\nenter the code to continue.',
      'de': '',
      'nl': '',
    },
    'gh1wrc3n': {
      'en': '+2348065650633',
      'de': '',
      'nl': '',
    },
    'qm4hb3wd': {
      'en': 'Enter OTP',
      'de': '',
      'nl': '',
    },
    'u341565x': {
      'en': '1',
      'de': '',
      'nl': '',
    },
    'vo8h6lsz': {
      'en': 'Didn’t receive OTP?',
      'de': '',
      'nl': '',
    },
    'oqxsyo0l': {
      'en': 'Resend code',
      'de': '',
      'nl': '',
    },
    'bck9mkxk': {
      'en': 'Verify',
      'de': '',
      'nl': '',
    },
    '05is6ssq': {
      'en': 'Home',
      'de': '',
      'nl': '',
    },
  },
  // NotificationsREHAM
  {
    '51iyfe3d': {
      'en': 'Notifications',
      'de': '',
      'nl': '',
    },
    'ols9x4sp': {
      'en': 'No Notifications',
      'de': '',
      'nl': '',
    },
    '7jp8ne6v': {
      'en': 'We’ll let you know when there will be something to update you.',
      'de': '',
      'nl': '',
    },
    'j2ee1f13': {
      'en': 'Home',
      'de': '',
      'nl': '',
    },
  },
  // NONotificationsREHAM
  {
    'axojy9jo': {
      'en': 'Notifications ',
      'de': '',
      'nl': '',
    },
    '8pcq80w2': {
      'en': 'No Notifications',
      'de': '',
      'nl': '',
    },
    'su1hwiso': {
      'en': 'We’ll let you know when there will be something to update you.',
      'de': '',
      'nl': '',
    },
    'ewatq0ef': {
      'en': 'Home',
      'de': '',
      'nl': '',
    },
  },
  // CreateORJoinREHAM
  {
    '3iktthc1': {
      'en': 'Select an Option',
      'de': '',
      'nl': '',
    },
    'jv496np0': {
      'en': 'Which option would you like to choose?',
      'de': '',
      'nl': '',
    },
    '1mdg5oo5': {
      'en': 'Create Your Own Circle',
      'de': '',
      'nl': '',
    },
    '7is2vuf6': {
      'en':
          '\"Bring people together! Create\nyour own circle,define its purpose,\nand shape its characteristics.\"',
      'de': '',
      'nl': '',
    },
    '8tvhd153': {
      'en': 'Join an Existing Circle',
      'de': '',
      'nl': '',
    },
    'e9m54bpf': {
      'en':
          '\"Have an invitation? Enter the unique code shared with you and become part of an existing circle created by someone you know.\"',
      'de': '',
      'nl': '',
    },
    '26674cdk': {
      'en': 'Home',
      'de': '',
      'nl': '',
    },
  },
  // Create1REHAM
  {
    'thldux0m': {
      'en': 'Create Your Own Circle',
      'de': '',
      'nl': '',
    },
    'www7mytb': {
      'en': '1',
      'de': '',
      'nl': '',
    },
    'yr9nv5q4': {
      'en': '2',
      'de': '',
      'nl': '',
    },
    '4q9hz9wp': {
      'en': '3',
      'de': '',
      'nl': '',
    },
    '225xnzs9': {
      'en': 'Amount ',
      'de': '',
      'nl': '',
    },
    'gxsls7jk': {
      'en': 'Role',
      'de': '',
      'nl': '',
    },
    'zejgqzhw': {
      'en': 'Details',
      'de': '',
      'nl': '',
    },
    'me09r2gg': {
      'en': 'Choose :',
      'de': '',
      'nl': '',
    },
    '2dfulvjk': {
      'en': 'Start On',
      'de': '',
      'nl': '',
    },
    'ujrknjed': {
      'en': 'Duration of months',
      'de': '',
      'nl': '',
    },
    'jk043n70': {
      'en': 'Amount ',
      'de': '',
      'nl': '',
    },
    'l0nawyv2': {
      'en': 'Continue',
      'de': '',
      'nl': '',
    },
    'b3llccsj': {
      'en': 'Home',
      'de': '',
      'nl': '',
    },
  },
  // Create3REHAM
  {
    'fjy8tftu': {
      'en': 'Create Your Own Circle',
      'de': '',
      'nl': '',
    },
    'llo0b2qg': {
      'en': '3',
      'de': '',
      'nl': '',
    },
    '501xj6l5': {
      'en': 'Amount ',
      'de': '',
      'nl': '',
    },
    'c1cq3t79': {
      'en': 'Role',
      'de': '',
      'nl': '',
    },
    'jgk0uth4': {
      'en': 'Details',
      'de': '',
      'nl': '',
    },
    'x3qrxeii': {
      'en': 'Details :',
      'de': '',
      'nl': '',
    },
    'j7wxo2v2': {
      'en': 'Payment details',
      'de': '',
      'nl': '',
    },
    'ahc58bjr': {
      'en': 'Payment ',
      'de': '',
      'nl': '',
    },
    '5kmysfxi': {
      'en': 'Monthly installment',
      'de': '',
      'nl': '',
    },
    '7f6lg1zv': {
      'en': 'Service fees',
      'de': '',
      'nl': '',
    },
    '1aexmytt': {
      'en': '300 EUR',
      'de': '',
      'nl': '',
    },
    'laaghqzz': {
      'en': 'Total Amount',
      'de': '',
      'nl': '',
    },
    'yq5do5kw': {
      'en': '1,500 EUR',
      'de': '',
      'nl': '',
    },
    'srd3x0om': {
      'en': 'Duration of the circle',
      'de': '',
      'nl': '',
    },
    'oz00edgj': {
      'en': 'Circle duration',
      'de': '',
      'nl': '',
    },
    '8y5lgtbs': {
      'en': 'Start Date ',
      'de': '',
      'nl': '',
    },
    'jf0n9v7k': {
      'en': 'End Date',
      'de': '',
      'nl': '',
    },
    '100wo002': {
      'en': 'Date of receipt',
      'de': '',
      'nl': '',
    },
    '4tldek50': {
      'en': 'Confirm payment',
      'de': '',
      'nl': '',
    },
    '405k4vyv': {
      'en': 'Home',
      'de': '',
      'nl': '',
    },
  },
  // Create2REHAM
  {
    '4itgwbfx': {
      'en': 'Create Your Own Circle',
      'de': '',
      'nl': '',
    },
    '1aff1pad': {
      'en': '2',
      'de': '',
      'nl': '',
    },
    '7sosr0r8': {
      'en': '3',
      'de': '',
      'nl': '',
    },
    'aht9f4pn': {
      'en': 'Amount ',
      'de': '',
      'nl': '',
    },
    'kgtpsnfd': {
      'en': 'Role',
      'de': '',
      'nl': '',
    },
    'au84ns1u': {
      'en': 'Details',
      'de': '',
      'nl': '',
    },
    'emuowsdf': {
      'en': 'Choose your role:',
      'de': '',
      'nl': '',
    },
    'fy6800zg': {
      'en': 'Continue',
      'de': '',
      'nl': '',
    },
    'r88hxpru': {
      'en': 'Home',
      'de': '',
      'nl': '',
    },
  },
  // Create4REHAM
  {
    'ourw2ynw': {
      'en': 'Create Your Own Circle',
      'de': '',
      'nl': '',
    },
    'zzadtw9w': {
      'en': 'Successful!',
      'de': '',
      'nl': '',
    },
    'vwa6jo0g': {
      'en':
          'Your circle has been created. Go to the Payspin\n page to invite people to join this circle',
      'de': '',
      'nl': '',
    },
    'eq7xxsrf': {
      'en': 'Continue',
      'de': '',
      'nl': '',
    },
    'rbvl8mba': {
      'en': 'Home',
      'de': '',
      'nl': '',
    },
  },
  // Join1REHAM
  {
    '3v1t49se': {
      'en': 'Join an Existing Circle',
      'de': '',
      'nl': '',
    },
    'as3tg98v': {
      'en': 'Enter your Payspin code',
      'de': '',
      'nl': '',
    },
    'tkaxsgpi': {
      'en': 'Please enter the payspin code to add you\n to the exact circle',
      'de': '',
      'nl': '',
    },
    'nduywrnt': {
      'en': '',
      'de': '',
      'nl': '',
    },
    'hoi5fa1t': {
      'en': 'Enter your circle key',
      'de': '',
      'nl': '',
    },
    'kooh6pwn': {
      'en': 'Verify',
      'de': '',
      'nl': '',
    },
    'oi5usrk6': {
      'en': 'Home',
      'de': '',
      'nl': '',
    },
  },
  // Join2REHAM
  {
    'mk5hd6jv': {
      'en': 'Join an Existing Circle',
      'de': '',
      'nl': '',
    },
    'qy9xzz4w': {
      'en': 'Payspin added successfully!',
      'de': '',
      'nl': '',
    },
    'bo0p8x4c': {
      'en':
          'Your circle has been added. Go to the Payspin\n page to know your details',
      'de': '',
      'nl': '',
    },
    '9hx8si6a': {
      'en': 'Payspin',
      'de': '',
      'nl': '',
    },
    'x3pd7412': {
      'en': 'Home',
      'de': '',
      'nl': '',
    },
  },
  // List23ActivityResponsive
  {
    'myo8r1ft': {
      'en': 'check.io',
      'de': '',
      'nl': '',
    },
    'y6atw4wr': {
      'en': 'Platform Navigation',
      'de': '',
      'nl': '',
    },
    '2u5n9pup': {
      'en': 'Dashboard',
      'de': '',
      'nl': '',
    },
    'ym80j0qx': {
      'en': 'Chats',
      'de': '',
      'nl': '',
    },
    'l3jlz4hz': {
      'en': 'All Tasks',
      'de': '',
      'nl': '',
    },
    'o2hkky3q': {
      'en': '12',
      'de': '',
      'nl': '',
    },
    '66hcuu9j': {
      'en': 'Projects',
      'de': '',
      'nl': '',
    },
    'hcf70mkg': {
      'en': 'Settings',
      'de': '',
      'nl': '',
    },
    '1tzzqxcb': {
      'en': 'Billing',
      'de': '',
      'nl': '',
    },
    'iogjwd67': {
      'en': 'Explore',
      'de': '',
      'nl': '',
    },
    'sy53o4cb': {
      'en': 'Andrew D.',
      'de': '',
      'nl': '',
    },
    '6ckzxyj2': {
      'en': 'admin@gmail.com',
      'de': '',
      'nl': '',
    },
    'l36rtckq': {
      'en': 'Team Activity',
      'de': '',
      'nl': '',
    },
    '0t9d3g2o': {
      'en': 'Below is a summary of tasks.',
      'de': '',
      'nl': '',
    },
    's5d4pc0q': {
      'en': 'All',
      'de': '',
      'nl': '',
    },
    'rejx1sxv': {
      'en': 'Pending',
      'de': '',
      'nl': '',
    },
    'sencj37y': {
      'en': 'In Progress',
      'de': '',
      'nl': '',
    },
    'hl82wv1p': {
      'en': 'Completed',
      'de': '',
      'nl': '',
    },
    'qj2v1ybv': {
      'en': 'All',
      'de': '',
      'nl': '',
    },
    'u2cq2yvu': {
      'en': 'All',
      'de': '',
      'nl': '',
    },
    'r23bcukv': {
      'en': 'Search all tasks...',
      'de': '',
      'nl': '',
    },
    'yts1x0dq': {
      'en': 'Rudy Fernandez',
      'de': '',
      'nl': '',
    },
    'wzv1xo3x': {
      'en': '4m ago',
      'de': '',
      'nl': '',
    },
    'jrakvr2f': {
      'en': 'Completed ',
      'de': '',
      'nl': '',
    },
    '837l250v': {
      'en': 'Marketing Plan',
      'de': '',
      'nl': '',
    },
    'igfrcek4': {
      'en':
          'Conduct comprehensive testing of a new product before its official release. Set up a structured testing plan...',
      'de': '',
      'nl': '',
    },
    's5bwudq4': {
      'en': 'Rudy Fernandez',
      'de': '',
      'nl': '',
    },
    '9fir2fzo': {
      'en': '4m ago',
      'de': '',
      'nl': '',
    },
    '7vvg245b': {
      'en': 'Started ',
      'de': '',
      'nl': '',
    },
    'r51vrdbj': {
      'en': 'Marketing Plan',
      'de': '',
      'nl': '',
    },
    'q8dxarve': {
      'en':
          'Conduct comprehensive testing of a new product before its official release. Set up a structured testing plan...',
      'de': '',
      'nl': '',
    },
    'n79ljmcl': {
      'en': 'Abigail Rojas',
      'de': '',
      'nl': '',
    },
    'i4z9lsxr': {
      'en': '4m ago',
      'de': '',
      'nl': '',
    },
    'rl8g9ho3': {
      'en': 'Assigned  ',
      'de': '',
      'nl': '',
    },
    'sirmqbla': {
      'en': 'Rudy Fernandez ',
      'de': '',
      'nl': '',
    },
    'iycpqmc0': {
      'en': 'to ',
      'de': '',
      'nl': '',
    },
    'gqhcdpyq': {
      'en': 'Marketing Plan',
      'de': '',
      'nl': '',
    },
    'wphfvgtj': {
      'en':
          'Conduct comprehensive testing of a new product before its official release. Set up a structured testing plan...',
      'de': '',
      'nl': '',
    },
    'jo29594j': {
      'en': 'Abigail Rojas',
      'de': '',
      'nl': '',
    },
    'g7x9iua7': {
      'en': '4m ago',
      'de': '',
      'nl': '',
    },
    'fdkrv9cb': {
      'en': 'Created a project: ',
      'de': '',
      'nl': '',
    },
    'u82jy452': {
      'en': 'Marketing Plan',
      'de': '',
      'nl': '',
    },
    'xhjj6t00': {
      'en':
          'Conduct comprehensive testing of a new product before its official release. Set up a structured testing plan...',
      'de': '',
      'nl': '',
    },
    'c8o31tiq': {
      'en': 'Liz Ambridge',
      'de': '',
      'nl': '',
    },
    'vkpt02u3': {
      'en': '4m ago',
      'de': '',
      'nl': '',
    },
    'tcqgw3ao': {
      'en': 'Sent a plan update for ',
      'de': '',
      'nl': '',
    },
    '90ensxfm': {
      'en': 'Marketing Plan',
      'de': '',
      'nl': '',
    },
    'fx8xone2': {
      'en': 'Project Started',
      'de': '',
      'nl': '',
    },
    'qk6a5rk3': {
      'en': '12d ago',
      'de': '',
      'nl': '',
    },
    '3zavsmls': {
      'en': 'Team Activity',
      'de': '',
      'nl': '',
    },
    'h9nj8r1o': {
      'en': 'Home',
      'de': '',
      'nl': '',
    },
  },
  // PayspinREHAM
  {
    'maa46etu': {
      'en': 'My Payspin',
      'de': '',
      'nl': '',
    },
    'xy0kstwf': {
      'en': 'Active',
      'de': '',
      'nl': '',
    },
    'pwxlotkk': {
      'en': 'Fourth',
      'de': '',
      'nl': '',
    },
    'fpd1gkxm': {
      'en': 'August',
      'de': '',
      'nl': '',
    },
    'e0svpl8b': {
      'en': 'Total Payment',
      'de': '',
      'nl': '',
    },
    'y1xhe39t': {
      'en': 'Date of receipt',
      'de': '',
      'nl': '',
    },
    'ogdne9b9': {
      'en': 'Monthly',
      'de': '',
      'nl': '',
    },
    'ugmgn5on': {
      'en': ' Payment History',
      'de': '',
      'nl': '',
    },
    'uw7qs4pu': {
      'en': '1st Payment',
      'de': '',
      'nl': '',
    },
    'i5jqven5': {
      'en': 'Jul 2024',
      'de': '',
      'nl': '',
    },
    'orwm2ett': {
      'en': 'Status\n1 of 6',
      'de': '',
      'nl': '',
    },
    '6d0dyzdc': {
      'en': 'Paid',
      'de': '',
      'nl': '',
    },
    '64fm45e2': {
      'en': '2st Payment',
      'de': '',
      'nl': '',
    },
    'aw1l90mn': {
      'en': 'Aug 2024',
      'de': '',
      'nl': '',
    },
    'cmrg0z1c': {
      'en': 'Status\n2 of 6',
      'de': '',
      'nl': '',
    },
    'bma0rrtb': {
      'en': 'Pay',
      'de': '',
      'nl': '',
    },
    'jv0wd9nm': {
      'en': '3st Payment',
      'de': '',
      'nl': '',
    },
    'mb6kqdnx': {
      'en': 'Sept 2024',
      'de': '',
      'nl': '',
    },
    '8cjfavnq': {
      'en': 'Status\n3 of 6',
      'de': '',
      'nl': '',
    },
    'f35msk3m': {
      'en': 'Pay',
      'de': '',
      'nl': '',
    },
    '4abb0ayx': {
      'en': '4st Payment',
      'de': '',
      'nl': '',
    },
    'v72xd592': {
      'en': 'Oct 2024',
      'de': '',
      'nl': '',
    },
    'vtzotc3w': {
      'en': 'Status\n4 of 6',
      'de': '',
      'nl': '',
    },
    'pdi25xa2': {
      'en': 'Pay',
      'de': '',
      'nl': '',
    },
    'f7uncsli': {
      'en':
          'There is no Circle that you are currently \naffiliated with. To create a Circle or join an existing Circle, \nclick \"join.\"',
      'de': '',
      'nl': '',
    },
    'u5k7rcgm': {
      'en': 'Finished',
      'de': '',
      'nl': '',
    },
    'ofv5gryq': {
      'en':
          'Your completed Payspins (money circles) should appear here, but it seems you haven\'t finished any yet',
      'de': '',
      'nl': '',
    },
    '1mh9a1ee': {
      'en': 'Ahmed',
      'de': '',
      'nl': '',
    },
    'fy2ga6g2': {
      'en': 'Fourth',
      'de': '',
      'nl': '',
    },
    'm8tonjho': {
      'en': 'Finished',
      'de': '',
      'nl': '',
    },
    'y273g2jz': {
      'en': '1,800 EUR',
      'de': '',
      'nl': '',
    },
    'twtj1lcx': {
      'en': 'July 2024',
      'de': '',
      'nl': '',
    },
    'egzpmncj': {
      'en': '6 Months',
      'de': '',
      'nl': '',
    },
    'kdf7b68u': {
      'en': 'Dec 2024',
      'de': '',
      'nl': '',
    },
    'xw63684y': {
      'en': 'Join',
      'de': '',
      'nl': '',
    },
    'ly86u25c': {
      'en': 'Payspin',
      'de': '',
      'nl': '',
    },
  },
  // AccountREHAM
  {
    'lg5cjyrt': {
      'en': 'Account',
      'de': '',
      'nl': '',
    },
    'twop73f0': {
      'en': 'Account Info',
      'de': '',
      'nl': '',
    },
    '97baxexc': {
      'en': 'Language',
      'de': '',
      'nl': '',
    },
    '1g5enu6t': {
      'en': 'English',
      'de': '',
      'nl': '',
    },
    'imthv74a': {
      'en': 'Get Help',
      'de': '',
      'nl': '',
    },
    'mt8oi3oq': {
      'en': 'Log Out',
      'de': '',
      'nl': '',
    },
    '2vfzph6h': {
      'en': '',
      'de': '',
      'nl': '',
    },
  },
  // SignUp
  {
    '93k39jl7': {
      'en': 'Sign Up',
      'de': '',
      'nl': '',
    },
    'mkr4xhn5': {
      'en': 'Create an account to explore about our app',
      'de': '',
      'nl': '',
    },
    'xyovaqtb': {
      'en': 'First Name',
      'de': '',
      'nl': '',
    },
    'p96cmdfm': {
      'en': 'Lois',
      'de': '',
      'nl': '',
    },
    'krn9yf6q': {
      'en': 'Last Name',
      'de': '',
      'nl': '',
    },
    'vr5fb4jn': {
      'en': 'Becket',
      'de': '',
      'nl': '',
    },
    '63ucseko': {
      'en': 'Email',
      'de': '',
      'nl': '',
    },
    '52gtvphg': {
      'en': 'Loisbecket@gmail.com',
      'de': '',
      'nl': '',
    },
    'jdf4wenr': {
      'en': 'Please enter Email',
      'de': '',
      'nl': '',
    },
    'zgutb5x9': {
      'en': 'Please choose an option from the dropdown',
      'de': '',
      'nl': '',
    },
    'cmucoicw': {
      'en': 'Birth of date',
      'de': '',
      'nl': '',
    },
    'htlr9gcj': {
      'en': '18/03/2024',
      'de': '',
      'nl': '',
    },
    'w687mw7z': {
      'en': ' Password',
      'de': '',
      'nl': '',
    },
    'svgizwzp': {
      'en': '*******',
      'de': '',
      'nl': '',
    },
    '5lsqzg6w': {
      'en': 'Please enter password',
      'de': '',
      'nl': '',
    },
    '559jpq92': {
      'en': 'Please choose an option from the dropdown',
      'de': '',
      'nl': '',
    },
    '14oytonr': {
      'en': 'Sign Up',
      'de': '',
      'nl': '',
    },
    'rlk2hltg': {
      'en': 'Or Sign Up with',
      'de': '',
      'nl': '',
    },
    'zioytx8o': {
      'en': 'Google',
      'de': '',
      'nl': '',
    },
    'aayqv0am': {
      'en': ' Apple',
      'de': '',
      'nl': '',
    },
    '1dkuk1u3': {
      'en': 'Already have an account.',
      'de': '',
      'nl': '',
    },
    'x9punrqa': {
      'en': ' Log In',
      'de': '',
      'nl': '',
    },
    '3as2fmvz': {
      'en': 'Home',
      'de': '',
      'nl': '',
    },
  },
  // login
  {
    'blg29rux': {
      'en': 'Log In',
      'de': '',
      'nl': '',
    },
    'e8hwbowq': {
      'en': 'Enter your email and password to log in.',
      'de': '',
      'nl': '',
    },
    'sh3whqm6': {
      'en': 'Email',
      'de': '',
      'nl': '',
    },
    'qp4imflt': {
      'en': 'Loisbecket@gmail.com',
      'de': '',
      'nl': '',
    },
    'ms83zlgx': {
      'en': ' Password',
      'de': '',
      'nl': '',
    },
    '8ajyhsii': {
      'en': '*******',
      'de': '',
      'nl': '',
    },
    'id6vs3tu': {
      'en': 'Remember me',
      'de': '',
      'nl': '',
    },
    'ci4fxbpz': {
      'en': 'Forgot Password ?',
      'de': '',
      'nl': '',
    },
    '3r8qogzd': {
      'en': 'Log In',
      'de': '',
      'nl': '',
    },
    'dtiycdys': {
      'en': 'Or Log In with',
      'de': '',
      'nl': '',
    },
    'hhbs9v1m': {
      'en': 'Google',
      'de': '',
      'nl': '',
    },
    'gtiauhpa': {
      'en': ' Apple',
      'de': '',
      'nl': '',
    },
    'y1cyq2lr': {
      'en': 'Don’t have an account?',
      'de': '',
      'nl': '',
    },
    'sbb93iod': {
      'en': '  Sign Up',
      'de': '',
      'nl': '',
    },
    'tm1azdxc': {
      'en': 'Home',
      'de': '',
      'nl': '',
    },
  },
  // NewsREHAM
  {
    'd7bgpf03': {
      'en': 'What\'s New',
      'de': '',
      'nl': '',
    },
    '0kq4jhyu': {
      'en': 'Payspin Hottest updates ',
      'de': '',
      'nl': '',
    },
    'rf6tua9r': {
      'en': '\$143/night',
      'de': '',
      'nl': '',
    },
    '012ummy7': {
      'en': 'Home',
      'de': '',
      'nl': '',
    },
  },
  // paymentPage
  {
    'a207ulnw': {
      'en': 'Stripe Payment',
      'de': '',
      'nl': '',
    },
    '4g7xr3cr': {
      'en': 'pay your circle',
      'de': '',
      'nl': '',
    },
    'pnkxnb02': {
      'en': 'Home',
      'de': '',
      'nl': '',
    },
  },
  // AppValuesComponent
  {
    'yb7uhi21': {
      'en': 'New car',
      'de': '',
      'nl': '',
    },
    '3n8w8emm': {
      'en': 'Marriage',
      'de': '',
      'nl': '',
    },
    'f6sqsl7y': {
      'en': 'New phone',
      'de': '',
      'nl': '',
    },
    'delbmdbv': {
      'en': 'What is your goal?',
      'de': '',
      'nl': '',
    },
    'hfjfzagi': {
      'en': 'You will find a money circle for it',
      'de': '',
      'nl': '',
    },
    '9ouo7rr6': {
      'en': 'Study',
      'de': '',
      'nl': '',
    },
    '8le58r3k': {
      'en': 'Saving',
      'de': '',
      'nl': '',
    },
    'j3cvv7up': {
      'en': 'Committee',
      'de': '',
      'nl': '',
    },
    '9yf8wgwb': {
      'en': 'Gün',
      'de': '',
      'nl': '',
    },
    'f94m6swn': {
      'en': 'Hagbad',
      'de': '',
      'nl': '',
    },
    'lfn3rv9v': {
      'en': 'Tontine',
      'de': '',
      'nl': '',
    },
    'tapyf1us': {
      'en': 'Gam\'eya',
      'de': '',
      'nl': '',
    },
    'b2ydxhs9': {
      'en': 'Lenshare ',
      'de': '',
      'nl': '',
    },
    '2z85y7j6': {
      'en': 'Susu',
      'de': '',
      'nl': '',
    },
    'n32xxeq7': {
      'en': 'Tandas',
      'de': '',
      'nl': '',
    },
    'tp053ju8': {
      'en': 'Gye ',
      'de': '',
      'nl': '',
    },
    'bgotam6g': {
      'en': 'Kameti',
      'de': '',
      'nl': '',
    },
    '5i3bj5qq': {
      'en': 'Chit fund',
      'de': '',
      'nl': '',
    },
    'own9ke1d': {
      'en': 'How do you name your money circle?',
      'de': '',
      'nl': '',
    },
    'z5874415': {
      'en': 'Because we know it is tradition, we have made it digital!',
      'de': '',
      'nl': '',
    },
    '2sxw0r3z': {
      'en': 'Looking for money circle?',
      'de': '',
      'nl': '',
    },
    'm2y8z2az': {
      'en': 'We connect you with an extended community!',
      'de': '',
      'nl': '',
    },
  },
  // oldonboardingcomponent
  {
    'gbtf6ky6': {
      'en': 'Create Budgets',
      'de': '',
      'nl': '',
    },
    '528y09wy': {
      'en':
          'Create budgets that you can tie transactions too in order for easy tracking.',
      'de': '',
      'nl': '',
    },
    'dmyjawzb': {
      'en': 'Create Budgets',
      'de': '',
      'nl': '',
    },
    'z9nurxc1': {
      'en':
          'Create budgets that you can tie transactions too in order for easy tracking.',
      'de': '',
      'nl': '',
    },
    'r3djy23o': {
      'en': 'Create Budgets',
      'de': '',
      'nl': '',
    },
    'siclpb1k': {
      'en':
          'Create budgets that you can tie transactions too in order for easy tracking.',
      'de': '',
      'nl': '',
    },
    'dl5oa255': {
      'en': 'Create Your Budget',
      'de': '',
      'nl': '',
    },
  },
  // AppNaviComponent
  {
    'l0uvcypb': {
      'en':
          'Payspin platform is next Generation Circle management application in Europe for every community\'s convenience.\n\nIt provide users Efficient-targeted savings solution, connect to extended social networks, and Build Financial resilience. ',
      'de': '',
      'nl': '',
    },
  },
  // Step1-CreateAccountScreen
  {
    'c7gai779': {
      'en': 'Create Account',
      'de': '',
      'nl': '',
    },
    'rzduhdcd': {
      'en': 'Create Account',
      'de': '',
      'nl': '',
    },
    'jg10h7cw': {
      'en': 'Let\'s get started by filling out the form below.',
      'de': '',
      'nl': '',
    },
    'r6xsia6q': {
      'en': 'Email',
      'de': '',
      'nl': '',
    },
    'igvwoo5g': {
      'en': 'Password',
      'de': '',
      'nl': '',
    },
    '6oswsy81': {
      'en': 'Re-enter Password',
      'de': '',
      'nl': '',
    },
    'phj7v94d': {
      'en': 'Get Started',
      'de': '',
      'nl': '',
    },
    '9tnqguue': {
      'en': 'Or sign up with',
      'de': '',
      'nl': '',
    },
    'pulu2j88': {
      'en': 'Continue with Google',
      'de': '',
      'nl': '',
    },
    '24cuv9nk': {
      'en': 'Continue with Apple',
      'de': '',
      'nl': '',
    },
    '8y5ee5as': {
      'en': 'Cancel Signup',
      'de': '',
      'nl': '',
    },
    'bw9p5eaj': {
      'en': 'Log In',
      'de': '',
      'nl': '',
    },
    'uticun1l': {
      'en': 'Welcome Back',
      'de': '',
      'nl': '',
    },
    'ocs7rrid': {
      'en': 'Fill out the information below in order to access your account.',
      'de': '',
      'nl': '',
    },
    'w94i20li': {
      'en': 'Email',
      'de': '',
      'nl': '',
    },
    'y91nosln': {
      'en': 'Password',
      'de': '',
      'nl': '',
    },
    '3qfwqi3z': {
      'en': 'Sign In',
      'de': '',
      'nl': '',
    },
    'fag5eeip': {
      'en': 'Or sign in with',
      'de': '',
      'nl': '',
    },
    'zsincycj': {
      'en': 'Continue with Google',
      'de': '',
      'nl': '',
    },
    'ejpbhrdi': {
      'en': 'Continue with Apple',
      'de': '',
      'nl': '',
    },
    '5kxwa2hm': {
      'en': 'Forgot Password?',
      'de': '',
      'nl': '',
    },
  },
  // AppValuesComponent2
  {
    'zpkagofi': {
      'en': 'What is your goal?',
      'de': '',
      'nl': '',
    },
    '8jpzbhyt': {
      'en': 'You will find a money circle for it',
      'de': '',
      'nl': '',
    },
    'dc35nipe': {
      'en': 'Study',
      'de': '',
      'nl': '',
    },
    'vugmg40a': {
      'en': 'Saving',
      'de': '',
      'nl': '',
    },
    '90t4c99l': {
      'en': 'New car',
      'de': '',
      'nl': '',
    },
    'rml8kbso': {
      'en': 'Marriage',
      'de': '',
      'nl': '',
    },
    't4isz5h5': {
      'en': 'New phone',
      'de': '',
      'nl': '',
    },
    '634ohs2k': {
      'en': 'Committee',
      'de': '',
      'nl': '',
    },
    'ssl9eh0c': {
      'en': 'Gün',
      'de': '',
      'nl': '',
    },
    '5gjgp5az': {
      'en': 'Hagbad',
      'de': '',
      'nl': '',
    },
    'skdv2nhy': {
      'en': 'Tontine',
      'de': '',
      'nl': '',
    },
    'm0wgqcyu': {
      'en': 'Gam\'eya',
      'de': '',
      'nl': '',
    },
    'o66x4vva': {
      'en': 'Lenshare ',
      'de': '',
      'nl': '',
    },
    '8a56ml9v': {
      'en': 'Susu',
      'de': '',
      'nl': '',
    },
    '0smkv1m1': {
      'en': 'Tandas',
      'de': '',
      'nl': '',
    },
    'agtwst0n': {
      'en': 'Gye ',
      'de': '',
      'nl': '',
    },
    'l1580kxr': {
      'en': 'Kameti',
      'de': '',
      'nl': '',
    },
    '6phprpjo': {
      'en': 'Chit fund',
      'de': '',
      'nl': '',
    },
    'naihzq31': {
      'en': 'How do you name your money circle?',
      'de': '',
      'nl': '',
    },
    '9tixape8': {
      'en': 'Because we know it is tradition, we have made it digital!',
      'de': '',
      'nl': '',
    },
    'u3y9aq6h': {
      'en': 'Looking for money circle?',
      'de': '',
      'nl': '',
    },
    '8wwwxgi1': {
      'en': 'We connect you with an extended community!',
      'de': '',
      'nl': '',
    },
  },
  // ForgotPassword
  {
    'ef62bnql': {
      'en': 'Back',
      'de': '',
      'nl': '',
    },
    '7q3bje7v': {
      'en': 'Forgot Password',
      'de': '',
      'nl': '',
    },
    'ps1o00pt': {
      'en':
          'We will send you an email with a link to reset your password, please enter the email associated with your account below.',
      'de': '',
      'nl': '',
    },
    'n4m05s3i': {
      'en': 'Your email address...',
      'de': '',
      'nl': '',
    },
    'c65rpjxl': {
      'en': 'Enter your email...',
      'de': '',
      'nl': '',
    },
    'o7cl0gyl': {
      'en': 'Send Link',
      'de': '',
      'nl': '',
    },
  },
  // Step3-PhoneLoginComponent
  {
    'j0w1r8a4': {
      'en': 'Step 3 - Phone number',
      'de': '',
      'nl': '',
    },
    'z6qpv9cz': {
      'en': 'Enter your phone number',
      'de': '',
      'nl': '',
    },
    '9j0rol17': {
      'en':
          'Phone number including counry code\nexample +316666***** | +494444******',
      'de': '',
      'nl': '',
    },
    'xrk3y7dh': {
      'en': 'Enter your country code name',
      'de': '',
      'nl': '',
    },
    '7uc4xi0b': {
      'en': 'Option 1',
      'de': '',
      'nl': '',
    },
    'a6npeuxz': {
      'en': '+20',
      'de': '',
      'nl': '',
    },
    'jvkk262a': {
      'en': 'Your phone number',
      'de': '',
      'nl': '',
    },
    'lz1q0rxh': {
      'en': 'Continue',
      'de': '',
      'nl': '',
    },
    '7kojbsze': {
      'en': 'Cancel Signup',
      'de': '',
      'nl': '',
    },
    '2j2v1rln': {
      'en': '3/4',
      'de': '',
      'nl': '',
    },
    'z4es0c5x': {
      'en': 'Create account progress Step 3',
      'de': '',
      'nl': '',
    },
    'cjpofaek': {
      'en': 'Field is required',
      'de': '',
      'nl': '',
    },
    'xyzoy1qc': {
      'en': 'Please choose an option from the dropdown',
      'de': '',
      'nl': '',
    },
  },
  // Step4-OTPPhoneLoginComponent
  {
    'pr0tk13b': {
      'en': 'Step 4 - Verification',
      'de': '',
      'nl': '',
    },
    'k9dtawll': {
      'en': 'Enter the verification code',
      'de': '',
      'nl': '',
    },
    '1vhmq6nz': {
      'en':
          'We\'ve sent you a verification code to your phone number, assuming you entered your phone number correctly in the previous step. Enter the verification code to continue',
      'de': '',
      'nl': '',
    },
    'ag1nw8r3': {
      'en': '00:15',
      'de': '',
      'nl': '',
    },
    'v83yzvn3': {
      'en': 'Didn\'t received the OTP?',
      'de': '',
      'nl': '',
    },
    'gx4pw9hh': {
      'en': 'Continue',
      'de': '',
      'nl': '',
    },
    '66mp4rbb': {
      'en': 'Didn\'t received the OTP?',
      'de': '',
      'nl': '',
    },
    'ookti87y': {
      'en': 'Resend code',
      'de': '',
      'nl': '',
    },
    '6f7cn94j': {
      'en': 'Cancel Signup',
      'de': '',
      'nl': '',
    },
    'pz7gr3u6': {
      'en': '4/4',
      'de': '',
      'nl': '',
    },
    '2cfdd6ti': {
      'en': 'Create account progress - Step4',
      'de': '',
      'nl': '',
    },
    'j3ba4b9k': {
      'en': 'Field is required',
      'de': '',
      'nl': '',
    },
  },
  // CircleDashboardCompnent
  {
    'rqbgkwca': {
      'en': 'Circle Overview',
      'de': '',
      'nl': '',
    },
    'p1k3pd65': {
      'en': 'Your Balance',
      'de': '',
      'nl': '',
    },
    '44zv4o61': {
      'en': '\$6,424.20',
      'de': '',
      'nl': '',
    },
    'bmfibvgg': {
      'en': 'Transfer Balance',
      'de': '',
      'nl': '',
    },
    'ugxzcxdf': {
      'en': 'Monthly Goal',
      'de': '',
      'nl': '',
    },
    'd3gc9jmw': {
      'en': '62.2% /',
      'de': '',
      'nl': '',
    },
    'nodtq1z1': {
      'en': ' \$12,000',
      'de': '',
      'nl': '',
    },
    'luzcwa97': {
      'en': 'Forecasted value is: ',
      'de': '',
      'nl': '',
    },
    '7zvwvjiz': {
      'en': '\$3,502',
      'de': '',
      'nl': '',
    },
    'qepl1xt2': {
      'en': 'Edit',
      'de': '',
      'nl': '',
    },
    '0mwsyhvw': {
      'en': 'Circle contributers',
      'de': '',
      'nl': '',
    },
    'oo7o1400': {
      'en': 'Rudy Fernandez',
      'de': '',
      'nl': '',
    },
    '41k59hhg': {
      'en': 'Manager',
      'de': '',
      'nl': '',
    },
    'ci63ry9s': {
      'en': 'Abigail Herrara',
      'de': '',
      'nl': '',
    },
    '5n3hrni2': {
      'en': 'Designer',
      'de': '',
      'nl': '',
    },
    'tqc2n57s': {
      'en': 'Liz Ambridge',
      'de': '',
      'nl': '',
    },
    'rc9iqdrl': {
      'en': 'Manager',
      'de': '',
      'nl': '',
    },
    'gkokd9e7': {
      'en': 'Liz Rogers',
      'de': '',
      'nl': '',
    },
    'rf7bdhok': {
      'en': 'Front End Dev',
      'de': '',
      'nl': '',
    },
  },
  // CircleSummaryComponent
  {
    '58t9zb3y': {
      'en': 'UI Design Team',
      'de': '',
      'nl': '',
    },
    'd39biho2': {
      'en': '4 Circles',
      'de': '',
      'nl': '',
    },
  },
  // ForgotPasswordComponent
  {
    'oxnlc2is': {
      'en': 'Forgot Password',
      'de': '',
      'nl': '',
    },
    'r1buli53': {
      'en': 'Enter your email address',
      'de': '',
      'nl': '',
    },
    'eekw72he': {
      'en':
          'We will send you an email with a link to reset your password, please enter the email associated with your account below.',
      'de': '',
      'nl': '',
    },
    'cgwq6y4b': {
      'en': 'Your email address...',
      'de': '',
      'nl': '',
    },
    'ifpxzd08': {
      'en': 'Continue',
      'de': '',
      'nl': '',
    },
  },
  // CirclePaymentSummary
  {
    '1olgfeh6': {
      'en': 'Card Header',
      'de': '',
      'nl': '',
    },
    'g4b29cnb': {
      'en': 'Create tables and ui elements that work below.',
      'de': '',
      'nl': '',
    },
    'dqzir14q': {
      'en': 'Add New',
      'de': '',
      'nl': '',
    },
    '0ms3i5o8': {
      'en': 'Work Type',
      'de': '',
      'nl': '',
    },
    'wlwgo78i': {
      'en': 'Assigned User',
      'de': '',
      'nl': '',
    },
    'm15cogxb': {
      'en': 'Contract Amount',
      'de': '',
      'nl': '',
    },
    '67l870gg': {
      'en': 'Status',
      'de': '',
      'nl': '',
    },
    '2fz6j2bs': {
      'en': 'Actions',
      'de': '',
      'nl': '',
    },
    'ren9vg4k': {
      'en': 'Design Work',
      'de': '',
      'nl': '',
    },
    '0sy7wk3t': {
      'en': 'Randy Peterson',
      'de': '',
      'nl': '',
    },
    '78pu1z9q': {
      'en': 'Business Name',
      'de': '',
      'nl': '',
    },
    'u625pimu': {
      'en': '\$2,100',
      'de': '',
      'nl': '',
    },
    'a8sl29f7': {
      'en': 'Paid',
      'de': '',
      'nl': '',
    },
    'rj5n027p': {
      'en': 'Design Work',
      'de': '',
      'nl': '',
    },
    'ita348zd': {
      'en': 'Randy Peterson',
      'de': '',
      'nl': '',
    },
    'wmb9bb3h': {
      'en': 'Business Name',
      'de': '',
      'nl': '',
    },
    'rqlulp28': {
      'en': '\$2,100',
      'de': '',
      'nl': '',
    },
    '673lgpua': {
      'en': 'Paid',
      'de': '',
      'nl': '',
    },
    'v0mvi3se': {
      'en': 'Design Work',
      'de': '',
      'nl': '',
    },
    'oqwdvpqv': {
      'en': 'Randy Peterson',
      'de': '',
      'nl': '',
    },
    'b7ck1io4': {
      'en': 'Business Name',
      'de': '',
      'nl': '',
    },
    'rbmffq2b': {
      'en': '\$2,100',
      'de': '',
      'nl': '',
    },
    '43j0zyr3': {
      'en': 'Paid',
      'de': '',
      'nl': '',
    },
    '8eag7plo': {
      'en': 'Design Work',
      'de': '',
      'nl': '',
    },
    'ruxfbz38': {
      'en': 'Randy Peterson',
      'de': '',
      'nl': '',
    },
    'djkciqwv': {
      'en': 'Business Name',
      'de': '',
      'nl': '',
    },
    'd0n10mox': {
      'en': '\$2,100',
      'de': '',
      'nl': '',
    },
    'liqr4d8e': {
      'en': 'Paid',
      'de': '',
      'nl': '',
    },
    '6tynz2nf': {
      'en': 'Design Work',
      'de': '',
      'nl': '',
    },
    '5q05p61p': {
      'en': 'Randy Peterson',
      'de': '',
      'nl': '',
    },
    'va7gxw9s': {
      'en': 'Business Name',
      'de': '',
      'nl': '',
    },
    'sbv0cxny': {
      'en': '\$2,100',
      'de': '',
      'nl': '',
    },
    'rk00bfge': {
      'en': 'Pending',
      'de': '',
      'nl': '',
    },
    'yi9aqz85': {
      'en': 'Design Work',
      'de': '',
      'nl': '',
    },
    'rjjjjukn': {
      'en': 'Randy Peterson',
      'de': '',
      'nl': '',
    },
    'jytfljmy': {
      'en': 'Business Name',
      'de': '',
      'nl': '',
    },
    'xrfl9k4l': {
      'en': '\$2,100',
      'de': '',
      'nl': '',
    },
    'gz1fv3du': {
      'en': 'Pending',
      'de': '',
      'nl': '',
    },
    'rtbafp2u': {
      'en': 'Design Work',
      'de': '',
      'nl': '',
    },
    'hpzntkcz': {
      'en': 'Randy Peterson',
      'de': '',
      'nl': '',
    },
    '9dhxhb7u': {
      'en': 'Business Name',
      'de': '',
      'nl': '',
    },
    'ha2axa2q': {
      'en': '\$2,100',
      'de': '',
      'nl': '',
    },
    'on5w26vj': {
      'en': 'Pending',
      'de': '',
      'nl': '',
    },
  },
  // CircleDashboard
  {
    '1l224vbn': {
      'en': '',
      'de': '',
      'nl': '',
    },
    'hv6tcs94': {
      'en': 'Dashboard',
      'de': '',
      'nl': '',
    },
    'cjy6rfco': {
      'en': 'Payspin#',
      'de': '',
      'nl': '',
    },
    '1b05fxxk': {
      'en': '1',
      'de': '',
      'nl': '',
    },
    'pgyvsynb': {
      'en': ', Payout ',
      'de': '',
      'nl': '',
    },
    'uwwlq094': {
      'en': '15Jun',
      'de': '',
      'nl': '',
    },
    'ag8wpm25': {
      'en': ', PayIn ',
      'de': '',
      'nl': '',
    },
    'pdiq681o': {
      'en': '15Oct',
      'de': '',
      'nl': '',
    },
    '5brbcl6r': {
      'en': ', Status ',
      'de': '',
      'nl': '',
    },
    'huptifx5': {
      'en': ' 2/6',
      'de': '',
      'nl': '',
    },
    'jaozyh90': {
      'en': 'Payspin#',
      'de': '',
      'nl': '',
    },
    'xq54gkxi': {
      'en': '2',
      'de': '',
      'nl': '',
    },
    '32k53qwb': {
      'en': ', Payout ',
      'de': '',
      'nl': '',
    },
    '2vbx3l3v': {
      'en': '30Jun',
      'de': '',
      'nl': '',
    },
    '0h6zwh28': {
      'en': ', PayIn ',
      'de': '',
      'nl': '',
    },
    '9r7tp9qx': {
      'en': '30Dec',
      'de': '',
      'nl': '',
    },
    'srh7f4pi': {
      'en': ', Status ',
      'de': '',
      'nl': '',
    },
    '5nzy0hcw': {
      'en': ' 2/8',
      'de': '',
      'nl': '',
    },
    'zybfynt3': {
      'en': 'Payspin#',
      'de': '',
      'nl': '',
    },
    'swnylwh5': {
      'en': '3',
      'de': '',
      'nl': '',
    },
    'cyz3r886': {
      'en': ', Payout ',
      'de': '',
      'nl': '',
    },
    'm98kk8cg': {
      'en': '01Jun',
      'de': '',
      'nl': '',
    },
    '9rxarv7z': {
      'en': ', PayIn ',
      'de': '',
      'nl': '',
    },
    '6ey8ckry': {
      'en': '01Jun',
      'de': '',
      'nl': '',
    },
    'ncm5b0c7': {
      'en': ', Status ',
      'de': '',
      'nl': '',
    },
    'c8ypnbbl': {
      'en': ' 3/4',
      'de': '',
      'nl': '',
    },
  },
  // CircleDashboard2
  {
    'paqdgcvo': {
      'en': '',
      'de': '',
      'nl': '',
    },
    'ssg55duu': {
      'en': 'Dashboard',
      'de': '',
      'nl': '',
    },
    'm4lh8ul3': {
      'en': 'Payspin#',
      'de': '',
      'nl': '',
    },
    'p78wzpr7': {
      'en': '1',
      'de': '',
      'nl': '',
    },
    'k2t9h0zt': {
      'en': ', Payout ',
      'de': '',
      'nl': '',
    },
    'dy8hn57m': {
      'en': '15Jun',
      'de': '',
      'nl': '',
    },
    'w7ib3uoj': {
      'en': ', PayIn ',
      'de': '',
      'nl': '',
    },
    'lwvqye94': {
      'en': '15Oct',
      'de': '',
      'nl': '',
    },
    'rbm6plcj': {
      'en': ', Status ',
      'de': '',
      'nl': '',
    },
    'j9xkcob6': {
      'en': ' 2/6',
      'de': '',
      'nl': '',
    },
    '0g40dqan': {
      'en': 'Payspin#',
      'de': '',
      'nl': '',
    },
    'v9oucsja': {
      'en': '2',
      'de': '',
      'nl': '',
    },
    '7h6w9rk4': {
      'en': ', Payout ',
      'de': '',
      'nl': '',
    },
    'l6nd97m3': {
      'en': '30Jun',
      'de': '',
      'nl': '',
    },
    'cp3ud7rv': {
      'en': ', PayIn ',
      'de': '',
      'nl': '',
    },
    'z49mnbiv': {
      'en': '30Dec',
      'de': '',
      'nl': '',
    },
    'j2ddgbu1': {
      'en': ', Status ',
      'de': '',
      'nl': '',
    },
    'u78k5dmc': {
      'en': ' 2/8',
      'de': '',
      'nl': '',
    },
    'l4wm7o76': {
      'en': 'Payspin#',
      'de': '',
      'nl': '',
    },
    'sbxyt7h1': {
      'en': '3',
      'de': '',
      'nl': '',
    },
    'f95f8itk': {
      'en': ', Payout ',
      'de': '',
      'nl': '',
    },
    'nvhw8b98': {
      'en': '01Jun',
      'de': '',
      'nl': '',
    },
    '28u52czo': {
      'en': ', PayIn ',
      'de': '',
      'nl': '',
    },
    'kgwb9mb2': {
      'en': '01Jun',
      'de': '',
      'nl': '',
    },
    '4prasfvm': {
      'en': ', Status ',
      'de': '',
      'nl': '',
    },
    'fvl2ccew': {
      'en': ' 3/4',
      'de': '',
      'nl': '',
    },
    '2vuzvaxp': {
      'en': 'New Payspin',
      'de': '',
      'nl': '',
    },
    's530q1h6': {
      'en': 'Join Existing',
      'de': '',
      'nl': '',
    },
    'jd913n3s': {
      'en': 'Create New',
      'de': '',
      'nl': '',
    },
  },
  // Step2-CreateAccountScreenDetails
  {
    'rlw2ksyd': {
      'en': 'Step 2 - Account Details',
      'de': '',
      'nl': '',
    },
    'lz2gbink': {
      'en': 'Create Account',
      'de': '',
      'nl': '',
    },
    'wy6ujmfe': {
      'en': 'Let\'s get started by filling out the form below.',
      'de': '',
      'nl': '',
    },
    'a7wvm4rd': {
      'en': 'Email',
      'de': '',
      'nl': '',
    },
    'c0ajqiim': {
      'en': 'First Name',
      'de': '',
      'nl': '',
    },
    'mx9cmz6o': {
      'en': 'Get Started',
      'de': '',
      'nl': '',
    },
    'jj81fdom': {
      'en': 'Cancel Signup',
      'de': '',
      'nl': '',
    },
    'cpuhfs7b': {
      'en': '2/4',
      'de': '',
      'nl': '',
    },
    'bdfl7s0s': {
      'en': 'Create account progress - Step 2',
      'de': '',
      'nl': '',
    },
    '76n00a04': {
      'en': 'Field is required',
      'de': '',
      'nl': '',
    },
    'rbnft5n7': {
      'en': 'Please choose an option from the dropdown',
      'de': '',
      'nl': '',
    },
    'zqans06s': {
      'en': 'Field is required',
      'de': '',
      'nl': '',
    },
    'wle831yd': {
      'en': 'Please choose an option from the dropdown',
      'de': '',
      'nl': '',
    },
  },
  // Step5-Success
  {
    '2rnmcjzu': {
      'en': 'Onboarding Complete!',
      'de': '',
      'nl': '',
    },
    '8pivb7wi': {
      'en':
          'Congrats, you have completed onboarding, and ready to dive into the application!',
      'de': '',
      'nl': '',
    },
    '3lgfw2vm': {
      'en': 'Go Home',
      'de': '',
      'nl': '',
    },
  },
  // Title
  {
    'ovtzdygp': {
      'en': '',
      'de': '',
      'nl': '',
    },
  },
  // Home-JoiniExistingPayspin
  {
    'nwolg123': {
      'en': 'Join an Existing Payspin',
      'de': '',
      'nl': '',
    },
    'e2fk7h22': {
      'en': 'Enter your Payspin code',
      'de': '',
      'nl': '',
    },
    'ox1vaxlc': {
      'en': 'Please enter the Payspin code to add you to the exact group',
      'de': '',
      'nl': '',
    },
    'iwagcdoi': {
      'en': 'Circle ID',
      'de': '',
      'nl': '',
    },
    'np84q68m': {
      'en': 'Enter Circle ID',
      'de': '',
      'nl': '',
    },
    'awk0nqsl': {
      'en': 'Continue',
      'de': '',
      'nl': '',
    },
    'nk4txxsw': {
      'en': 'Cancel',
      'de': '',
      'nl': '',
    },
    'etxddys5': {
      'en': 'Field is required',
      'de': '',
      'nl': '',
    },
  },
  // Home-CreateNew
  {
    '7ej6bpwc': {
      'en': 'Create  New Payspin',
      'de': '',
      'nl': '',
    },
    'jf4la9kj': {
      'en':
          'Payspin is in beta! We\'re currently testing it with a select group of users. You\'ll be the first to know when it\'s ready for you to create your own Payspin circle.\n\nWant to be among the first to test Create New Payspin? Click below to join our beta user list, and we\'ll notify you as soon as a spot opens up!\n',
      'de': '',
      'nl': '',
    },
    'ecv094up': {
      'en': 'Join beta user list',
      'de': '',
      'nl': '',
    },
    'n54rsl4w': {
      'en': 'Cancel',
      'de': '',
      'nl': '',
    },
    'gjg28vbm': {
      'en': 'Field is required',
      'de': '',
      'nl': '',
    },
  },
  // Home-JoiniExistingPayspinCheck
  {
    'wr6wiuez': {
      'en': 'Join an Existing Payspin',
      'de': '',
      'nl': '',
    },
    'fanlc0nc': {
      'en': 'Enter your Payspin code',
      'de': '',
      'nl': '',
    },
    'ddfzx4rp': {
      'en': 'Please enter the Payspin code to add you to the exact group',
      'de': '',
      'nl': '',
    },
    'mkwvd79y': {
      'en': 'Wrong Payspin code, Please enter a valid Payspin code.',
      'de': '',
      'nl': '',
    },
    'yze6l3e3': {
      'en': 'Continue',
      'de': '',
      'nl': '',
    },
    'sj74s7ga': {
      'en': 'Cancel',
      'de': '',
      'nl': '',
    },
    '2qf7dl6t': {
      'en': 'Field is required',
      'de': '',
      'nl': '',
    },
  },
  // NewPayspin
  {
    'oafq1asd': {
      'en': 'New Payspin',
      'de': '',
      'nl': '',
    },
    'oj61pt6m': {
      'en': 'Join Existing',
      'de': '',
      'nl': '',
    },
    'iw5hx9xg': {
      'en': 'Create New',
      'de': '',
      'nl': '',
    },
  },
  // ListViewCard
  {
    'km1i0t37': {
      'en': 'What\'s new ',
      'de': '',
      'nl': '',
    },
    'xzzns2yx': {
      'en': 'Follow us',
      'de': '',
      'nl': '',
    },
  },
  // PayspinOverview
  {
    'jyu1d155': {
      'en': 'Overview',
      'de': '',
      'nl': '',
    },
    '0h46nm1p': {
      'en': 'Sep-24',
      'de': '',
      'nl': '',
    },
    'ytsklrnt': {
      'en': 'Oct-24',
      'de': '',
      'nl': '',
    },
    '7or1ua86': {
      'en': 'Nov-24',
      'de': '',
      'nl': '',
    },
    '32a1ept3': {
      'en': 'Dec-24',
      'de': '',
      'nl': '',
    },
    'k0jxyzzx': {
      'en': 'Jan-25',
      'de': '',
      'nl': '',
    },
    'rnsjl5dn': {
      'en': 'Feb-25',
      'de': '',
      'nl': '',
    },
    '1jsv8m4x': {
      'en': 'Starts on',
      'de': '',
      'nl': '',
    },
    '4sb4ay68': {
      'en': 'Sep ',
      'de': '',
      'nl': '',
    },
    '01vxdt8c': {
      'en': '2024',
      'de': '',
      'nl': '',
    },
    'ox8inxkt': {
      'en': 'Payout date',
      'de': '',
      'nl': '',
    },
    'ui4clojr': {
      'en': 'Oct ',
      'de': '',
      'nl': '',
    },
    'dcufm60c': {
      'en': '2025',
      'de': '',
      'nl': '',
    },
    's2h50gni': {
      'en': 'Total payout',
      'de': '',
      'nl': '',
    },
    'lyty000g': {
      'en': '€ ',
      'de': '',
      'nl': '',
    },
    '3f2eis7i': {
      'en': '3000',
      'de': '',
      'nl': '',
    },
    '27nebsi6': {
      'en': 'Payspin duration',
      'de': '',
      'nl': '',
    },
    'b1k7d47y': {
      'en': '6',
      'de': '',
      'nl': '',
    },
    '60nqa5yb': {
      'en': 'months',
      'de': '',
      'nl': '',
    },
    'ihid3tb8': {
      'en': '500',
      'de': '',
      'nl': '',
    },
    'd5iee23i': {
      'en': '€/month',
      'de': '',
      'nl': '',
    },
    '82m7d1w2': {
      'en': 'Payspin progress',
      'de': '',
      'nl': '',
    },
    '496wo8gi': {
      'en': '50%',
      'de': '',
      'nl': '',
    },
  },
  // PayspinRecomendtion
  {
    'ov21bykt': {
      'en': 'Join Now',
      'de': '',
      'nl': '',
    },
    '0myxe0q2': {
      'en': 'Sep-24',
      'de': '',
      'nl': '',
    },
    'hr5x6qtz': {
      'en': 'Oct-24',
      'de': '',
      'nl': '',
    },
    '4eoxtsis': {
      'en': 'Nov-24',
      'de': '',
      'nl': '',
    },
    '688aug5u': {
      'en': 'Dec-24',
      'de': '',
      'nl': '',
    },
    '3eglhvjl': {
      'en': 'Jan-25',
      'de': '',
      'nl': '',
    },
    '47mrxxp0': {
      'en': 'Feb-25',
      'de': '',
      'nl': '',
    },
    '1yekx7de': {
      'en': 'Payspin duration',
      'de': '',
      'nl': '',
    },
    'ndl165dr': {
      'en': '6',
      'de': '',
      'nl': '',
    },
    'p6oq0man': {
      'en': 'months',
      'de': '',
      'nl': '',
    },
    'r45f6956': {
      'en': '500',
      'de': '',
      'nl': '',
    },
    'uly180e6': {
      'en': '€/month',
      'de': '',
      'nl': '',
    },
    '6kmwg5xl': {
      'en': 'Starts on',
      'de': '',
      'nl': '',
    },
    'w68es1s5': {
      'en': 'Sep ',
      'de': '',
      'nl': '',
    },
    '3ohw5v05': {
      'en': '2024\n',
      'de': '',
      'nl': '',
    },
    'bclrzyk2': {
      'en': 'Payout date',
      'de': '',
      'nl': '',
    },
    '1z9f6a60': {
      'en': 'Oct ',
      'de': '',
      'nl': '',
    },
    'boc7xsvr': {
      'en': '2025\n',
      'de': '',
      'nl': '',
    },
    'x1wjginy': {
      'en': 'Total payout',
      'de': '',
      'nl': '',
    },
    '2tglmgds': {
      'en': '€ ',
      'de': '',
      'nl': '',
    },
    'j2wyu83e': {
      'en': '3000',
      'de': '',
      'nl': '',
    },
  },
  // NewPayspinBottomup
  {
    't74uwqto': {
      'en': 'New Payspin',
      'de': '',
      'nl': '',
    },
    '2b3m4lbn': {
      'en': 'Join Existing',
      'de': '',
      'nl': '',
    },
    'j3vw3mkc': {
      'en': 'Create New',
      'de': '',
      'nl': '',
    },
    'wwjul694': {
      'en': 'Field is required',
      'de': '',
      'nl': '',
    },
  },
  // AppNaviComponentonboarding
  {
    '3swtyzsy': {
      'en':
          'Payspin platform is next Generation Circle management application in Europe for every community\'s convenience.\n\nIt provide users Efficient-targeted savings solution, connect to extended social networks, and Build Financial resilience. ',
      'de': '',
      'nl': '',
    },
  },
  // Pleasefillinyoudetail
  {
    'l6kbdql9': {
      'en':
          'Please sign in with your account or fill in your details to complete your profile',
      'de': '',
      'nl': '',
    },
    'lyghr9b7': {
      'en': 'Field is required',
      'de': '',
      'nl': '',
    },
  },
  // Selectcircle1
  {
    'v1mxbhqk': {
      'en': 'Overview',
      'de': '',
      'nl': '',
    },
    '2e85lh31': {
      'en': 'choose Month',
      'de': '',
      'nl': '',
    },
    'cpayu4w7': {
      'en': 'choose amount',
      'de': '',
      'nl': '',
    },
    'apfdrq2k': {
      'en': 'Start on month',
      'de': '',
      'nl': '',
    },
    '5sxr8hq5': {
      'en': 'Starts on',
      'de': '',
      'nl': '',
    },
    's05wdg14': {
      'en': 'Payout date',
      'de': '',
      'nl': '',
    },
    'cyrqynfh': {
      'en': 'Total payout',
      'de': '',
      'nl': '',
    },
    'g6m2ex1h': {
      'en': '€ ',
      'de': '',
      'nl': '',
    },
    '58ove481': {
      'en': 'NEXT',
      'de': '',
      'nl': '',
    },
  },
  // Selectcircle2NotReal
  {
    '22aezwcz': {
      'en': 'Contributors',
      'de': '',
      'nl': '',
    },
    'l9ejfmza': {
      'en': 'Design Work',
      'de': '',
      'nl': '',
    },
    '0zfsdfsb': {
      'en': 'Randy Peterson',
      'de': '',
      'nl': '',
    },
    'ovnfesgv': {
      'en': 'Admin',
      'de': '',
      'nl': '',
    },
    '5yxtbbsu': {
      'en': '\$2,100',
      'de': '',
      'nl': '',
    },
    'ltwh6dvm': {
      'en': 'Done',
      'de': '',
      'nl': '',
    },
    'xsikvsti': {
      'en': 'Design Work',
      'de': '',
      'nl': '',
    },
    'xc4qmx11': {
      'en': 'Randy Peterson',
      'de': '',
      'nl': '',
    },
    '6owpcg2a': {
      'en': 'Contributor',
      'de': '',
      'nl': '',
    },
    'i2jfqtar': {
      'en': '\$2,100',
      'de': '',
      'nl': '',
    },
    '8ab1tmjs': {
      'en': 'Paid',
      'de': '',
      'nl': '',
    },
    '80yreoss': {
      'en': 'Design Work',
      'de': '',
      'nl': '',
    },
    'l9ld34tk': {
      'en': 'Randy Peterson',
      'de': '',
      'nl': '',
    },
    'j0o339mf': {
      'en': 'Contributor',
      'de': '',
      'nl': '',
    },
    'yo0188gv': {
      'en': '\$2,100',
      'de': '',
      'nl': '',
    },
    'lx4ijoyt': {
      'en': 'Paid',
      'de': '',
      'nl': '',
    },
    'pzk4trn3': {
      'en': 'Design Work',
      'de': '',
      'nl': '',
    },
    'u4dfad4q': {
      'en': 'Randy Peterson',
      'de': '',
      'nl': '',
    },
    'tphk9be7': {
      'en': 'Contributor',
      'de': '',
      'nl': '',
    },
    'psbyv2xd': {
      'en': '\$2,100',
      'de': '',
      'nl': '',
    },
    '1ft9oarw': {
      'en': 'Paid',
      'de': '',
      'nl': '',
    },
    '62f6uzm9': {
      'en': 'Design Work',
      'de': '',
      'nl': '',
    },
    'fl6rq61y': {
      'en': 'Randy Peterson',
      'de': '',
      'nl': '',
    },
    'tj2thamo': {
      'en': 'Contributor',
      'de': '',
      'nl': '',
    },
    'kgfw9853': {
      'en': '\$2,100',
      'de': '',
      'nl': '',
    },
    '7t2y39de': {
      'en': 'Pending',
      'de': '',
      'nl': '',
    },
    'ysruj7c5': {
      'en': 'Design Work',
      'de': '',
      'nl': '',
    },
    'lcn0xe04': {
      'en': 'Randy Peterson',
      'de': '',
      'nl': '',
    },
    'zh5vpbg4': {
      'en': 'Contributor',
      'de': '',
      'nl': '',
    },
    'kx1u8k24': {
      'en': '\$2,100',
      'de': '',
      'nl': '',
    },
    'k2dp2nom': {
      'en': 'Pending',
      'de': '',
      'nl': '',
    },
    'qgu0fend': {
      'en': 'NEXT',
      'de': '',
      'nl': '',
    },
  },
  // Selectcircle2
  {
    'w6kk8dzt': {
      'en': 'Choose Your Turn',
      'de': '',
      'nl': '',
    },
    '2ey1vr4n': {
      'en': 'zeyad\n',
      'de': '',
      'nl': '',
    },
    '28q0ih67': {
      'en': 'Button',
      'de': '',
      'nl': '',
    },
    '7z1xc6fa': {
      'en': 'NEXT',
      'de': '',
      'nl': '',
    },
  },
  // InviteFriend
  {
    'guxtzp4c': {
      'en': 'Invite Your Friends',
      'de': '',
      'nl': '',
    },
    '4mklugm8': {
      'en': 'Friend ID',
      'de': '',
      'nl': '',
    },
    'jmf9uigc': {
      'en': 'Enter Your Friend ID',
      'de': '',
      'nl': '',
    },
    'bwz5ihd0': {
      'en': 'Turn',
      'de': '',
      'nl': '',
    },
    'qpyphmlc': {
      'en': 'Desired Turn',
      'de': '',
      'nl': '',
    },
    'vmqgmboz': {
      'en': 'Continue',
      'de': '',
      'nl': '',
    },
  },
  // repeatingContainers
  {
    'faipghx9': {
      'en': 'Sep-24',
      'de': '',
      'nl': '',
    },
    '3p9qk9r3': {
      'en': 'Oct-24',
      'de': '',
      'nl': '',
    },
    'if80u2ti': {
      'en': 'Nov-24',
      'de': '',
      'nl': '',
    },
    'i6zgpmhn': {
      'en': 'Dec-24',
      'de': '',
      'nl': '',
    },
    '2ngaeukc': {
      'en': 'Jan-25',
      'de': '',
      'nl': '',
    },
    'hy7fdfad': {
      'en': 'Feb-25',
      'de': '',
      'nl': '',
    },
    '6ssfg4pm': {
      'en': 'Feb-25',
      'de': '',
      'nl': '',
    },
    'fpuztpii': {
      'en': 'Feb-25',
      'de': '',
      'nl': '',
    },
    'w37ppgst': {
      'en': 'Feb-25',
      'de': '',
      'nl': '',
    },
  },
  // InCircleRepeatingContainer
  {
    'cqc49o4j': {
      'en': 'Starts on',
      'de': '',
      'nl': '',
    },
    'v7xhgpwm': {
      'en': 'Payout date',
      'de': '',
      'nl': '',
    },
    'gxnyvqnp': {
      'en': 'Total payout',
      'de': '',
      'nl': '',
    },
    'hexyxlye': {
      'en': '€ ',
      'de': '',
      'nl': '',
    },
    'nkv28e6y': {
      'en': 'Payspin duration',
      'de': '',
      'nl': '',
    },
    '2g0p8srg': {
      'en': 'months',
      'de': '',
      'nl': '',
    },
    'tliqj7cz': {
      'en': '€/amount',
      'de': '',
      'nl': '',
    },
    '56qp20j2': {
      'en': 'Payspin progress',
      'de': '',
      'nl': '',
    },
    '4fqwklh1': {
      'en': '50%',
      'de': '',
      'nl': '',
    },
  },
  // DashboardSelectcircle2
  {
    'w3i72gr4': {
      'en': 'Design Work',
      'de': '',
      'nl': '',
    },
    '8v08s20i': {
      'en': '\$2,100',
      'de': '',
      'nl': '',
    },
  },
  // CircleSummaryTesting
  {
    '5c3pazbf': {
      'en': 'Sep-24',
      'de': '',
      'nl': '',
    },
    'b4k21fv2': {
      'en': 'Oct-24',
      'de': '',
      'nl': '',
    },
    'q3dz5iqh': {
      'en': 'Nov-24',
      'de': '',
      'nl': '',
    },
    'jcvy18e4': {
      'en': 'Dec-24',
      'de': '',
      'nl': '',
    },
    'zs427w9i': {
      'en': 'Jan-25',
      'de': '',
      'nl': '',
    },
    '9ropch7p': {
      'en': 'Feb-25',
      'de': '',
      'nl': '',
    },
    'ginnj5cg': {
      'en': 'Feb-25',
      'de': '',
      'nl': '',
    },
    'gtv6vowk': {
      'en': 'Feb-25',
      'de': '',
      'nl': '',
    },
    'uv3i57vl': {
      'en': 'Feb-25',
      'de': '',
      'nl': '',
    },
  },
  // testtest
  {
    'f3ywx5o1': {
      'en': 'No-Code Platform Design',
      'de': '',
      'nl': '',
    },
    'ejhf33um': {
      'en': '12 Projects',
      'de': '',
      'nl': '',
    },
    '14z8oe06': {
      'en': '30%',
      'de': '',
      'nl': '',
    },
  },
  // Miscellaneous
  {
    'psq04mcu': {
      'en': 'Phone number Verification',
      'de': '',
      'nl': '',
    },
    'nukw0xy7': {
      'en':
          'The app is asking for Notification permission to keep user updated with Payspin activities, news and feeds.',
      'de': '',
      'nl': '',
    },
    '0zmh81q1': {
      'en':
          'The app is requesting location to adjust language and targeted messages per user country.',
      'de': '',
      'nl': '',
    },
    'gnovfrsl': {
      'en': 'For login',
      'de': '',
      'nl': '',
    },
    'lsxgvlau': {
      'en': '',
      'de': '',
      'nl': '',
    },
    'bzceskaj': {
      'en': '',
      'de': '',
      'nl': '',
    },
    '2l1wevzi': {
      'en': '',
      'de': '',
      'nl': '',
    },
    'ap5qyfch': {
      'en': '',
      'de': '',
      'nl': '',
    },
    '8sf2m1su': {
      'en': '',
      'de': '',
      'nl': '',
    },
    'c1sxsxl0': {
      'en': '',
      'de': '',
      'nl': '',
    },
    'mjzu62ud': {
      'en': '',
      'de': '',
      'nl': '',
    },
    'xwnu4uxw': {
      'en': '',
      'de': '',
      'nl': '',
    },
    '6yw55h4g': {
      'en': '',
      'de': '',
      'nl': '',
    },
    'tt8l9v6m': {
      'en': '',
      'de': '',
      'nl': '',
    },
    '0ttq3olc': {
      'en': '',
      'de': '',
      'nl': '',
    },
    '889cr3w1': {
      'en': '',
      'de': '',
      'nl': '',
    },
    'hcsn6x32': {
      'en': '',
      'de': '',
      'nl': '',
    },
    'sa3g1gp5': {
      'en': '',
      'de': '',
      'nl': '',
    },
    'vy2rhava': {
      'en': '',
      'de': '',
      'nl': '',
    },
    'k3h0z8t9': {
      'en': '',
      'de': '',
      'nl': '',
    },
    '18tr3e0u': {
      'en': '',
      'de': '',
      'nl': '',
    },
    'bnjew56a': {
      'en': '',
      'de': '',
      'nl': '',
    },
    '2fmvei5y': {
      'en': '',
      'de': '',
      'nl': '',
    },
    'djyxuyxn': {
      'en': '',
      'de': '',
      'nl': '',
    },
    '7dgha5di': {
      'en': '',
      'de': '',
      'nl': '',
    },
    'egmqatvj': {
      'en': '',
      'de': '',
      'nl': '',
    },
    'oj1or81e': {
      'en': '',
      'de': '',
      'nl': '',
    },
    'apznuxtk': {
      'en': '',
      'de': '',
      'nl': '',
    },
    '1uhtl6yx': {
      'en': '',
      'de': '',
      'nl': '',
    },
  },
].reduce((a, b) => a..addAll(b));

import 'package:flutter/widgets.dart' show immutable;

extension AppIcons on Never {
  // ignore: library_private_types_in_public_api
  static const _IconsParser _parse = _IconsParser._internal();

  static final String add = _parse('/add.svg');
  static final String addNewClient = _parse('/add-new-client.svg');
  static final String search = _parse('/search.svg');
  static final String advancedSearch = _parse('/advanced-search.svg');
  static final String agenda = _parse('/agenda.svg');
  static final String arrowLeft = _parse('/arrow-left.svg');
  static final String arrowRight = _parse('/arrow-right.svg');
  static final String articles = _parse('/articles.svg');
  static final String articles_1 = _parse('/articles-1.svg');
  static final String calender = _parse('/calender.svg');
  static final String catalog = _parse('/catalog.svg');
  static final String clientNote = _parse('/client-note.svg');
  static final String clients = _parse('/clients.svg');
  static final String customerCard = _parse('/customer-card.svg');
  static final String customerMatches = _parse('/customer-matches.svg');
  static final String downArrow = _parse('/down-arrow.svg');
  static final String info = _parse('/info.svg');
  static final String logout = _parse('/logout.svg');
  static final String map = _parse('/map.svg');
  static final String more = _parse('/more.svg');
  static final String rilevazioni = _parse('/rilevazioni.svg');
  static final String camera = _parse('/camera.svg');
  static final String category = _parse('/categorie.svg');
  static final String newClient = _parse('/new-client.svg');
  static final String newClientList = _parse('/new-client-list.svg');
  static final String newOrder = _parse('/new-order.svg');
  static final String ordersList = _parse('/orders-list.svg');
  static final String potentialCustomers = _parse('/potential-customers.svg');
  static final String profile = _parse('/profile.svg');
  static final String sale = _parse('/sale.svg');
  static final String statistics = _parse('/statistics.svg');
  static final String swipe = _parse('/swipe.svg');
  static final String swipePerson = _parse('/swipe-person.svg');
  static final String tourVisit = _parse('/tour-visit.svg');
  static final String toursVisit = _parse('/tours-visit.svg');
  static final String clientSheet = _parse('/client-sheet.svg');
  static final String svgSelect = _parse('/svg-select.svg');
  static final String prodottirilevazione = _parse('/prodottirilevazione.svg');
  static final String puntirilevazione = _parse('/puntirilevazione.svg');
  static final String quotespazio = _parse('/quotespazio.svg');
  static final String home = _parse('/union.svg');
  static final String homeprofile = _parse('/homeprofile.svg');


}

@immutable
class _IconsParser {
  const _IconsParser._internal();

  static const String _iconsPath = 'assets/icons';

  String call(String source) {
    assert(source.startsWith('/'), '$source must begin with: `/`');
    assert(source.endsWith('.svg'), '$source must be a SVG document.');
    final RegExp regExp = RegExp(r'^[a-z0-9/.-]*$');
    assert(
      regExp.hasMatch(source),
      "$source must only contains lowercase latter's or numbers,"
      ' the only allowed symbols are: `/` and `-` with `.`',
    );
    return _iconsPath + source;
  }
}

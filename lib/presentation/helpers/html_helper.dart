import 'package:html/parser.dart' as html_parser;
import 'package:html/dom.dart' as dom;

String changingHtmlScale(String htmlData) {
  dom.Document document = html_parser.parse(htmlData);
  var headElement = document.getElementsByTagName('head').first;

  var metaElement = dom.Element.tag('meta');
  metaElement.attributes['name'] = 'viewport';
  metaElement.attributes['content'] = 'width=device-width, initial-scale=0.8';
  headElement.children.add(metaElement);

  return document.outerHtml;
}

import 'package:test/test.dart';
import 'package:apidash/utils/header_utils.dart';

void main() {
  group("Testing getHeaderSuggestions function", () {
    test("Testing using Allow-Headers", () {
      String pattern = "Allow-Headers";
      List<String> expected = ["Access-Control-Allow-Headers"];
      expect(getHeaderSuggestions(pattern), containsAll(expected));
    });

    test("Testing using Allow-Methods", () {
      String pattern = "Allow-Methods";
      List<String> expected = ["Access-Control-Allow-Methods"];
      expect(getHeaderSuggestions(pattern), containsAll(expected));
    });

    test("Testing using Allow-Origin", () {
      String pattern = "Allow-Origin";
      List<String> expected = ["Access-Control-Allow-Origin"];
      expect(getHeaderSuggestions(pattern), containsAll(expected));
    });

    test("Testing using Request-Method", () {
      String pattern = "Req-Method";
      List<String> expected = ["Access-Control-Request-Method"];
      expect(getHeaderSuggestions(pattern), containsAll(expected));
    });

    test("Testing using Max-Age", () {
      String pattern = "Max-Age";
      List<String> expected = ["Access-Control-Max-Age"];
      expect(getHeaderSuggestions(pattern), containsAll(expected));
    });

    test("Testing using Access-Control-Allow-Headers", () {
      String pattern = "Access-Head";
      List<String> expected = ["Access-Control-Allow-Headers"];
      expect(getHeaderSuggestions(pattern), containsAll(expected));
    });

    test("Testing using Access-Control-Allow-Methods", () {
      String pattern = "Acc-Control";
      List<String> expected = ["Access-Control-Allow-Methods"];
      expect(getHeaderSuggestions(pattern), containsAll(expected));
    });

    test("Testing using Access-Control-Allow-Origin", () {
      String pattern = "Control-Orin";
      List<String> expected = ["Access-Control-Allow-Origin"];
      expect(getHeaderSuggestions(pattern), containsAll(expected));
    });

    test("Testing using Access-Control-Request-Method", () {
      String pattern = "Access-Req";
      List<String> expected = ["Access-Control-Request-Method"];
      expect(getHeaderSuggestions(pattern), containsAll(expected));
    });

    test("Testing using Access-Control-Max-Age", () {
      String pattern = "Access-Control-Max-Age";
      List<String> expected = ["Access-Control-Max-Age"];
      expect(getHeaderSuggestions(pattern), containsAll(expected));
    });

    test("Testing using Content-Type", () {
      String pattern = "Content-Type";
      List<String> expected = ['Content-Type', 'X-Content-Type-Options'];
      expect(getHeaderSuggestions(pattern), containsAll(expected));
    });

    test("Testing using Expires", () {
      String pattern = "Expi";
      List<String> expected = ["Expires"];
      expect(getHeaderSuggestions(pattern), containsAll(expected));
    });

    test("Testing using 'Access-Control' pattern", () {
      String pattern = "Access-Cntl";
      List<String> expected = [
        "Access-Control-Allow-Headers",
        "Access-Control-Allow-Methods",
        "Access-Control-Allow-Origin",
        "Access-Control-Max-Age",
        "Access-Control-Request-Headers",
        "Access-Control-Request-Method"
      ];
      expect(getHeaderSuggestions(pattern), containsAll(expected));
    });

    test("Testing using 'allow-' pattern", () {
      String pattern = 'allow-';
      List<String> expected = [
        "Access-Control-Allow-Headers",
        "Access-Control-Allow-Methods",
        "Access-Control-Allow-Origin"
      ];
      expect(getHeaderSuggestions(pattern), containsAll(expected));
    });

    test("Testing using 'content' pattern", () {
      String pattern = "content";
      List<String> expected = [
        'Content-Disposition',
        'Content-Encoding',
        'Content-Length',
        'Content-Security-Policy',
        'Content-Type',
        'X-Content-Type-Options'
      ];
      expect(getHeaderSuggestions(pattern), containsAll(expected));
    });

    test("Testing using 'x-' pattern", () {
      String pattern = "x-";
      List<String> expected = [
        "Access-Control-Max-Age",
        "X-Api-Key",
        "X-Content-Type-Options",
        "X-CSRF-Token",
        "X-Forwarded-For",
        "X-Frame-Options",
        "X-Requested-With",
        "X-XSS-Protection"
      ];
      expect(getHeaderSuggestions(pattern), containsAll(expected));
    });

    test("Testing for 'origin' pattern", () {
      String pattern = "origin";
      List<String> expected = [
        'Access-Control-Allow-Origin',
        'Cross-Origin-Embedder-Policy',
        'Cross-Origin-Opener-Policy',
        'Cross-Origin-Resource-Policy',
        'Origin'
      ];
      expect(getHeaderSuggestions(pattern), containsAll(expected));
    });
  });
}

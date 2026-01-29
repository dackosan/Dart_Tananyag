import 'dart:io';

void main() {
  print("Írj be egy angol szavat: ");
  var szo = stdin.readLineSync()!;

  List<String> mostCommonEnglishWords = [
    "the",
    "be",
    "to",
    "of",
    "and",
    "a",
    "in",
    "that",
    "have",
    "I",
    "it",
    "for",
    "not",
    "on",
    "with",
    "he",
    "as",
    "you",
    "do",
    "at",
    "this",
    "but",
    "his",
    "by",
    "from",
    "they",
    "we",
    "say",
    "her",
    "she",
    "or",
    "an",
    "will",
    "my",
    "one",
    "all",
    "would",
    "there",
    "their",
    "is",
    "are",
    "was",
    "were",
    "been",
    "has",
    "had",
    "can",
    "could",
    "should",
  ];

  if (mostCommonEnglishWords.contains(szo)) {
    print("Benne van!");
  } else {
    print("Nincs benne!");
  }
}

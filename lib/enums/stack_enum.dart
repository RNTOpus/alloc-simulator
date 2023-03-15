import 'package:flutter/material.dart';

enum FrontendStackEnum { html, css, javascript, angular, react, vue, svelte }

enum BackendStackEnum { java, dotnet, python, node }

extension FrontendStackExtension on FrontendStackEnum {
  static const Map<FrontendStackEnum, String> _stacks = {
    FrontendStackEnum.css: 'CSS',
    FrontendStackEnum.html: 'HTML',
    FrontendStackEnum.javascript: 'Javascript',
    FrontendStackEnum.angular: 'Angular',
    FrontendStackEnum.react: 'React',
    FrontendStackEnum.vue: 'Vue',
    FrontendStackEnum.svelte: 'Svelte'
  };

  String get name => _stacks[this]!;
  Color get color => Color.fromRGBO(152, 255, 162, 1);
}

extension BackendStackExtension on BackendStackEnum {
  static const Map<BackendStackEnum, String> _stacks = {
    BackendStackEnum.java: 'Java',
    BackendStackEnum.dotnet: '.Net',
    BackendStackEnum.python: 'Python',
    BackendStackEnum.node: 'Node',
  };

  String get name => _stacks[this]!;
  Color get color => Color.fromRGBO(255, 189, 152, 1);
}

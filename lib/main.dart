import 'package:diary_account_book/app_page.dart';
import 'package:diary_account_book/main_loading.dart';
import 'package:diary_account_book/main_router.dart';
import 'package:flutter/material.dart';

void main() {
  MainLoading().initLoading();
  MainRouter().initRouter();
  runApp(AppPage());
}

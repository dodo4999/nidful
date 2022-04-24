import 'package:flutter/material.dart';
import 'package:nid/widgets/faq_widget.dart';
import 'package:nid/widgets/header_widget.dart';
import 'package:nid/widgets/sub_header.dart';

class FaqPage extends StatefulWidget {
  const FaqPage({Key? key}) : super(key: key);

  @override
  State<FaqPage> createState() => _FaqPageState();
}

class _FaqPageState extends State<FaqPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 30.0),
          child: Column(
            children: [
              Header(),
              SubHeader(title: 'Faq'),
              SizedBox(height: 20.0),
              FaqWidget(
                question: 'How do i get started?',
                answer:
                    'Create an account, select a category you want to shop and vet',
              ),
              FaqWidget(
                question: 'How do i get started?',
                answer:
                    'Create an account, select a category you want to shop and vet',
              ),
              FaqWidget(
                question: 'How do i get started?',
                answer:
                    'Create an account, select a category you want to shop and vet',
              ),
              FaqWidget(
                question: 'How do i get started?',
                answer:
                    'Create an account, select a category you want to shop and vet',
              ),
              FaqWidget(
                question: 'How do i get started?',
                answer:
                    'Create an account, select a category you want to shop and vet',
              ),
              FaqWidget(
                question: 'How do i get started?',
                answer:
                    'Create an account, select a category you want to shop and vet',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:volunteersapp/theme/app_theme.dart';

class FormTextField extends StatefulWidget {
  String? initialData;
  final GlobalKey<FormState> formKey;
  final bool enable;
  final TextInputType? keyboardType;
  final TextInputAction? textInputAction;

  // InputDecoration
  final String textFormFieldInputDecorationlabel;
  final Color? textFormFieldInputDecorationColor;
  final InputBorder? textFormInputDecorationBorder;

  // TextStyle
  final bool? idecorTextStyleInherit;
  final Color? idecorTextStyleColor;
  final Color? idecorTextStylebackgroundColor;
  final double? idecorTextStylefontSize;
  final FontWeight? idecorTextStylefontWeight;
  final FontStyle? idecorTextStylefontStyle;
  final double? idecorTextStyleletterSpacing;
  final double? idecorTextStylewordSpacing;
  final TextBaseline? idecorTextStyletextBaseline;
  final double? idecorTextStyleheight;
  final TextLeadingDistribution? idecorTextStyleleadingDistribution;
  final Locale? idecorTextStylelocale;
  final Paint? idecorTextStyleforeground;
  final Paint? idecorTextStylebackground;
  final List<Shadow>? idecorTextStyleshadows;
  final List<FontFeature>? idecorTextStylefontFeatures;
  final List<FontVariation>? idecorTextStylefontVariations;
  final TextDecoration? idecorTextStyledecoration;
  final Color? idecorTextStyledecorationColor;
  final TextDecorationStyle? idecorTextStyledecorationStyle;
  final double? idecorTextStyledecorationThickness;
  final String? idecorTextStyledebugLabel;
  final String? idecorTextStylefontFamily;
  final List<String>? idecorTextStylefontFamilyFallback;
  final String? idecorTextStylepackage;
  final TextOverflow? idecorTextStyleoverflow;

  FormTextField(
    this.initialData, {
    Key? key,
    required this.formKey,
    required this.enable,
    required this.textFormFieldInputDecorationlabel,
    this.keyboardType,
    this.textInputAction,
    this.textFormInputDecorationBorder,
    this.textFormFieldInputDecorationColor,
    this.idecorTextStyleInherit,
    this.idecorTextStyleColor,
    this.idecorTextStylebackgroundColor,
    this.idecorTextStylefontSize,
    this.idecorTextStylefontWeight,
    this.idecorTextStylefontStyle,
    this.idecorTextStyleletterSpacing,
    this.idecorTextStylewordSpacing,
    this.idecorTextStyletextBaseline,
    this.idecorTextStyleheight,
    this.idecorTextStyleleadingDistribution,
    this.idecorTextStylelocale,
    this.idecorTextStyleforeground,
    this.idecorTextStylebackground,
    this.idecorTextStyleshadows,
    this.idecorTextStylefontFeatures,
    this.idecorTextStylefontVariations,
    this.idecorTextStyledecoration,
    this.idecorTextStyledecorationColor,
    this.idecorTextStyledecorationStyle,
    this.idecorTextStyledecorationThickness,
    this.idecorTextStyledebugLabel,
    this.idecorTextStylefontFamily,
    this.idecorTextStylefontFamilyFallback,
    this.idecorTextStylepackage,
    this.idecorTextStyleoverflow,
  }) : super(key: key) {
    key = key;
  }

  TextEditingController _controller = TextEditingController();
  String get value => _controller.text;

  @override
  State<FormTextField> createState() => _FormTextFieldState();
}

class _FormTextFieldState extends State<FormTextField> {
  @override
  void initState() {
    super.initState();
    widget._controller.text = widget.initialData ?? '';
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Form(
        key: widget.formKey,
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                key: widget.key,
                controller: widget._controller,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter some text';
                  }
                  return null;
                },
                enabled: widget.enable,
                autofocus: false,
                keyboardType: widget.keyboardType,
                textInputAction: widget.textInputAction,
                decoration: InputDecoration(
                  labelText: widget.textFormFieldInputDecorationlabel,
                  labelStyle: TextStyle(
                    inherit: widget.idecorTextStyleInherit ?? true,
                    color: widget.idecorTextStyleColor ?? AppTheme.currentTheme.textTheme.labelSmall!.color,
                    backgroundColor: widget.idecorTextStylebackgroundColor ?? AppTheme.currentTheme.colorScheme.background,
                    fontSize: widget.idecorTextStylefontSize ?? AppTheme.currentTheme.inputDecorationTheme.labelStyle!.fontSize,
                    fontWeight: widget.idecorTextStylefontWeight ?? FontWeight.normal,
                    fontStyle: widget.idecorTextStylefontStyle ?? FontStyle.normal,
                    letterSpacing: widget.idecorTextStyleletterSpacing,
                    wordSpacing: widget.idecorTextStylewordSpacing,
                    textBaseline: widget.idecorTextStyletextBaseline,
                    height: widget.idecorTextStyleheight,
                    leadingDistribution: widget.idecorTextStyleleadingDistribution,
                    locale: widget.idecorTextStylelocale,
                    foreground: widget.idecorTextStyleforeground,
                    background: widget.idecorTextStylebackground,
                    shadows: widget.idecorTextStyleshadows,
                    fontFeatures: widget.idecorTextStylefontFeatures,
                    fontVariations: widget.idecorTextStylefontVariations,
                    decoration: widget.idecorTextStyledecoration,
                    decorationColor: widget.idecorTextStyledecorationColor,
                    decorationStyle: widget.idecorTextStyledecorationStyle,
                    decorationThickness: widget.idecorTextStyledecorationThickness,
                    debugLabel: widget.idecorTextStyledebugLabel,
                    fontFamily: widget.idecorTextStylefontFamily,
                    fontFamilyFallback: widget.idecorTextStylefontFamilyFallback,
                    package: widget.idecorTextStylepackage,
                    overflow: widget.idecorTextStyleoverflow,
                  ),
                  filled: true,
                  fillColor: widget.textFormFieldInputDecorationColor ?? AppTheme.currentTheme.inputDecorationTheme.fillColor,
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 15.0),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: BorderSide(color: Colors.white, width: 2.0),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: BorderSide(color: Colors.white, width: 4.0),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

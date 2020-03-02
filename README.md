# SwiftLintTest

More details can be found here:

A tool to enforce Swift style and conventions. https://realm.github.io/SwiftLint

Commands to create your own project: 

Install 
1. brew install swiftlint

Go to project 
2.  cd /Users/mac/Desktop/GithubProject/SwiftLintTest/SwiftLintTest.xcodeproj 

init pod 
3. pod init
 
View pod file 
4. vim podfile

Add library 
5. pod 'SwiftLint'

install
6.  pod install
 
 ** Open xcode project and add a run script.
 
 "${PODS_ROOT}/SwiftLint/swiftlint"


view yml file
7. vim .swiftlint.yml

add, change for add , edit
then 
8. :wq. to quit

To open file 
9. xed .swiftlint.ym

Add these commands , build , changes and build again, 
10. 

line_length:
file_length : 700
warning: 120
error: 1200
ignores_function_declarations: true
ignores_comments: true
ignores_interpolated_strings: true
ignores_urls: true

disabled_rules:
  - line_length
  - function_body_length
  - type_body_length
  - identifier_name
  - enum_case_associated_values_counts
  - type_name
  - cyclomatic_complexity
  - force_cast
  - shorthand_operator
  - colon
  - opening_brace
  - return_arrow_whitespace
  - trailing_whitespace
  - syntactic_sugar
  - vertical_whitespace
  - statement_position
  - comma
  - control_statement
  - orphaned_doc_comment
  - trailing_newline
  - unused_optional_binding
  - leading_whitespace
  - trailing_semicolon
  - mark





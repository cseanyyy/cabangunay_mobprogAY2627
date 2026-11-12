# Lab Activity 0: Discussion

## Lab Activity 0A: Flutter Installation
Setting up the Flutter development environment required configuring path variables and ensuring SDK dependencies were recognized globally. The main challenge involved correctly appending `C:\flutter\bin` to the Windows System Path variables and resolving missing Android SDK components and command-line tools. Running `flutter doctor -v` allowed systematic verification of the toolchain, ensuring that all platform licenses were accepted before initializing projects.

## Lab Activity 0B: Flutter Project Instantiation
Instantiating the initial Flutter application (`cabangunay_mobprog`) demonstrated the framework's cross-platform capabilities. While targeting local desktop builds requires specific platform C++ toolchains, targeting Chrome (web) provided a seamless web execution environment without extra native overhead. Configuring project templates and managing device targets in VS Code reinforced best practices for cross-platform project setups.
@echo off
REM Change to the directory
cd /d %~dp0

REM Remove all .class files
del /s /q src\*.class

REM Compile all Java source files
javac --module-path "C:\Program Files\Java\javafx-sdk-22.0.2\lib" --add-modules javafx.controls,javafx.fxml src\sokobot.java

REM Run application
java --module-path "C:\Program Files\Java\javafx-sdk-22.0.2\lib" --add-modules javafx.controls,javafx.fxml src.sokobot
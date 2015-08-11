# Reactive Cocoa test issue

This is a sample test that shows the problem I am facing when I want to test my ViewModel object that use a `RACCommand`.

There is a related [blog post on my website](http://code-craftsman.fr/2015/08/11/Testing-Reactive-Cocoa-App-that-use-CocoaPods/).

You can see the problem at tag `RACAssertOnTest` and a solution at `manual-fix` using the header path setup.

Test target was left to its default settings. This means that tests are executed in the Host Application with _Allow testing Host Application APIs_ enabled.

# Stacked Starter Template

A Flutter starter template using stacked architecture.
[understanding](https://liewjuntung.medium.com/stacked-architecture-in-flutter-dfb07528c0c4)
# Stacked

An architecture developed and revised by the [FilledStacks](https://www.youtube.com/filledstacks) community. This architecture was initially a version of MVVM as [described in this video](https://youtu.be/kDEflMYTFlk). Since then Filledstacks app development team has built 6 production applications with various requirements. This experience along with countless requests for improvements and common functionality is what sparked the creation of this architecture package. It aims to provide **common functionalities to make app development easier** as well as code principles to use during development to ensure your code stays maintainable.

**If you're reading this disclaimer, the series that does a deep-dive on this architecture has not been published yet.**

## How it works

The architecture is very simple. It consists of 3 major pieces, everything else is up to your implementation style. These pieces are:

- **View**: Shows the UI to the user. Single widgets also qualify as views (for consistency in terminology) a view, in this case, is not a "Page" it's just a UI representation.
- **ViewModel**: Manages the state of the View, business logic, and any other logic as required from user interaction. It does this by making use of the services
- **Services**: A wrapper of a single functionality/feature set. This is commonly used to wrap things like showing a dialog, wrapping database functionality, integrating an API, etc.

Let's go over some of those principles to follow during development.

- Views should never MAKE USE of a service directly.
- Views should only contain logic if necessary. If the logic is from UI only items then we do the least amount of required logic and pass the rest to the ViewModel.
- Views should ONLY render the state in its ViewModel.
- ViewModels for widgets that represent page views are bound to a single View only.
- ViewModels may be re-used if the UI requires the same functionality.
- ViewModels should not know about other ViewModels.

That's quite a bit of "rules", but they help during production. Trust me.

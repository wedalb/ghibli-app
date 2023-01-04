# Mandatory Assignment

In order to take part in the iPraktikum course, you need to submit an interactive iPhone app (iOS 15) developed using Xcode 13 and SwiftUI 3 as part of the Mandatory Assignment.


## Submission


-   **Clone this repository** and use it to work on your app.
-   **Follow the branching model** described in [this introductory video](https://www.youtube.com/watch?v=7TQ3xqglY80) or in [these slides](https://confluence.ase.in.tum.de/display/IOS22CW/Intro+Course%3A+Mandatory+Assignment?preview=/120160455/121474151/PR.pdf).
-   Submit your app **by creating a pull request**, which one of the tutors will review.
    -   Requirements NOT met: The tutor asks you to update your pull request.
    -   Requirements met: The tutor will accept the pull request.
-   The **Deadline** is **20.04.2022, 11:59 PM**
    -   Make sure to submit your solution **at least one week earlier**, allowing sufficient time for pull request reviews by tutors.
-   **Interviews**: **21.04.2022 - 27.04.2022**
    -   After accepting you submission, we may invite you to a short interview to ensure that you implemented your Mandatory Assignment without the help of third parties.

## Requirements

The table below lists all of the requirements to your iPhone app in a short form. Refer to the [detailed list with hints and how-to's](https://confluence.ase.in.tum.de/display/IOS22CW/Intro+Course%3A+Mandatory+Assignment) while working on your app.

After verifying that you implemented each of them, put a ✅ into the *Implemented* column before submitting the pull request for review. Don't touch the *Fulfilled* column, it will be filled by your tutor.

> Submissions without a ✅ in each row will not be reviewed but rejected for another revision.

| #  | Description                                                                         | Implemented | Fulfilled |
|----|-------------------------------------------------------------------------------------|-------------|-----------|
| 1  | Create at least 5±2 custom views                                                    |      ✅     |     ✅     |
| 1a | Use the List view in at least one of the custom views                               |      ✅     |     ✅     |
| 1b | Use AsyncImage in at least one of the custom views.                                 |      ✅     |     ✅     |
| 1c | Import and display a custom font in at least one of the custom views                |      ✅     |     ✅     |
| 2  | Include at least one asynchronous API call handled using async / await.             |      ✅     |     ✅     |
| 2a | Handle network errors and display appropriate error messages.                       |      ✅     |     ✅     |
| 3  | Use the MVVM pattern throughout your app.                                           |      ✅     |     ✅     |
| 3a | Avoid business logic in your SwiftUI views.                                         |      ✅     |     ✅     |
| 3b | Use appropriate property wrappers in your views.                                    |      ✅     |     ❌     |
| 3c | Use at least one published property in a ViewModel.                                 |      ✅     |     ✅     |
| 4  | Follow Apple's Human Interface Guidelines while creating the UI.                    |      ✅     |     ✅     |
| 4a | Support Dark Mode.                                                                  |      ✅     |     ✅     |
| 5  | Include at least one third-party package.                                           |      ✅     |     ✅     |
| 5a | Ensure that you install the package of your choice using the Swift Package Manager. |      ✅     |     ✅     |
| 6  | Use SF Symbols.                                                                     |      ✅     |     ✅     |
| 7  | Source code follows best practices, is readable, and easy to understand.            |      ✅     |     ❌     |
| 7a | Follow coding guidelines.                                                           |      ✅     |     ❌     |
| 7b | Comment your code inline.                                                           |      ✅     |     ✅     |
| 7c | Document your code.                                                                 |      ✅     |     ✅     |
| 7d | Use Apple's Logger throughout your app.                                             |      ✅     |     ✅     |


## Documentation

> Make sure to remove all *TODO*s before you submit your app for review.

### Features

With the Ghibli App you can browse Trough all movies of studio ghibli. You can read about every single movie individually. You can save your favourites and with a button you can filter our your favourites in order to only display them. Also you can sort the list alphabetically 

### Screens

- Welcome Screen: Just a beautiful start screen for when you open the app. Is displayed as long as you want and will disappear when you tab
- Home Menu Screen: The tabview in the bottom lets you choose between movie list, categories and information. 
- Random Movie Screen: This Screen fetches all ghibli movies and selects a random one. By pressing on the movie title the detail view of the movie is presented
- Movie List Screen: Lists all movies. Once  you press on a movie it displays the information about the movie and includes the movie's poster.
- Info Screen: Information about the author as well as a link to the contact email.

### Requirements

> Describe how you implemented each of the requirements briefly in 1-3 sentences, depending on the complexity.

#### 1) Create at least 5±2 custom views created

> DONE: I have 4 views. WelcomeView, MoviesView (List of all movies includes MovieListView, MovieRow and MovieDetailView), CategoryView and InfoView. 

#### 1a) Use the List view in at least one of the custom views

> DONE: I used the List view in MovieView.swift. It loads the MovieListView and displays all movies of studio ghibli in a list. 

#### 1b) Use AsyncImage in at least one of the custom views.

> DONE: I use AsyncImage to load the movie's posters in MovieRow.swift and MovieDetailView.swift. I load them from the ghibli api.

#### 1c) Import and display a custom font in at least one of the custom views.

> DONE: I imported the custom font "Playfair_Display" and use it only in WelcomeScreen.swift in the Text "Welcome Back". 

#### 2) Include at least one asynchronous API call handled using async / await.

> DONE: In DataLoader.swift I use the asynchronous api calls to get all kinds of ghibliData. I used a generic function in order to re-use it for all kinds of information I need (e.g. Ghibli Characters, Species, Vehicles, Locations etc.) The different types of information that I would need are also written in an enum in DataLoader.swift. I use await in the MoviesView.swift to get the data for the list. 

#### 2a) Handle network errors and display appropriate error messages.

> DONE: I have made an error message and put the error message inside of the logger. If the user doesn't have a network connection the error will be displayed. Once the user has a network connection again they can press the "try again" button to load the data again. The Randomizer has the same. 

#### 3) Use the MVVM pattern throughout your app.

> DONE: I grouped my files into different folders (model, viewmodel, view) and made sure to model my data only in the model folder, to have my views without logic in the view folder and to have my viewmodels only in the viewmodel folder

#### 3a) Avoid business logic in your SwiftUI views.

> DONE: I use no business logic in my views. The most logic I use are the links between the Listview, Row and MovieDetail view. 

#### 3b) Use appropriate property wrappers in your views.

> DONE: I use the @Published property wrapper

#### 3c) Use at least one published property in a ViewModel.

> DONE: I use the @Published property wrapper in my viewModels

#### 4) Follow Apple's Human Interface Guidelines while creating the UI.

> DONE: I reviewed the Human Interface Guidelines and updated my code. 

#### 4a) Support Dark Mode.

> DONE: My app supports dark mode. If you change the dark mode setting on your iphone it will also change the colors to darkmode on the app. 

#### 5) Include at least one third-party package.

> DONE: In RandomMovieView I use the ConfettiSwiftUI Package that is recommended on the requirements list. I used the Swift Package Manager 

#### 5a) Ensure that you install the package of your choice using the Swift Package Manager.

> DONE: I have used the Swift Package Manager to install the swift-log package. I use it for the Logger. 

#### 6) Use SF Symbols.

> DONE: I use SF Symbols for the Tab bar on the bottom. Also I use one in the MoviesView for the filters.

#### 7) Source code follows best practices, is readable, and easy to understand.

> DONE: My code is readable, formatted, follows best practise and is easy to understand due to naming functions and variables properly. Also I use comments to explain if nessecary.

#### 7a) Follow coding guidelines.

> DONE: I made sure I use lowerSnakeCase and upperSnakeCase wherever it should be. I documented and commented my code and formatted it. 

#### 7b) Comment your code inline.

> DONE: I use inline comments when nessecary. Though I do not comment every line because that would make the code unreadable 

#### 7c) Document your code.

> DONE: I use documentation comments on every function, enum, class, struct, etc. I use. 

#### 7d) Use Apple's Logger throughout your app.

> DONE: I use the Logger especially in the viewmodel.

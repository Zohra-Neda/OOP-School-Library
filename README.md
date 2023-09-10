<a name="readme-top"></a>

<!--
HOW TO USE:
This is an example of how you may give instructions on setting up your project locally.

Modify this file to match your project and remove sections that don't apply.

REQUIRED SECTIONS:
- Table of Contents
- About the Project
  - Built With
  - Live Demo
- Getting Started
- Authors
- Future Features
- Contributing
- Show your support
- Acknowledgements
- License

OPTIONAL SECTIONS:
- FAQ

After you're finished please remove all the comments and instructions!
-->

<div align="center">
  <!-- You are encouraged to replace this logo with your own! Otherwise you can also remove it. -->
  <br/>

  <h3><b>OOP School Library</b></h3>

</div>

<!-- TABLE OF CONTENTS -->

# 📗 Table of Contents

- [📖 About the Project](#about-project)
  - [🛠 Built With](#built-with)
    - [Tech Stack](#tech-stack)
    - [Key Features](#key-features)
- [💻 Getting Started](#getting-started)
  - [Setup](#setup)
  - [Prerequisites](#prerequisites)
  - [Install](#install)
  - [Usage](#usage)
  - [Run tests](#run-tests)
- [👥 Authors](#authors)
- [🤝 Contributing](#contributing)
- [⭐️ Show your support](#support)
- [🙏 Acknowledgements](#acknowledgements)
- [❓ FAQ (OPTIONAL)](#faq)
- [📝 License](#license)

<!-- PROJECT DESCRIPTION -->

# 📖 [OOP School Library] <a name="about-project"></a>

**[OOP School Library]** Ruby School is a simple object-oriented program that models a school with students and teachers. It provides three classes:

Person: the base class that represents a person with a name, an age, and an ID. It has a method to check if the person can use the school services based on their age and parent permission.
Student: a subclass of Person that adds a classroom attribute and a method to play hooky.
Teacher: a subclass of Person that adds a specialization attribute and overrides the can_use_services? method to always return true.
The program demonstrates inheritance, encapsulation, and polymorphism in Ruby, and provides a simple API to create and manipulate persons, students, and teachers. It can be extended with additional features, such as more methods or attributes for the classes, or a user interface to interact with the program.

## 🛠 Built With <a name="built-with"></a>
### Tech Stack <a name="tech-stack"></a>

- **Ruby**

## Getting Started

To get a local copy up and running follow these simple example steps.

### Prerequisites

- Git/GitHub;
- Optional ( IDE installed in your machine ) - recommended IDE: Vscode;
- Ruby Installed in your machine;

### Setup

- To clone this repo:
  - Open the Terminal(Mac/Linux) or the Cmd (Windows);
  - Navigate to where you want to paste the Repo folder;
  - Run the following commands
```
git clone https://github.com/Zohra-Neda/OOP-School-Library.git
cd OOP-School-Library
```


### Install
```
  bundle install
```  

### Usage
```
ruby main.rb
```
### Run tests
```
rspec spec
```

<!-- Features -->

### Key Features <a name="key-features"></a>

- **[Provides a Person class with basic attributes and methods to check if a person can use school services.]**
- **[Provides a Student class that inherits from Person and adds a classroom attribute and a method to play hooky.]**
- **[Provides a Teacher class that inherits from Person and adds a specialization attribute and overrides the can_use_services? method to always return true.]**
- **[Demonstrates inheritance, encapsulation, and polymorphism in Ruby.]**
- **[Provides a simple API to create and manipulate persons, students, and teachers.]**
- **[Can be extended with additional features, such as more methods or attributes for the classes, or a user interface to interact with the program.]**
- **[Refactor code by using SOLID]**
- **[Preserve data]**
- **[Unit tests]**




<!-- AUTHORS -->

## 👥 Authors <a name="authors"></a>


👤 **Zohra Neda**

- GitHub: [@zohra-neda](https://github.com/zohra-neda)
- Twitter: [@zohra_neda](https://twitter.com/zohra_neda)
- LinkedIn: [zohra-neda](https://www.linkedin.com/in/zohra-neda)

👤 **Cosmas wasswa**

- GitHub: [@cosywasswa](https://github.com/cosywasswa)
- LinkedIn: [cosmas-wasswa](https://www.linkedin.com/in/cosmas-wasswa)

<p align="right">(<a href="#readme-top">back to top</a>)</p>


<!-- CONTRIBUTING -->

## 🤝 Contributing <a name="contributing"></a>

Contributions, issues, and feature requests are welcome!

Feel free to check the [issues page](../../issues/).

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- SUPPORT -->

## ⭐️ Show your support <a name="support"></a>


If you like this project give ⭐️

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- ACKNOWLEDGEMENTS -->

## 🙏 Acknowledgments <a name="acknowledgements"></a>

I would like to express my gratitude to Microverse for initiating the idea behind this project.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- LICENSE -->

## 📝 License <a name="license"></a>

This project is [MIT](./LICENSE) licensed.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

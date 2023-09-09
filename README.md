<a name="readme-top"></a>

<div align="center">
  
  <h3><b>Catalog Of Things</b></h3>

</div>

<!-- TABLE OF CONTENTS -->

# 📗 Table of Contents

- [📖 About the Project](#about-project)
  - [🛠 Built With](#built-with)
    - [Tech Stack](#tech-stack)
    - [Key Features](#key-features)
- [💻 Getting Started](#getting-started)
  - [Prerequisites](#prerequisites)
  - [Setup](#setup)
  - [Install](#install)
  - [Run tests](#run-tests)
  - [Deployment](#deployment)
- [👥 Authors](#authors)
- [🔭 Future Features](#future-features)
- [🤝 Contributing](#contributing)
- [⭐️ Show your support](#support)
- [🙏 Acknowledgements](#acknowledgements)
- [❓ FAQ (OPTIONAL)](#faq)
- [📝 License](#license)

<!-- PROJECT DESCRIPTION -->

# 📖 [Catalog Of Things] <a name="about-project"></a>

**Catalog Of Things** is a Ruby-based project that is combined of several classes like `Item` with its relevant children such as `Book`, `MusicAlbum`, `Movie`, and `Game`, which is related together using _Inheritance_ relationship. The **Item** class is also related some other classes like `Author`, `Genre`, `Source`, and `Label` that has the **composition** one-to-many relationship.

The project is a command-line project that prompts the user to first create the characteristics of an item and based on them, and then prompt the user to create the item of its desired substance.

## 🛠 Built With <a name="built-with"></a>

### Tech Stack <a name="tech-stack"></a>

- ✅ **Ruby**.
- ✅ **PostgresSQL**
- ✅ **Rubocop**
- ✅ **Rspec**

<!-- Features -->

### Key Features <a name="key-features"></a>

- **Create 4 main characteristics for the item.**
- **Link the Item with some classes using composition relationship.**
- **Relate 4 other subitem for the Item class using inheritance.**
- **Run the program using a command-line interface.**

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- GETTING STARTED -->

## 💻 Getting Started <a name="getting-started"></a>

> Describe how a new developer could make use of your project.

To get a local copy up and running, follow these steps.

1. Clone or download this repository in your desired local directory.

```sh
git clone https://github.com/M-Anwar-Hussaini/Catalog-Of-Things.git
```

2. Navigate to the project directory

```sh
cd Catalog-Of-Things
```

3. Open a terminal or command-prompt interface on the directory.

4. Install the dependencies of project

```sh
bundle install
```

5. Run the main file

```
ruby main.rb
```

### Prerequisites

In order to run this project you need:

- [ ] [Ruby installer](https://www.ruby-lang.org/en/downloads/)
- [ ] Command Line interface.

### Setup

Clone this repository to your desired folder:

```sh
  cd my-folder
  git clone https://github.com/M-Anwar-Hussaini/Catalog-Of-Things.git
```

### Install

Install this project with:

- ✅ Rubocop

```sh
  cd my-project
  gem install Rubocop
```

- ✅ Rspec

```sh
  cd my-project
  gem install rspec
```

### Run tests

To run tests, run the following command go to the root directory of the project:

```sh
  rspec spec/*.rb
```

<!-- AUTHORS -->

## 👥 Authors <a name="authors"></a>

👤 **Mohammad Anwar Hussaini**

- GitHub: [@M-Anwar-Hussaini](https://github.com/M-Anwar-Hussaini/)
- LinkedIn: [Anwar Hussaini](https://www.linkedin.com/in/anwar-hussaini/)



<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- FUTURE FEATURES -->

## 🔭 Future Features <a name="future-features"></a>

- [ ] **Create GUI interface**
- [ ] **Make more validations on the methods.**
- [ ] **Provide more features using user story.**

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- CONTRIBUTING -->

## 🤝 Contributing <a name="contributing"></a>

Contributions, issues, and feature requests are welcome!

Feel free to check the [issues page](https://github.com/M-Anwar-Hussaini/Catalog-Of-Things/issues).

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- SUPPORT -->

## ⭐️ Show your support <a name="support"></a>

If you like this project kindly drop a star to this project.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- ACKNOWLEDGEMENTS -->

## 🙏 Acknowledgments <a name="acknowledgements"></a>

I would like to thank Microverse for providing the opportunity to creat this project.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- LICENSE -->

## 📝 License <a name="license"></a>

This project is [MIT](./MIT.md) licensed.

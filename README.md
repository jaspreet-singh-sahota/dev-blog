

<!--
*** Thanks for checking out this README Template. If you have a suggestion that would
*** make this better, please fork the repo and create a pull request or simply open
*** an issue with the tag "enhancement".
*** Thanks again! Now go create something AMAZING! :D
-->

<!-- PROJECT SHIELDS -->
<!--
*** I'm using markdown "reference style" links for readability.
*** Reference links are enclosed in brackets [ ] instead of parentheses ( ).
*** See the bottom of this document for the declaration of the reference variables
*** for contributors-url, forks-url, etc. This is an optional, concise syntax you may use.
*** https://www.markdownguide.org/basic-syntax/#reference-style-links
-->
[![Contributors][contributors-shield]][contributors-url]
[![Forks][forks-shield]][forks-url]
[![Stargazers][stars-shield]][stars-url]
[![Issues][issues-shield]][issues-url]

<!-- PROJECT LOGO -->
<br />
<p align="center">
  <a href="git@github.com:jaspreet-singh-sahota/dev-blog.git">
    <img src="https://course_report_production.s3.amazonaws.com/rich/rich_files/rich_files/5726/s300/icon-white-on-murple-copy.png" alt="Logo" width="80" height="80">
  </a>

  <h2 align="center">Dev-Blog</h2>

  <p align="center">
    This is the Microverse Rails Capstone Project.
    <br />
    <a href="git@github.com:jaspreet-singh-sahota/dev-blog.git"><strong>Explore the docs »</strong></a>
    <br />
    <br />
    <a href="https://github.com/jaspreet-singh-sahota/dev-blog/issues">Report Bug</a>
    ·
    <a href="https://github.com/jaspreet-singh-sahota/dev-blog/issues">Request Feature</a>
  </p>
</p>

<!-- TABLE OF CONTENTS -->
## Table of Contents

* [About the Project](#about-the-project)
* [Contact](#Authors)
* [Acknowledgements](#acknowledgements)
* [Built With](#built-with)

<!-- ABOUT THE PROJECT -->
## About The Project

This is Microverse Rails Capstone project for blogging site and I have selected the Dev-Blog theme.
Features of this blogging app are :-
 - User can write a blog with multiple tags.
 - User can upload an image for the article. 
 - From these tags, the user can access all the blogs related to that particular tag. 
 - Users can also upvote a blog. 
 - Blog with the most upvote will be featured on the front page.
 - User can search an article

## Video Discription Of The Project 

- Live link to Youtube here - https://youtu.be/in_27xn2lzo

- Solution for `N + 1` can be seen in the video at `3:57`

## Live Link (Heroku)

- [heroku](https://jassi-dev-blog.herokuapp.com/)

<!-- BUILD WITH -->
## Built With

This project was built using these technologies.
* Ruby V2.6.5
* Ruby on Rails v6.0.2.1

### Prerequisites

*  Ruby V2.6.5
*  Ruby on Rails v6.0.2.1
*  Postgres: >=9.
*  Aws s3 bucket (access key and secret key to upload images in production environment)

### Install

To test DEV-BLOG locally, clone the repository, navigate to it's containing directory, and run:

#### Follow these commands step by step:-

```bash
git clone git@github.com:jaspreet-singh-sahota/dev-blog.git
cd dev-blog
bundle install
rails db:create
rails db:migrate
rails db:seed
rails server
```

This should install all ruby gems and setup the database

Then you can you can open `http://localhost:3000/` in your browser to see DEV-BLOG up and running.

## Home Page

![Screenshot from 2020-06-18 18-52-10](https://user-images.githubusercontent.com/55361440/85025923-a2ee6f80-b195-11ea-90f4-59a959928ae4.png)

## Category Page

![Screenshot from 2020-06-18 18-56-39](https://user-images.githubusercontent.com/55361440/85025935-aa157d80-b195-11ea-8798-59d5ab5e31a1.png)

## Create New Blog Page

![Screenshot from 2020-06-18 18-55-23](https://user-images.githubusercontent.com/55361440/85025930-a71a8d00-b195-11ea-92b6-ccf80e01faab.png)

## Blog show Page

![Screenshot from 2020-06-18 18-57-13](https://user-images.githubusercontent.com/55361440/85025943-abdf4100-b195-11ea-97c4-ed5a1c08f00c.png)

## Log-in Page

![Screenshot from 2020-06-18 19-03-24](https://user-images.githubusercontent.com/55361440/85026590-79821380-b196-11ea-82be-2b7eedca9a2e.png)

## Sign-up Page 

![Screenshot from 2020-06-18 18-53-47](https://user-images.githubusercontent.com/55361440/85025924-a4b83300-b195-11ea-9c4c-5e463153de49.png)

## Tests

* Shoulda matchers
* Rspec
* Capybara

### To run the tests

```bash
  bundle exec rspec
```

<!-- CONTACT -->
## Authors

👤 **Jaspreet Singh** 
    
- [LinkedIn](https://www.linkedin.com/in/jaspreet-singh-a28286146/)
- [GitHub](https://github.com/jaspreet-singh-sahota)
- [Email](jaspreetsinghjassi01@gmail.com)
- [Portfolio](https://jaspreet-singh-portfolio.netlify.app/)

<!-- ACKNOWLEDGEMENTS -->
## Acknowledgements
* [Microverse](https://www.microverse.org/)
* [Ruby on rails Documentation](https://www.ruby-lang.org/en/documentation/)
* [Slack Ruby Bot](https://github.com/slack-ruby/slack-ruby-bot)

## Show your support

Give a ⭐️ if you like this project!

<!-- MARKDOWN LINKS & IMAGES -->
<!-- https://www.markdownguide.org/basic-syntax/#reference-style-links -->
[contributors-shield]: https://img.shields.io/github/contributors/jaspreet-singh-sahota/dev-blog.svg?style=flat-square
[contributors-url]: https://github.com/jaspreet-singh-sahota/dev-blog/graphs/contributors
[forks-shield]: https://img.shields.io/github/forks/jaspreet-singh-sahota/dev-blog.svg?style=flat-square
[forks-url]: https://github.com/jaspreet-singh-sahota/dev-blog/network/members
[stars-shield]: https://img.shields.io/github/stars/jaspreet-singh-sahota/dev-blog.svg?style=flat-square
[stars-url]: https://github.com/jaspreet-singh-sahota/dev-blog/stargazers
[issues-shield]: https://img.shields.io/github/issues/jaspreet-singh-sahota/dev-blog.svg?style=flat-square
[issues-url]: https://github.com/jaspreet-singh-sahota/dev-blog/issues

## 📝 License

This project is [MIT](https://opensource.org/licenses/MIT) licensed.

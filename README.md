# 🐖 Piggy 

Piggy is a web application to track your personal finances daily. You can view a monthly or annually resume about your expenses and incomes in some fancy Dashboards.

Made with Ruby on Rails 6, TailwindCSS and PostgreSQL 13; using a five layers architecture

- [Design Doc (only in spanish)](https://docs.google.com/document/d/1CsAxsfTQaVQw7lGRhoN8wpcP30h_W2_pfQ6FDscLqyc/edit?usp=sharing)
- [✨ Features](https://github.com/TanZng/piggy#-features)
  - [🌚🌞 Dark Mode and Light Mode, you choose](https://github.com/TanZng/piggy#-dark-mode-and-light-mode-you-choose)  
  - [💻📱 Responsive Dashboard](https://github.com/TanZng/piggy#-responsive-dashboard)
  - [📖💌  Pagination and Notifications](https://github.com/TanZng/piggy#--pagination-and-notifications)
  - [📆🎨 Date and Color Picker](https://github.com/TanZng/piggy#-date-and-color-picker)
- [👩‍💻 Development](https://github.com/TanZng/piggy#-development)
  - [🐘 Only Postgres Docker Compose](https://github.com/TanZng/piggy#-only-postgres-docker-compose)
  - [🐋 [WIP] Full docker-compose](https://github.com/TanZng/piggy#-wip-full-docker-compose)
  - [🖌 Run TailwindCSS](https://github.com/TanZng/piggy#-run-tailwindcss)

# ✨ Features

### 🌚🌞 Dark Mode and Light Mode, you choose

|🌚|🌞|
|-|-|
|![darkMode](https://raw.githubusercontent.com/TanZng/piggy/main/.github/assets/darkMode.png)|![lightMode](https://raw.githubusercontent.com/TanZng/piggy/main/.github/assets/lightMode.png)|


### 💻📱 Responsive Dashboard

|💻|🔄|📱|
|-|-|-|
|![pc](https://raw.githubusercontent.com/TanZng/piggy/main/.github/assets/pcView.png)|![tablet](https://raw.githubusercontent.com/TanZng/piggy/main/.github/assets/responsive.png)|![mobile](https://raw.githubusercontent.com/TanZng/piggy/main/.github/assets/mobileView.png)|


### 📖💌  Pagination and Notifications

|📖|💌|
|-|-|
|![pagination](https://raw.githubusercontent.com/TanZng/piggy/main/.github/assets/phoneView.png)|![notifications](https://raw.githubusercontent.com/TanZng/piggy/main/.github/assets/phoneView3.png)|


### 📆🎨 Date and Color Picker

|📆|🎨|
|-|-|
|![datePicker](https://raw.githubusercontent.com/TanZng/piggy/main/.github/assets/calendarPicker.png)|![colorPicker](https://raw.githubusercontent.com/TanZng/piggy/main/.github/assets/colorPicker.png)|


# 👩‍💻 Development

### 🐘 Only Postgres Docker Compose
Build Docker Compose
```bash
docker-compose build
```

Run Docker Compose
```bash
docker-compose up
```
### 🐋 [WIP] Full docker-compose

Build Docker
```bash
docker build --tag piggy .
```

Run Docker
```bash
docker run piggy 
```

### 🖌 Run TailwindCSS
```bash
yarn dev:server
```

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

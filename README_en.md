![Rails](https://img.shields.io/badge/Rails-7.0-red?logo=rubyonrails)  
![Ruby](https://img.shields.io/badge/Ruby-3.2.2-red?logo=ruby)

# Wainavi

## Application Overview  
Wainavi is a web application that allows users to search, document, and share winery experiences across Japan.  
Users can find wineries that match their preferences, record their visits, and share information with others.

### Key Features
- Browse winery listings and view detail pages  
- Filter search by winery type, wine style, grape variety, experience type, and awards  
- Post comments and star ratings (★1–5) to record winery visits  
- Save favorite wineries and manage them via My Page  
- User registration and login (with authentication)

> **About recording winery experiences**  
> Users can record their winery visit experiences by posting comments on the winery’s detail page.  
> The feature is inspired by Tabelog-style reviews where users can freely describe their impressions.  
> A future update may include a list of all submitted reviews on My Page, but this is not part of the initial release.

---

### User Management Features
- User registration, login, and logout (authentication)  
- My Page to manage user information and saved wineries

> **Purpose of My Page**  
> Initially, My Page displays user profile info and a list of bookmarked wineries.  
> Future enhancements may include post management and view history.

---

## URL  
(Coming soon)

## Test Account  
- Basic Auth ID: xxx  
- Basic Auth Password: xxx  
- Email: xxx@example.com  
- Password: xxxxxx  

---

## How to Use  
1. Register using your email and password  
2. After logging in, browse the winery list on the top page  
3. Use the filter to narrow results by:  
   - Winery type  
   - Wine style  
   - Grape variety  
   - Experience (e.g., tasting, tours)  
   - Awards  
4. Click a winery to view its details  
5. Submit a comment and star rating (1–5)  
6. Bookmark favorites using the "Save" button and manage them on My Page  

---

## Motivation  
- Information on Japanese wineries is scattered, making it difficult to search and compare  
- Wine lovers need tools to find wineries that match their preferences  
- Multiple condition filtering was needed: type, grape, experiences, awards  
- Users benefit from the ability to comment on and rate wineries they visit  
- Sharing bookmarks with others fosters community  
- A user-friendly, multilingual UI is aimed at international tourists interested in Japanese wine  
- The app was designed to practice using ActiveHash, join tables, search functions, and authentication  

---

## Planned Features  

### Phase 1: Core Features  
- Multi-condition filtering by region, type, facilities, etc.  
- Display results as cards  
- Winery detail pages  

### User Management  
- User registration (sign_up)  
- Login/Logout (sessions)  
- My Page display  

### Comment Management  
- Create comments  
- View all comments  
- Edit/Delete comments  

---

### Phase 2: Interactivity & Engagement  
- Star rating system (★1–5, one rating per user)  
- Bookmarking feature with list display  
- Multilingual support (i18n: Japanese/English toggle based on browser or user setting)  

---

### Phase 3: Community Features  
- Forum with thread-style posts, lists, editing, and deletion  
- User-created winery introduction pages  
- Badges based on number of comments, ratings, and visit history  
- Login with Google/Twitter, social sharing buttons  

---

### Phase 4: Social Features & Scheduling  
- “My Wine” saving feature  
- Sharing saved wines with others  
- Calendar UI for visit planning  
- Suggest/vote on potential visit dates  

---

## Database Design  
[![Image from Gyazo](https://i.gyazo.com/7b2a92d717e8b48f2099a0e250eae906.png)](https://gyazo.com/7b2a92d717e8b48f2099a0e250eae906)

## Screen Flow  
[![Image from Gyazo](https://i.gyazo.com/52a3af5eb5b90e1dba237befada02921.png)](https://gyazo.com/52a3af5eb5b90e1dba237befada02921)

---

## Development Environment  
- Language: Ruby 3.2.2  
- Framework: Ruby on Rails 7  
- Database: PostgreSQL  
- Frontend: Hotwire (Turbo, Stimulus), Tailwind CSS (planned)  
- Services: Render, GitHub, Gyazo, Google Fonts  

---

## Local Setup  
```bash
git clone [repository URL]
cd Wainavi
bundle install
yarn install
rails db:create
rails db:migrate
rails s
# Twitter Image Scraper

This is the root folder for a multi-repository project called Twitter Image Scraper.  
This repository contains only a set of useful scripts to start the multiple components of the project.  
The scripts were written for MacOS, but are easily adapter for Linux.  

The complete project consist of 3 repositories:

- [ntf-scraper](https://github.com/marcomartinscastanho/ntf-scraper) - a Chrome extension that scrapes an open Twitter tab for images in tweets and allows to save them to a gallery
- [ntf-backend](https://github.com/marcomartinscastanho/ntf-backend) - a Django headless back-end that works as image gallery, serving a REST API through Django REST Framework that allows to store/access images in the gallery
- [ntf-frontend](https://github.com/marcomartinscastanho/ntf-frontend) - a React web app that shows the gallery of saved images

Once upon a time, it was also possible to publish images saved in the gallery to a Tumblr-like blog website, but that's no longer possible.  
Still, the code to do that was kept for purposes of future consultation.  

The purpose of this project was simply to learn and practice useful technologies.

## Installing

Clone this repository.  
Then, inside of this repository's folder, clone the 3 repositories above.  
Follow the instructions on the README of each repository.

## Available scripts

### `createsuperuser.sh`

Creates an admin user with credentials to access the Django Admin portal.  
Open [http://localhost:8000/admin](http://localhost:8000/admin) to access the admin portal.

### `migrate.sh`

Run it once after installing [ntf-backend](https://github.com/marcomartinscastanho/ntf-backend).
After that you only need to run it when you modify any of the DB models.

### `backend.sh`

Starts the Django backend and the starts serving requests to the REST API.

### `celery.sh`

Starts the celery worker, that was responsible for posting images to a selected external blog asynchronously, when this option was working.

### `frontend.sh`

Starts the React frontend, making it possible to access the webpage that displayes the image gallery.  
When posting to external blogs was possible, it was also done through this webpage.
Open [http://localhost:3000](http://localhost:3000) to access the gallery.

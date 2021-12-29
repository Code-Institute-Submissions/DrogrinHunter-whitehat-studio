Whitehat Studio
---
## Table of Contents

- [**About**](#About)
- [**UX**](#UX)
    - [Goals](#Goals)
    - [User Stories](#User-Stories)
    - [Styling](#Styling)
    - [Wireframes](#Wireframes)
- [**Features**](#Features)
    - [Existing Features](#Existing-Features)
    - [Potential Future Features](#Potential-Future-Features)
- [**Technologies Used**](#Technologies-Used)
- [**Testing**](#Testing)
- [**Code Validation**](#Code-Validation)
- [**Deployment**](#Deployment)
    - [Live Website](#Live-Website)
    - [Repository Link](#Repository-Link)
    - [Running Code Locally](#Running-Code)
    - [Deploying to Heroku](#Deploying-to-Heroku)
    - [Deploying Static Files to AWS](#Deploy-to-aws)
- [**Credits**](#Credits)

---

## About



---

## Deployment

### Live Website Link
https://whitehat-studio.herokuapp.com/

### Repository Link
https://github.com/DrogrinHunter/whitehat-studio

### Running Code Locally

To deploy the project, the following is required: 
- Python3
- Github account
- Heroku account

To create a clone of the project, follow the below: 
1. Login into GitHub and browse to the specified URL.
2. Click Code and open with GitHub Desktop.
3. Follow the prompts in the GitHub Desktop Application.

## Deploying to Heroku

Heroku allows us to host Python projects which can have more features than static sites which is what GitHub allows however we will deploy all the static and media files to Amazon Web Services (AWS).

### Creating Heroku App
1. Create an account on www.Heroku.com.
2. After going through the account setup and signing in, you will be on the Heroku dashboard.
3. You can click your chosen development language, Heroku will provide some helpful tips and tutorials about how to use it with Heroku.
4. From the dashboard, click "Create New App".
5. Enter a name for your app, it must be unique and only contain letters, numbers and hyphens. 
6. Choose a region that is closest to your Country. 
7. Create the app.

### Connecting Git repo to Heroku
1. At the top of the screen, find the "Deploy" tab.
2. Find "Deployment Method" and then "GitHub" from within the tab.
3. In the search bar, if you have multiple different repo's, search for the GitHub repo.
4. At this point, do not click "Enable Automatic Deployment" but instead click "Connect".

### Creating the Requirements.txt file
1. Heroku needs the requirements file so it knows what language is being used and the dependencies.
2. The quickest and easiest way to create this is to type, in the console: pip3 freeze --local > requirements.txt. 
3. Wait for Heroku to install what it needs to be able to run the project. From there, it will deploy to Heroku however if you try to open it then you will see an error - you will need to do the next step.

### Creating the Heroku Procfile
1. A Procfile is a specific file that Heroku uses in order to know how to run the project.
2. To create this, refirect an echo command by typing: echo web: python run.py > Procfile. *Please note - the capitalised P is crucial*.
3. Git add this, commit it with notes then push it GitHub. 

### Setting up the env.py file for the environment variables
1. Make sure to have created a .gitignore file and add the env.py file into it. 
2. The convention for the file holding the environment variables is "env.py".
3. In the env.py file, be sure to place the IP, PORT and any secret keys you are working with.

### Entering the variables into Heroku's config vars.
1. On the Project's Heroku page, go into the settings and scroll down to "config vars".
2. Add the information from your env.py files into the Heroku project - the reason for this is because the env.py file is not pushed to Heroku as it is ignored by the .gitignore files and GitHub / Heroku do not have access to this file which is vital for the running of the project.
3. Add the variables into the config vars as key-value pairs.
4. In the Heroku settings page, click "Enable Automatic Deployment". 
5. Under this section, in the "Manual Deploy" section choose the master branch of your project and click "Deploy Branch".
6. You will now be able to open the project via the "Open App" button.

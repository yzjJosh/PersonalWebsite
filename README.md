## Introduction

This project is Zijiang Yang's personal website www.zijiangyang.com

The website uses ruby on rails framework, runs under ruby 2.3.1.

It runs on a single server, using sqlite3 as database software. All data are stored in the server's hard disk.

It contains a simple welcome page and a personal resume. The resume data is organized and stored in database.

## Database design:

```
Person {
    id: integer (primary key, required)
    name: string (required)
    profile_photo: string (required)
    title: string (required)
    company_or_school: string (required)
    email: string 
    address: string
    linkedin_url: string
    github_url: string
    facebook_url: string
    google_plus_url: string
    wechat_qrcode: string    
    description: text
}
```

```
Job {
    id: integer (primary key, required)
    company: string (required)
    title: string (required)
    location: string
    start_time: datetime (required)
    end_time: datetime
    photo: string
    description: text
    person_id: integer (required, foreign key)
}
```

```
Education {
    id: integer (primary key, required)
    school: string (required)
    degree: string (required)
    major: string (required)
    location: string
    start_time: datetime (required)
    end_time: datetime
    GPA: decimal
    GPA_scale: decimal
    photo: string
    description: text
    person_id: integer (required, foreign key)
}
```

```
Honor {
    id: integer (primary key, required)
    name: string (required)
    time: datetime (required)
    granted_by: string
    location: string
    description: text
    person_id: integer (required, foreign key)
}
```

```
Project {
    id: integer (primary key, required)
    name: string (required)
    start_time: datetime (required)
    end_time: datetime
    description: text
    education_id: integer (foreign key)
    job_id: integer (foreign key)
}
```

```
Course {
    id: integer (primary key, required)
    name: string (required)
    description: text
    education_id: integer (foreign key)
}
```

```
Publication {
    id: integer (primary key, required)
    name: string (required)
    time: datetime (required)
    description: text
    person_id: integer (required, foreign key)
}
```

```
Interest {
    id: integer (primary key, required)
    name: string (required)
    description: text
    person_id: integer (required, foreign key)
}
```

```
Skill {
    id: integer (primary key, required)
    name: string (required)
    description: text
    person_id: integer (required, foreign key)
}
```

```
Language {
    id: integer (primary key, required)
    name: string (required)
    proficiency: string
    person_id: integer (required, foreign key)
}
```

```
Slide {
    id: integer (primary key, required)
    title: string (required)
    content: text
    background: string
}
```

##Deployment:

###1. Make sure you have already installed required softwares
  * Ruby
  * Rails
  * Passenger
  * GraphicsMagick

###2. Set up environment variables
  ```
  export RAILS_ENV=production
  export RAILS_SERVE_STATIC_FILES=true
  export SECRET_KEY_BASE=some random string
  ```
  Note that the "SECRET_KEY_BASE" should be a random long string. It is recommended to run "rails secret" to generate one.

###3. Prepare for the deployment
  * Install required gems by running
    ```
    bundle install
    ```
  * If you do not have a database, generate one by running
    ```
    rails db:schema:load
    ```
    If you already have a databse, update it by running
    ```
    rails db:migrate
    ```
  * Precompile assets by running
    ```
    rails assets:precompile
    ```

  * Config the server. You should create a file "Passengerfile.json" in this app's folder:
    ```
    {
        // Run the app in a production environment. The default value is "development".
        "environment": "production",
        // Run Passenger on port 80, the standard HTTP port.
        "port": 80,
        // Tell Passenger to daemonize into the background.
        "daemonize": true,
        // Tell Passenger to run the app as the given user. Only has effect
        // if Passenger was started with root privileges.
        "user": "YOUR USER NAME"
    }
    ```

###4. Start the server
  You can start server by running
  ```
  rvmsudo bundle exec passenger start
  ```
  
  Note that you need to input data into database for this app to work correctly.

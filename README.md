## Introduction

This project is Zijiang Yang's personal website www.zijiangyang.com

The website uses ruby on rails framework, runs under ruby 2.3.1.

It runs on a single server, using mysql as database software. 

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

## Deployment:

### 1. Make sure you have already installed required softwares
  * Ruby
  * Bundler
  * Passenger
  * GraphicsMagick
  * MySQL

### 2. Set up environment variables
  ```
  export RAILS_ENV=production
  export RAILS_SERVE_STATIC_FILES=true
  export SECRET_KEY_BASE=some random string
  export RAILS_MYSQL_USERNAME=mysql user name
  export RAILS_MYSQL_PASSWORD=mysql password
  export RAILS_MYSQL_SOCKET=mysql socket
  export RAILS_SMTP_ADDRESS=smtp server address
  export RAILS_SMTP_PORT=smtp server port number
  export RAILS_SMTP_DOMAIN=smtp server HELO domain
  export RAILS_SMTP_USER_NAME=smtp user name
  export RAILS_SMTP_PASSWORD=smtp password
  export RECAPTCHA_SECRET_KEY=your recaptcha secret key
  ```
  Note that the "SECRET_KEY_BASE" should be a random long string. It is recommended to run "bundle exec rake secret" to generate one.

### 3. Prepare for the deployment
  * Install required gems by running
    ```
    bundle install --deployment --without development test
    ```
  * Create a database named "personal_website" in your mysql database. See mysql documentations for details.
  * Compile assets and migrate database by running
    ```
    bundle exec rake assets:precompile db:migrate RAILS_ENV=production
    ```

### 4. Deploy
  Follow instructions in https://www.phusionpassenger.com/library/walkthroughs/deploy/ruby/ to deploy the passenger server.

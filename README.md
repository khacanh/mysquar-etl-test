== README

### How to start the server
```
bundle install
rake db:create
rake db:migrate
rails server
```

After that you can make a request to the server: `curl http://localhost:3000/home/index`

Run `tail -f log/development.log` to see the server log in json format. Log will look like below: 
```
{"method":"GET","path":"/home/index","format":"html","controller":"home","action":"index","status":200,"duration":0.29,"view":0.15,"db":0.0,"time":"2016-01-20 15:48:59 +0700","user_agent":"Mozilla/5.0 (Macintosh; Intel Mac OS X 10.9; rv:43.0) Gecko/20100101 Firefox/43.0","params":{"controller":"home","action":"index"}}
```

### Requirements
1. Write a script to stream the log to a BigQuery dataset
2. You can write the script in any language you want, eg Python, Ruby... Or event use an existing log streaming solution
3. https://cloud.google.com/bigquery/

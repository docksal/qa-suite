# QA Suite 

QA suite for running automated tests on websites, powered by Docksal.  

Features:

- [Behat 3.x](https://github.com/Behat/Behat)
- [BackstopJS 2.x](https://github.com/garris/BackstopJS)
- [PhantomJS](http://phantomjs.org/), [SlimerJS](https://slimerjs.org/) (with Firefox ESR), [CasperJS](http://casperjs.org/)


## Setup instructions

### Step #1: Docksal environment setup

**This is a one time setup - skip this if you already have a working Docksal environment.**  

Follow [Docksal environment setup instructions](https://docs.docksal.io/getting-started/setup/)

   
### Step #2: Project setup

1. Clone this repo into your Projects directory

    ```
    git clone git@github.com:docksal/qa-suite.git qa-suite
    cd qa-suite
    ```

2. Initialize the stack

    ```
    fin init
    ```
    
    Make sure to follow on-screen directions.

## Usage

### Behat

Run all features under `tests/behat/features`

```
fin behat
```

Run a particular feature

```
fin behat features/blackbox.feature
```


### BackstopJS

1. Take reference screenshots
    
    ```
    fin backstop reference --config=backstop-example.json
    ```

2. Take test screenshots and compare

    ```
    fin backstop test --config=backstop-example.json
    ```

By default, BackstopJS is using PhantomJS to take screenshots.  
You can also use SlimerJS/Firefox by setting `"engine": "slimerjs"` 
in the [configuration file](tests/backstop/backstop-example.json).

## Pre-configured sample commands 

Pre-configured commands are in `.docksal/commands`.   
They can be used as shortcuts/alternative to typing long lists of arguments every time.

Run sample BDD (behavior-driven development) tests with Behat

```
fin behat-example
```

Open http://qa-suite.docksal/tests/behat/reports/html/

Run sample VRT (visual regression testing) tests with BackstopJS

```
fin backstop-example
```

Open http://qa-suite.docksal/tests/backstop/data/example/reports/html/


## Debugging

For tests that utilize Chrome/Firefox via Selenium (`@javascript` tests), you can watch the browser in real time 
inside the container with [VNC Viewer](https://www.realvnc.com/en/connect/download/viewer/).  

Connect to `192.168.64.100:5900`, password: `secret`.

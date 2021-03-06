# 7dtdserver Cookbook

This cookbook installs and configures a 7 Days to Die server.

## Installation

CentOS 7:

```bash
run the default recipe
```

## Usage example

This cookbook installs and configures a 7 Days to Die server.

### Attributes
In order to keep the README manageable and in sync with the attributes, this cookbook documents attributes inline. The usage instructions and default values for attributes can be found in the individual attribute files.

## Development setup

Use Kitchen for integration testing.

```bash
kitchen test
```

## Release History
* 1.2.0
    * update vault to manage multiple credentials
    * add ability to manage controlpanel settings
* 1.1.0
    * add chef vault functionality to manage credentials
* 1.0.2
    * resolve server connection issue
* 1.0.1
    * resolve server starting issue
* 1.0.0
    * first release
* 0.1.0
    * first commit

## Meta

|branch|travis-ci status|
|------|----------------|
|*dev*|![dev status](https://travis-ci.org/gryte/7dtdserver.svg?branch=dev)|
|*test*|![test status](https://travis-ci.org/gryte/7dtdserver.svg?branch=test)|
|*master*|![master status](https://travis-ci.org/gryte/7dtdserver.svg?branch=master)|

Adam Linkous – [@gryte_meowmix](https://twitter.com/gryte_meowmix) – alinkous+support@gmail.com

Distributed under the MIT license. See ``LICENSE`` for more information.

[https://github.com/gryte/7dtdserver](https://github.com/gryte/7dtdserver)

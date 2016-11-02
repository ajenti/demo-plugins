Ajenti demo plugins
===================

This repository contains simple commented examples of Ajenti plugins.

Quickstart:

```
git clone https://github.com/ajenti/demo-plugins.git
cd demo-plugins

sudo npm install -g babel babel-preset-es2015 less bower
sudo pip install ajenti-panel ajenti-dev-multitool ajenti.plugin.core
ajenti-dev-multitool --bower install
ajenti-dev-multitool --build

sudo ajenti-panel -v --autologin --stock-plugins --plugins .
```

Demo 1: minimal
---------------

A super-minimal example of a plugin. Prints an info message to log.

  - [__init__.py](https://github.com/ajenti/demo-plugins/blob/master/demo_1_minimal/__init__.py#L2)
  - [plugin.yml](https://github.com/ajenti/demo-plugins/blob/master/demo_1_minimal/plugin.yml)

Demo 2: UI
----------

A minimal UI example showing a page and some Angular.JS interaction

  - [dependencies & resources](https://github.com/ajenti/demo-plugins/blob/master/demo_2_ui/plugin.yml#L10)
  - [sidebar item](https://github.com/ajenti/demo-plugins/blob/master/demo_2_ui/main.py#L6)
  - [JS code](https://github.com/ajenti/demo-plugins/blob/master/demo_2_ui/resources/module.es)
  - [view template](https://github.com/ajenti/demo-plugins/blob/master/demo_2_ui/resources/index.html)

Demo 3: Bower
-------------

Example of a plugin that includes a Bower component (Chart.JS).

Before running, download the component (not included): ``ajenti-dev-multitool --bower install``

  - [bower.json](https://github.com/ajenti/demo-plugins/blob/master/demo_3_bower/bower.json)
  - [including Bower files](https://github.com/ajenti/demo-plugins/blob/master/demo_3_bower/plugin.yml#L13)
  - [angular.js module dependency](https://github.com/ajenti/demo-plugins/blob/master/demo_3_bower/resources/js/module.coffee#L4)

Demo 4: HTTP
------------

Example of how one can add custom backend API methods

  - [API views](https://github.com/ajenti/demo-plugins/blob/master/demo_4_http/views.py)
  - [client code](https://github.com/ajenti/demo-plugins/blob/master/demo_4_http/resources/js/controllers/index.controller.coffee#L8)

Demo 5: Dashboard Widget
------------------------

  - [widget backend code](https://github.com/ajenti/demo-plugins/blob/master/demo_5_widget/widget.py)
  - [widget template](https://github.com/ajenti/demo-plugins/blob/master/demo_5_widget/resources/partial/widget.html)
  - [widget conf dialog template](https://github.com/ajenti/demo-plugins/blob/master/demo_5_widget/resources/partial/widget.config.html)
  - [controllers](https://github.com/ajenti/demo-plugins/blob/master/demo_5_widget/resources/js/controllers/widget.controller.coffee)

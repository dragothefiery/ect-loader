# [ect](http://ectjs.com/)-loader
[ect](http://ectjs.com/) templates compiler for webpack

## Usage

[Documentation: Using loaders](http://webpack.github.io/docs/using-loaders.html)

### Example config

This webpack config can compile ect templates for you to use on your browser
without having to load `ECT` and `CoffeeScript` browser versions.

``` javascript
module.exports = {
  module: {
    loaders: [
      { test: /\.ect$/, loader: "ect?paramsPassedToTemplateHere" }
    ]
  }
};
```
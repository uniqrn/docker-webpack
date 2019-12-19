# docker-webpack
simple webpack tool image for Javascript build. 

[Webpack CLI & some loaders](https://github.com/uniqrn/docker-webpack/blob/master/package.json) are available out of the box. 
npm is set up to refer them, but webpack doesn't respect node module path. So, you need to include [resolve](https://webpack.js.org/configuration/resolve/) and [resolveLoader](https://webpack.js.org/configuration/resolve/#resolveloader) settings as bellows.

```webpack.config.js
module.exports = {
  resolve: {
    modules: [ process.env.NODE_PATH, "node_modules" ]
  },
  resolveLoader: {
    modules: [ process.env.NODE_PATH, "node_modules" ]
  },
...
```

Workdir is set to /opt. You can run build at project top directory.

```
docker run -it --rm -v `pwd`:/opt uniqrn/webpack webpack --config webpack.config.js
```

## customize

Adding loaders to package.json and `docker build`, you can extend webpack functionality.

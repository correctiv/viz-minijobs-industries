# viz-minijobs-industries

Display minijobs data about industries

[Preview via gh-pages](https://correctiv.github.io/viz-minijobs-industries/dist/)

Based on [wbkd/yet-another-webpack-es6-starterkit](https://github.com/wbkd/yet-another-webpack-es6-starterkit)

Uses [d3](https://d3js.org) and [riotjs](https://riotjs.com)

## base visualization setup for correctiv cms

### javascript

```
dist/bundle.js
```

### styles

```
dist/styles/bundle.css
```

## for use in correctiv cms plugins:

### main grouped bars

```html
<figure class="figure -paragraph-width">
  <div class="figure__container">
    <h2>In diesen Branchen arbeiten die meisten Minijobber</h2>
    <div data-riot-mount="cor-mj-industries-main"></div>
  </div>
</figure>
```

### small multiple stacked bars table

```html
<figure class="figure -full-width">
  <div class="figure__container">
    <h2>Die Branchen im Vergleich</h2>
    <div data-riot-mount="cor-mj-industries-small-multiples"></div>
  </div>
</figure>
```

## Development

### Installation

```
npm install
```

### Start Dev Server

```
npm run dev
```

### Build Prod Version

```
npm run build
```

### Features:

* ES6 Support via [babel-loader](https://github.com/babel/babel-loader)
* SASS Support via [sass-loader](https://github.com/jtangelder/sass-loader)
* Linting via [eslint-loader](https://github.com/MoOx/eslint-loader)
* Hot Module Replacement

When you run `npm run build` we use the [extract-text-webpack-plugin](https://github.com/webpack/extract-text-webpack-plugin) to move the css to a separate file and included in the head of your `index.html`, so that the styles are applied before any javascript gets loaded. We disabled this function for the dev version, because the loader doesn't support hot module replacement.

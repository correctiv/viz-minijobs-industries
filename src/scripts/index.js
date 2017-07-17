'use strict'

if (module.hot) {
  module.hot.accept()
}

// import 'babel-polyfill'
import '../styles/index.scss'

// mixins
import getClass from './mixins/class_name.js'
riot.mixin(getClass('mjid'))

// mount vizes
import '../components/industries-main.tag'
import '../components/industries-small-multiples.tag'

const mount = (name) => {
  const selector = `[data-riot-mount="${name}"]`
  riot.mount(selector, name)
}

mount('cor-mj-industries-main')
mount('cor-mj-industries-small-multiples')

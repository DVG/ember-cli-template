`import Ember from 'ember';`
`import Application from '../../app';`
`import Router from '../../router';`
`import config from '../../config/environment';`

startApp = function startApp(attrs) {
  App = null
  attributes = Ember.merge({}, config.APP)
  attributes = Ember.merge(attributes, attrs) # use defaults, but you can override;
  Ember.run ->
    App = Application.create(attributes)
    App.setupForTesting()
    App.injectTestHelpers()
  return App;

`export default startApp()`

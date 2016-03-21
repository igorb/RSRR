{ createStore, applyMiddleware, compose } = require 'redux'
ReduxThunk = require('redux-thunk').default
rootReducer = require '../reducers/index.coffee'

createStoreWithMiddleware = compose(
  applyMiddleware(ReduxThunk),
  if window.devToolsExtension then window.devToolsExtension() else (f) -> f
)(createStore)

configureStore = (initialState) ->
  createStoreWithMiddleware(rootReducer, initialState)

module.exports = configureStore

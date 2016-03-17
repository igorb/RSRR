React = require 'react'
{ Component } = React
{ render } = require 'react-dom'
{ Provider } = require 'react-redux'
CounterApp = require './CounterApp.coffee'
configureStore = require '../store/configureStore.coffee'
{ setCounter } = require '../actions/counter.coffee'

store = configureStore()

class Root extends Component
  componentWillMount: ->
    store.dispatch setCounter(@props.counter)

  render: ->
    <Provider store={store}>
      <CounterApp />
    </Provider>

module.exports = Root

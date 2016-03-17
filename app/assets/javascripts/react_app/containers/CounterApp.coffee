{ bindActionCreators } = require 'redux'
{ connect } = require 'react-redux'
Counter = require '../components/Counter.coffee'
CounterActions = require '../actions/counter.coffee'

mapStateToProps = (state) ->
  counter: state.counter
mapDispatchToProps = (dispatch) ->
  bindActionCreators CounterActions, dispatch

module.exports = connect(mapStateToProps, mapDispatchToProps)(Counter)

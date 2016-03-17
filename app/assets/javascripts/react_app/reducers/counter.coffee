{
  INCREMENT_COUNTER, DECREMENT_COUNTER, SET_COUNTER
} = require '../constants/counter.coffee'

counter = (state = 0, action) ->
  switch action.type
    when INCREMENT_COUNTER
      return state + 1
    when DECREMENT_COUNTER
      return state - 1
    when SET_COUNTER
      return action.counter
    else
      return state

module.exports = counter

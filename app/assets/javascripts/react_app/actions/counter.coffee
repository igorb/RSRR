{
  INCREMENT_COUNTER
  DECREMENT_COUNTER
  SET_COUNTER
} = require '../constants/counter.coffee'

module.exports = CounterActions =
  setCounter: (counter) ->
    {
      type: SET_COUNTER
      counter: counter
    }

  increment: ->
    { type: INCREMENT_COUNTER }

  decrement: ->
    { type: DECREMENT_COUNTER }

  incrementIfOdd: ->
    return (dispatch, getState) ->
      { counter } = getState()
      if counter % 2 == 0
        return
      dispatch CounterActions.increment()

  incrementAsync: (delay = 1000) ->
    return (dispatch) ->
      setTimeout (->
        dispatch CounterActions.increment()
      ), delay

React = require 'react'
{ Component, PropTypes } = React

class Counter extends Component
  @propTypes =
    increment         : PropTypes.func.isRequired
    incrementIfOdd    : PropTypes.func.isRequired
    incrementAsync    : PropTypes.func.isRequired
    decrement         : PropTypes.func.isRequired
    counter           : PropTypes.number.isRequired

  render: ->
    { increment, incrementIfOdd, incrementAsync, decrement, counter } = @props
    return <p>
        Clicked: {counter} times
        {' '}
        <button onClick={increment}>+</button>
        {' '}
        <button onClick={decrement}>-</button>
        {' '}
        <button onClick={incrementIfOdd}>Increment if odd</button>
        {' '}
        <button onClick={() => incrementAsync()}>Increment async</button>
      </p>

module.exports = Counter

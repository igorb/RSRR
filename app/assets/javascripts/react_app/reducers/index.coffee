{ combineReducers } = require 'redux'
counter             = require './counter.coffee'

rootReducer = combineReducers counter: counter

module.exports = rootReducer

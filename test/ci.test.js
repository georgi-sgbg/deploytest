var test = require('tape')
const sayHello = require('../src/Hello').sayHello

test('Hello is returned', (assert) => {
  assert.equal(sayHello(), 'Hello World', 'hello')
  assert.end()
})

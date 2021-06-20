var assert = require('assert'); // assert 中有一些断言，如equal 相等的断言
import {add, mul} from './../index.js'
describe("add func testing", function() {
  it(' 1 + 2 should be 3', function() {
    assert.equal(add(1, 2), 3);
  });
  
  it("-5 + 2 should be -3", function() {
    assert.equal(add(-5, 2), -3);
  })
})

describe("mul func testing", function() {
  it(' 1 * 2 should be 2', function() {
    assert.equal(mul(1, 2), 2);
  });
  
  it("-5 * 2 should be -10", function() {
    assert.equal(mul(-5, 2), -10);
  })
})


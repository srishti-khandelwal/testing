const assert = require('chai').assert;
//const addNumbers = require('../app').addNumbers;

//const sayHello = require('../app').sayHello;
const app = require('../app');

describe('App', function() {
	describe("first", function(){
		it('sayHello should return hello', function(){
			let result = app.sayHello();
			assert.equal(result,"hello");
		});

		it('sayHello should return type string', function(){
			let result = app.sayHello();
			assert.typeOf(result, 'string');
		});
	});
	
	describe("second", function(){
		it('addNumbers should return value above 5',function(){
			let res = app.addNumbers(5,1);
			assert.isAbove(res, 5);
		});
	});
	
})
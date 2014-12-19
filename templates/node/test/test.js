var expect = require('chai').expect;

describe('test', function(){

	describe('#sync()', function(){
		it('test sync function successfully', function(){
			expect(1).to.be.equal(1);
		})
	});

	describe('#async()', function(){
		it('test async function successfully', function(done){
			expect(1).to.be.equal(1);
			done();
		})
	});
})

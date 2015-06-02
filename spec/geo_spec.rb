require 'spec_helper'

describe 'Calulate length test 1' do	
	 before :each do 
	 	@line = Line.new
	 end

	 it "return 5 for values (2,3) and (5,7)" do
	 		@line.set(2,3,5,7)
	 		expect(@line.length).to eq(5)
	 end
	 it "return 0 for values (1,1) and (1,1)" do
	 		@line.set(1,1,1,1)
	 		expect(@line.length).to eq(0)
	 end
end
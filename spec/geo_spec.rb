require 'spec_helper'

describe 'Calulate length test 1' do	

	 it "return 5 for values (2,3) and (5,7)" do
	 		@line = Line.new(2,3,5,7)
	 		expect(@line.length).to eq(5)
	 end

	 it "return 0 for values (1,1) and (1,1)" do
	 		@line = Line.new(1,1,1,1)
	 		expect(@line.length).to eq(0)
	 end
end
require 'spec_helper'

describe Picciotto.controllers do
	it "should get home page" do
		get '/'
		last_response.should be_ok
	end
end

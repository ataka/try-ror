require 'spec_helper'

describe Post do
  before do
    @post = Post.new
  end

  context "#name" do
    it { should_not be_valid }
    it { should have(1).errors_on(:name) }
  end

  context "#title" do
    it { should_not be_valid }

    # requires 'shoulda matchers'
    # it { should ensure_length_of(:title).is_at_least(5) }
  end
end

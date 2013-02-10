# -*- coding: utf-8 -*-
require 'spec_helper'

describe Post, "#name が設定されていない場合:" do
  before do
    @post = Post.new
  end

  it "バリデーションに失敗すること" do
    @post.should_not be_valid
  end

  it ":name にエラーが設定されていること" do
    @post.should have(1).errors_on(:name)
  end
end

describe Post, "#title が設定されていない場合:" do
  before do
    @post = Post.new
  end

  it "バリデーションに失敗すること" do
    @post.should_not be_valid
  end

  # requires 'shoulda matchers'
  # it { should ensure_length_of(:title).is_at_least(8) }
end

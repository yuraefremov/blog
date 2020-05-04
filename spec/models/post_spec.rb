require 'rails_helper'

RSpec.describe Post, type: :model  do
  context "validation test" do
    it "enscures title is present" do
      post = Post.new(body: "Test body", summary: "Test summary")
      expect(post.valid?).to eq(false)
    end

    it "enscures summary is present" do
      post = Post.new(title: "Test title", body: "Test body")
      expect(post.valid?).to eq(false)
    end

    it "enscures body is present" do
      post = Post.new(title: "Test title", summary: "Test summary")
      expect(post.valid?).to eq(false)
    end

    it "enscures post is active by default" do
      post = Post.new(title: "Test title", summary: "Test summary", body: "Test body")
      expect(post.valid?).to eq(false)
    end
  end
  
end
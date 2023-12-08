# frozen_string_literal: true
require 'rails_helper'

RSpec.describe QuestionsController, type: :controller do
  describe "GET #index" do
    it "rendering page" do
      get :index
      expect(response).to render_template(:index)
    end
    it "assigns question" do
      question.create(body: "How are u?", user_id: 1)
      get :index
      expect(assigns(:question)).to eq([question])
    end
    it "Assigns a new question to the questions" do
      get :index
      expect(assigns(:question)).to be_a_new(Question)
    end

  end

  describe "GET #show" do
    it "assigns question" do
      question = Question.create(body: "how u doin?", user_id: 1)
      get :show, params: {id: question.id}
      expect(assigns(:question)).to eq(question)
    end
    it "assigns @question" do
      question = Question.create
    end
  end

end
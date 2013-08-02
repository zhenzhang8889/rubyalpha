require 'test_helper'

class KnowledgesControllerTest < ActionController::TestCase
  setup do
    @knowledge = knowledges(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:knowledges)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create knowledge" do
    assert_difference('Knowledge.count') do
      post :create, knowledge: { author: @knowledge.author, companies: @knowledge.companies, date_created: @knowledge.date_created, description: @knowledge.description, eidts: @knowledge.eidts, notes: @knowledge.notes, product: @knowledge.product, related_articles: @knowledge.related_articles, related_devices: @knowledge.related_devices, related_tickets: @knowledge.related_tickets, screenshots: @knowledge.screenshots, software: @knowledge.software, topic: @knowledge.topic, videos: @knowledge.videos }
    end

    assert_redirected_to knowledge_path(assigns(:knowledge))
  end

  test "should show knowledge" do
    get :show, id: @knowledge
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @knowledge
    assert_response :success
  end

  test "should update knowledge" do
    put :update, id: @knowledge, knowledge: { author: @knowledge.author, companies: @knowledge.companies, date_created: @knowledge.date_created, description: @knowledge.description, eidts: @knowledge.eidts, notes: @knowledge.notes, product: @knowledge.product, related_articles: @knowledge.related_articles, related_devices: @knowledge.related_devices, related_tickets: @knowledge.related_tickets, screenshots: @knowledge.screenshots, software: @knowledge.software, topic: @knowledge.topic, videos: @knowledge.videos }
    assert_redirected_to knowledge_path(assigns(:knowledge))
  end

  test "should destroy knowledge" do
    assert_difference('Knowledge.count', -1) do
      delete :destroy, id: @knowledge
    end

    assert_redirected_to knowledges_path
  end
end

require 'test_helper'

class EquipmentControllerTest < ActionController::TestCase
  setup do
    @equipment = equipment(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:equipment)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create equipment" do
    assert_difference('Equipment.count') do
      post :create, equipment: { amplifier_name: @equipment.amplifier_name, bass: @equipment.bass, category: @equipment.category, faders: @equipment.faders, guitar: @equipment.guitar, house_outputs: @equipment.house_outputs, inputs: @equipment.inputs, keyboard: @equipment.keyboard, microphone_name: @equipment.microphone_name, mixer_name: @equipment.mixer_name, monitor_outputs: @equipment.monitor_outputs, others: @equipment.others, peak: @equipment.peak, rent_price: @equipment.rent_price, speaker_name: @equipment.speaker_name, watts: @equipment.watts, wired: @equipment.wired, wireless: @equipment.wireless, woofer_size: @equipment.woofer_size }
    end

    assert_redirected_to equipment_path(assigns(:equipment))
  end

  test "should show equipment" do
    get :show, id: @equipment
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @equipment
    assert_response :success
  end

  test "should update equipment" do
    patch :update, id: @equipment, equipment: { amplifier_name: @equipment.amplifier_name, bass: @equipment.bass, category: @equipment.category, faders: @equipment.faders, guitar: @equipment.guitar, house_outputs: @equipment.house_outputs, inputs: @equipment.inputs, keyboard: @equipment.keyboard, microphone_name: @equipment.microphone_name, mixer_name: @equipment.mixer_name, monitor_outputs: @equipment.monitor_outputs, others: @equipment.others, peak: @equipment.peak, rent_price: @equipment.rent_price, speaker_name: @equipment.speaker_name, watts: @equipment.watts, wired: @equipment.wired, wireless: @equipment.wireless, woofer_size: @equipment.woofer_size }
    assert_redirected_to equipment_path(assigns(:equipment))
  end

  test "should destroy equipment" do
    assert_difference('Equipment.count', -1) do
      delete :destroy, id: @equipment
    end

    assert_redirected_to equipment_index_path
  end
end

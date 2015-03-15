require 'test_helper'

class MembersControllerTest < ActionController::TestCase
  setup do
    @member = members(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:members)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create member" do
    assert_difference('Member.count') do
      post :create, member: { city: @member.city, country: @member.country, dob: @member.dob, email: @member.email, housenumber: @member.housenumber, membership_function: @member.membership_function, membership_status: @member.membership_status, membership_type: @member.membership_type, membershipin_date: @member.membershipin_date, membershipout: @member.membershipout, name: @member.name, phone: @member.phone, street: @member.street, surname: @member.surname, zip: @member.zip }
    end

    assert_redirected_to member_path(assigns(:member))
  end

  test "should show member" do
    get :show, id: @member
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @member
    assert_response :success
  end

  test "should update member" do
    patch :update, id: @member, member: { city: @member.city, country: @member.country, dob: @member.dob, email: @member.email, housenumber: @member.housenumber, membership_function: @member.membership_function, membership_status: @member.membership_status, membership_type: @member.membership_type, membershipin_date: @member.membershipin_date, membershipout: @member.membershipout, name: @member.name, phone: @member.phone, street: @member.street, surname: @member.surname, zip: @member.zip }
    assert_redirected_to member_path(assigns(:member))
  end

  test "should destroy member" do
    assert_difference('Member.count', -1) do
      delete :destroy, id: @member
    end

    assert_redirected_to members_path
  end
end

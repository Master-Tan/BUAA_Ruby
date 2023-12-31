require "application_system_test_case"

class TransactionOrdersTest < ApplicationSystemTestCase
  setup do
    @transaction_order = transaction_orders(:one)
  end

  test "visiting the index" do
    visit transaction_orders_url
    assert_selector "h1", text: "Transaction orders"
  end

  test "should create transaction order" do
    visit transaction_orders_url
    click_on "New transaction order"

    fill_in "Added time", with: @transaction_order.added_time
    fill_in "Delivery address", with: @transaction_order.delivery_address
    fill_in "Delivery money", with: @transaction_order.delivery_money
    fill_in "Delivery phone", with: @transaction_order.delivery_phone
    fill_in "Discount money", with: @transaction_order.discount_money
    fill_in "Order status", with: @transaction_order.order_status
    fill_in "Packing money", with: @transaction_order.packing_money
    fill_in "Pay money", with: @transaction_order.pay_money
    fill_in "Shop", with: @transaction_order.shop_id
    fill_in "User", with: @transaction_order.user_id
    click_on "Create Transaction order"

    assert_text "Transaction order was successfully created"
    click_on "Back"
  end

  test "should update Transaction order" do
    visit transaction_order_url(@transaction_order)
    click_on "Edit this transaction order", match: :first

    fill_in "Added time", with: @transaction_order.added_time
    fill_in "Delivery address", with: @transaction_order.delivery_address
    fill_in "Delivery money", with: @transaction_order.delivery_money
    fill_in "Delivery phone", with: @transaction_order.delivery_phone
    fill_in "Discount money", with: @transaction_order.discount_money
    fill_in "Order status", with: @transaction_order.order_status
    fill_in "Packing money", with: @transaction_order.packing_money
    fill_in "Pay money", with: @transaction_order.pay_money
    fill_in "Shop", with: @transaction_order.shop_id
    fill_in "User", with: @transaction_order.user_id
    click_on "Update Transaction order"

    assert_text "Transaction order was successfully updated"
    click_on "Back"
  end

  test "should destroy Transaction order" do
    visit transaction_order_url(@transaction_order)
    click_on "Destroy this transaction order", match: :first

    assert_text "Transaction order was successfully destroyed"
  end
end

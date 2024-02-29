defmodule ServerWeb.MarketControllerTest do
  use ServerWeb.ConnCase, async: true

  test "should create market successfully", %{conn: conn} do
    conn =
      post(conn, ~p"/api/market", %{
        "name" => "market1",
        "location" => "location1",
        "address" => "address1",
        "image" => "image1"
      })

    assert json_response(conn, 201) == %{}
  end

  test "should list all markets correctly", %{conn: conn} do
    conn = get(conn, ~p"/api/market")

    assert json_response(conn, 200) == [
             %{
               "id" => 1,
               "name" => "market1",
               "location" => "location1",
               "address" => "address1",
               "image" => "image1",
               "description" => nil
             }
           ]
  end

  test "should give error when trying to create market with invalid data", %{conn: conn} do
    conn =
      post(conn, ~p"/api/market", %{
        "name" => "market1",
        "location" => "location1",
        "address" => "address1"
      })

    assert json_response(conn, 400) == %{
             "errors" => %{}
           }
  end
end

defmodule ServerWeb.ItemsControllerTest do
  use ServerWeb.ConnCase, async: true

  @valid_query_string "?leite%20nestlé&lat=-23.5505199&lng=-46.63330939999999"

  test "should have no items", %{conn: conn} do
    conn = get(conn, ~p"/api/item${@valid_query_string}")

    assert json_response(conn, 200) == []
  end

  test "should list all items correctly with given location", %{conn: conn} do
    conn = get(conn, ~p"/api/item#{@valid_query_string}")

    assert json_response(conn, 200) == [
             %{
               "id" => 1,
               "name" => "item1",
               "image" => "image1",
               "description" => "description1",
               "price" => 1.0,
               "market" => %{
                 "id" => 1,
                 "name" => "market1",
                 "location" => "location1",
                 "address" => "address1",
                 "image" => "image1",
                 "description" => "description1"
               }
             },
             %{
               "id" => 2,
               "name" => "item2",
               "code_bar" => "code2",
               "price" => 2.0,
               "market" => %{
                 "id" => 1,
                 "name" => "market1",
                 "location" => "location1",
                 "address" => "address1",
                 "image" => "image1",
                 "description" => "description1"
               }
             }
           ]
  end
end

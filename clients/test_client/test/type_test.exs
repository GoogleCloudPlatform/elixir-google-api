# Copyright 2018 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the &quot;License&quot;);
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an &quot;AS IS&quot; BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

defmodule Gax.TypeTest do
  use ExUnit.Case, async: true

  alias GoogleApi.TestClient.V1.Model.{
    Container,
    ContainerObjectVal,
    DateContainer,
    GenericContainer,
    NestedContainer
  }

  test "decodes strings" do
    json = """
    {
      "stringVal": "some string"
    }
    """

    assert {:ok, container} = Poison.decode(json, as: %Container{})
    assert "some string" == container.stringVal
  end

  test "decodes booleans" do
    json = """
    {
      "booleanVal": true
    }
    """

    assert {:ok, container} = Poison.decode(json, as: %Container{})
    assert true == container.booleanVal
  end

  test "decodes simple arrays" do
    json = """
    {
      "arrayVal": [
        "foo",
        "bar"
      ]
    }
    """

    assert {:ok, container} = Poison.decode(json, as: %Container{})
    assert ["foo", "bar"] == container.arrayVal
  end

  test "decodes array of reference objects" do
    json = """
    {
      "arrayRefVal": [
        {
          "stringVal": "obj1"
        },
        {
          "stringVal": "obj2"
        }
      ]
    }
    """

    assert {:ok, container} = Poison.decode(json, as: %Container{})
    assert 2 == Enum.count(container.arrayRefVal)

    assert ["obj1", "obj2"] ==
             Enum.map(container.arrayRefVal, fn c ->
               assert %Container{} = c
               c.stringVal
             end)
  end

  test "decodes integers" do
    json = """
    {
      "numberVal": 1234
    }
    """

    assert {:ok, container} = Poison.decode(json, as: %Container{})
    assert 1234 == container.numberVal
  end

  test "decodes floats" do
    json = """
    {
      "numberVal": 12.34
    }
    """

    assert {:ok, container} = Poison.decode(json, as: %Container{})
    assert 12.34 == container.numberVal
  end

  test "decodes object ref" do
    json = """
    {
      "objectRefVal": {
        "stringVal": "inner field"
      }
    }
    """

    assert {:ok, container} = Poison.decode(json, as: %Container{})
    assert %Container{stringVal: "inner field"} = container.objectRefVal
  end

  test "decodes inline defined objects" do
    json = """
    {
      "objectVal": {
        "field1": "inner field"
      }
    }
    """

    assert {:ok, container} = Poison.decode(json, as: %Container{})
    assert %ContainerObjectVal{field1: "inner field"} = container.objectVal
  end

  test "decodes a date-time value" do
    json = """
    {
      "dateTimeVal": "1985-04-12T23:20:50.52Z"
    }
    """

    assert {:ok, container} = Poison.decode(json, as: %DateContainer{})
    assert %DateTime{} = container.dateTimeVal
  end

  test "decodes a date value" do
    json = """
    {
      "dateVal": "2018-06-15"
    }
    """

    assert {:ok, container} = Poison.decode(json, as: %DateContainer{})
    assert %Date{} = container.dateVal
  end

  test "decodes a google date-time value" do
    json = """
    {
      "googleDateVal": "2014-10-02T15:01:23.045123456Z"
    }
    """

    assert {:ok, container} = Poison.decode(json, as: %DateContainer{})
    assert %DateTime{} = container.googleDateVal
  end

  test "decodes any type - int" do
    json = """
    {
      "any": 1234
    }
    """

    assert {:ok, container} = Poison.decode(json, as: %GenericContainer{})
    assert 1234 == container.any
  end

  test "decodes any type - array" do
    json = """
    {
      "any": ["dog", "cat"]
    }
    """

    assert {:ok, container} = Poison.decode(json, as: %GenericContainer{})
    assert ["dog", "cat"] == container.any
  end

  test "decodes any type - object" do
    json = """
    {
      "any": {
        "foo": "bar",
        "categories": ["dog", "cat"]
      }
    }
    """

    assert {:ok, container} = Poison.decode(json, as: %GenericContainer{})
    assert %{"foo" => "bar", "categories" => ["dog", "cat"]} == container.any
  end

  test "decodes list of any - string" do
    json = """
    {
      "listOfAny": [
        "dog",
        "cat"
      ]
    }
    """

    assert {:ok, container} = Poison.decode(json, as: %GenericContainer{})
    assert ["dog", "cat"] == container.listOfAny
  end

  test "decodes list of any - object" do
    json = """
    {
      "listOfAny": [
        {
          "foo": "bar",
          "categories": ["dog", "cat"]
        },
        {
          "foo": "asdf",
          "categories": ["bird", "reptile"]
        }
      ]
    }
    """

    assert {:ok, container} = Poison.decode(json, as: %GenericContainer{})

    assert [
             %{"foo" => "bar", "categories" => ["dog", "cat"]},
             %{"foo" => "asdf", "categories" => ["bird", "reptile"]}
           ] == container.listOfAny
  end

  test "decodes list of any - mixed" do
    json = """
    {
      "listOfAny": [
        "dog",
        {
          "foo": "asdf",
          "categories": ["bird", "reptile"]
        }
      ]
    }
    """

    assert {:ok, container} = Poison.decode(json, as: %GenericContainer{})
    assert ["dog", %{"foo" => "asdf", "categories" => ["bird", "reptile"]}] == container.listOfAny
  end

  test "decodes map of anything" do
    json = """
    {
      "attributes": {
        "foo": "bar",
        "asdf": 123
      }
    }
    """

    assert {:ok, container} = Poison.decode(json, as: %GenericContainer{})
    assert %{"asdf" => 123, "foo" => "bar"} = container.attributes
  end

  test "decodes map of refs" do
    json = """
    {
      "mapOfRefs": {
        "foo": {
          "stringVal": "some string"
        },
        "bar": {
          "booleanVal": false
        }
      }
    }
    """

    assert {:ok, container} = Poison.decode(json, as: %GenericContainer{})

    assert %{
             "foo" => %Container{stringVal: "some string"},
             "bar" => %Container{booleanVal: false}
           } = container.mapOfRefs
  end

  test "decodes deeply nested containers" do
    json = """
    {
      "rows": [
        [
          {
            "nestedArrayValue": [
              {"stringVal": "value1"},
              {"stringVal": "value2"}
            ]
          },
          {
            "nestedArrayValue": [
              {"stringVal": "value3"}
            ]
          }
        ],
        [
          {
            "nestedArrayValue": [
              {"stringVal": "value4"},
              {"stringVal": "value5"}
            ]
          },
          {
            "nestedArrayValue": [
              {"stringVal": "value6"}
            ]
          }
        ]
      ]
    }
    """

    assert {:ok, container} = Poison.decode(json, as: %NestedContainer{})

    assert %NestedContainer{rows: rows} = container
    assert 2 == Enum.count(rows)
    assert Enum.all?(rows, fn row ->
      assert 2 == Enum.count(row)
      # TODO: ensure this deeply nested struct is generated and decoded
    end)
  end
end

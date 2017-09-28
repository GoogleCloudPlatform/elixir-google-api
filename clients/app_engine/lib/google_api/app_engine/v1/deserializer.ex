# Copyright 2017 Google Inc.
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


# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule GoogleApi.AppEngine.V1.Deserializer do
  @moduledoc """
  Helper functions for deserializing responses into models
  """

  @doc """
  Update the provided model with a deserialization of a nested value
  """
  @spec deserialize(struct(), :atom, :atom, struct(), keyword()) :: struct()
  def deserialize(model, _field, :list, nil, _options), do: model
  def deserialize(model, field, :list, mod, options) do
    model
    |> Map.update!(field, &(Poison.Decode.decode(&1, Keyword.merge(options, [as: [struct(mod)]]))))
  end
  def deserialize(model, field, :struct, mod, options) do
    model
    |> Map.update!(field, &(Poison.Decode.decode(&1, Keyword.merge(options, [as: struct(mod)]))))
  end
  def deserialize(model, _field, :map, nil, _options), do: model
  def deserialize(model, field, :map, mod, options) do
    model
    |> Map.update!(field, &(Map.new(&1, fn {key, val} -> {key, Poison.Decode.decode(val, Keyword.merge(options, [as: struct(mod)]))} end)))
  end
  def deserialize(model, field, :date, _, _options) do
    case DateTime.from_iso8601(Map.get(model, field)) do
      {:ok, datetime} ->
        Map.put(model, field, datetime)
      _ ->
        model
    end
  end

  def serialize_non_nil(model, options) do
    model
    |> Map.from_struct
    |> Enum.filter(fn {_k, v} -> v != nil end)
    |> Enum.into(%{})
    |> Poison.Encoder.encode(options)
  end
end

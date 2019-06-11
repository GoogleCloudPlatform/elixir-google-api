# Copyright 2019 Google Inc.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

defmodule GoogleApis.Generator.ElixirGenerator.Parameter do
  @moduledoc """
  A parameter is an argument to an endpoint.
  """

  @type t :: %__MODULE__{
          :name => String.t(),
          :variable_name => String.t(),
          :description => String.t(),
          :type => Type.t(),
          :location => String.t()
        }

  defstruct [:name, :variable_name, :description, :type, :location]

  alias GoogleApi.Discovery.V1.Model.{JsonSchema, RestMethod}
  alias GoogleApis.Generator.ElixirGenerator.Type

  @doc """
  Parse a RestMethod's parameters and split into required and optional
  parameters.
  """
  @spec from_discovery_method(RestMethod.t()) :: {list(t), list(t)}
  def from_discovery_method(%RestMethod{parameters: nil, request: nil}), do: {[], []}

  def from_discovery_method(%RestMethod{parameters: nil, request: request}), do: {[], [body_param(request)]}

  def from_discovery_method(%RestMethod{parameters: parameters, parameterOrder: order, request: request}) do
    {required, optional} =
      parameters
      |> Enum.split_with(fn {_name, schema} ->
        schema.required
      end)

    required_by_name =
      Enum.reduce(required, %{}, fn {name, schema}, acc ->
        Map.put(acc, name, from_json_schema(name, schema))
      end)

    required = Enum.map(order || [], fn name -> required_by_name[name] end)
    optional = Enum.map(optional, fn {name, schema} -> from_json_schema(name, schema) end)

    optional = case request do
      nil -> optional
      _   -> add_body_param(optional, request)
    end
    {required, optional}
  end

  defp add_body_param(params, request) do
    List.insert_at(params, -1, body_param(request))
  end

  defp body_param(%{parameterName: nil} = request) do
    %__MODULE__{
      name: "body",
      variable_name: "body",
      description: "",
      type: Type.from_schema(request),
      location: "body"
    }
  end

  defp body_param(%{parameterName: name} = request) do
    %__MODULE__{
      name: name,
      variable_name: "body",
      description: "",
      type: Type.from_schema(request),
      location: "body"
    }
  end

  @doc """
  Build a Parameter from the parameter name and JsonSchema
  """
  @spec from_json_schema(String.t(), JsonSchema.t()) :: t
  def from_json_schema(name, schema) do
    %__MODULE__{
      name: name,
      variable_name: Macro.underscore(name),
      description: schema.description,
      type: Type.from_schema(schema),
      location: schema.location
    }
  end
end

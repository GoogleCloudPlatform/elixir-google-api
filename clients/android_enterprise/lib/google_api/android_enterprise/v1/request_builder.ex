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

defmodule GoogleApi.AndroidEnterprise.V1.RequestBuilder do
  @moduledoc """
  Helper functions for building Tesla requests
  """

  @doc """
  Specify the request method when building a request

  ## Parameters

  - request (Map) - Collected request options
  - m (String) - Request method

  ## Returns

  Map
  """
  @spec method(map(), String.t) :: map()
  def method(request, m) do
    Map.put_new(request, :method, m)
  end

  @doc """
  Specify the request method when building a request

  ## Parameters

  - request (Map) - Collected request options
  - u (String) - Request URL

  ## Returns

  Map
  """
  @spec url(map(), String.t) :: map()
  def url(request, u) do
    Map.put_new(request, :url, u)
  end

  @doc """
  Add optional parameters to the request

  ## Parameters

  - request (Map) - Collected request options
  - definitions (Map) - Map of parameter name to parameter location.
  - options (KeywordList) - The provided optional parameters

  ## Returns

  Map
  """
  @spec add_optional_params(map(), %{optional(:atom) => :atom}, keyword()) :: map()
  def add_optional_params(request, _, []), do: request
  def add_optional_params(request, definitions, [{key, value} | tail]) do
    case definitions do
      %{^key => location} ->
        request
        |> add_param(location, key, value)
        |> add_optional_params(definitions, tail)
      _ ->
        add_optional_params(request, definitions, tail)
    end
  end

  @doc """
  Add optional parameters to the request

  ## Parameters

  - request (Map) - Collected request options
  - location (atom) - Where to put the parameter
  - key (atom) - The name of the parameter
  - value (any) - The value of the parameter

  ## Returns

  Map
  """
  @spec add_param(map(), :atom, :atom, any()) :: map()
  def add_param(request, :body, :body, value), do: Map.put(request, :body, value)
  def add_param(request, :body, key, value) do
    request
    |> Map.put_new_lazy(:body, &Tesla.Multipart.new/0)
    |> Map.update!(:body, &(Tesla.Multipart.add_field(&1, key, Poison.encode!(value), headers: [{:"Content-Type", "application/json"}])))
  end
  def add_param(request, :file, name, path) do
    request
    |> Map.put_new_lazy(:body, &Tesla.Multipart.new/0)
    |> Map.update!(:body, &(Tesla.Multipart.add_file(&1, path, name: name)))
  end
  def add_param(request, :form, name, value) do
    request
    |> Map.update(:body, %{name => value}, &(Map.put(&1, name, value)))
  end
  def add_param(request, location, key, value) do
    Map.update(request, location, [{key, value}], &(&1 ++ [{key, value}]))
  end

  @doc """
  Handle the response for a Tesla request

  ## Parameters

  - env (Tesla.Env) - The response object
  - struct - The shape of the struct to deserialize into

  ## Returns

  {:ok, struct} on success
  {:error, info} on failure
  """
  @spec decode(Tesla.Env.t) :: {:ok, struct()} | {:error, Tesla.Env.t}
  def decode(%Tesla.Env{status: 200, body: body}), do: Poison.decode(body)
  def decode(response) do
    {:error, response}
  end
  @spec decode(Tesla.Env.t, struct()) :: {:ok, struct()} | {:error, Tesla.Env.t}
  def decode(%Tesla.Env{status: 200} = env, false), do: {:ok, env}
  def decode(%Tesla.Env{status: 200, body: body}, struct) do
    Poison.decode(body, as: struct)
  end
  def decode(response, _struct) do
    {:error, response}
  end
end

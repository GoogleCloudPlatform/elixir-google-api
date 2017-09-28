# Copyright 2017 Google Inc.
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

defmodule GoogleApis.ApiConfig do

  defstruct [:name, :version, :url, :discoveryRestUrl]

  def file(%{name: name, version: version}), do: "#{name}-#{version}.json"

  def google_spec_file(api_config) do
    Path.expand("./specifications/gdd/#{file(api_config)}")
  end

  def openapi_spec_file(api_config) do
    Path.expand("./specifications/openapi/#{file(api_config)}")
  end

  def config_file(api_config) do
    Path.expand("./specifications/config/#{file(api_config)}")
  end

  def app_name(%{name: name}) do
    Macro.underscore("GoogleApi#{name}")
  end

  def library_name(%{name: name}) do
    Macro.underscore(name)
  end

  def library_namespace(%{name: name} = api_config) do
    "GoogleApi.#{name}.#{module_version(api_config)}"
  end

  def module_version(%{version: version}) do
    version
    |> String.replace(".", "")
    |> String.capitalize
  end

  def load_all() do
    "./config/apis.json"
    |> Path.expand
    |> File.read!
    |> Poison.decode!(as: [%__MODULE__{}])
  end

  def load(name) do
    load_all()
    |> Enum.filter(fn (%__MODULE__{name: api_name}) -> api_name == name end)
  end

end

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

defmodule GoogleApi.AppEngine.V1.Model.Deployment do
  @moduledoc """
  Code and application artifacts used to deploy a version to App Engine.

  ## Attributes

  - container (ContainerInfo): The Docker image for the container that runs the version. Only applicable for instances running in the App Engine flexible environment. Defaults to: `null`.
  - files (Map[String, FileInfo]): Manifest of the files stored in Google Cloud Storage that are included as part of this version. All files must be readable using the credentials supplied with this call. Defaults to: `null`.
  - zip (ZipInfo): The zip file for this deployment, if this is a zip deployment. Defaults to: `null`.
  """

  defstruct [
    :"container",
    :"files",
    :"zip"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.AppEngine.V1.Model.Deployment do
  import GoogleApi.AppEngine.V1.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"container", :struct, GoogleApi.AppEngine.V1.Model.ContainerInfo, options)
    |> deserialize(:"files", :map, GoogleApi.AppEngine.V1.Model.FileInfo, options)
    |> deserialize(:"zip", :struct, GoogleApi.AppEngine.V1.Model.ZipInfo, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AppEngine.V1.Model.Deployment do
  def encode(value, options) do
    GoogleApi.AppEngine.V1.Deserializer.serialize_non_nil(value, options)
  end
end


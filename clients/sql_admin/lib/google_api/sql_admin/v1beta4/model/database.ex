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

defmodule GoogleApi.SQLAdmin.V1beta4.Model.Database do
  @moduledoc """
  A database resource inside a Cloud SQL instance.

  ## Attributes

  - charset (String): The MySQL charset value. Defaults to: `null`.
  - collation (String): The MySQL collation value. Defaults to: `null`.
  - etag (String): HTTP 1.1 Entity tag for the resource. Defaults to: `null`.
  - instance (String): The name of the Cloud SQL instance. This does not include the project ID. Defaults to: `null`.
  - kind (String): This is always sql#database. Defaults to: `null`.
  - name (String): The name of the database in the Cloud SQL instance. This does not include the project ID or instance name. Defaults to: `null`.
  - project (String): The project ID of the project containing the Cloud SQL database. The Google apps domain is prefixed if applicable. Defaults to: `null`.
  - selfLink (String): The URI of this resource. Defaults to: `null`.
  """

  defstruct [
    :"charset",
    :"collation",
    :"etag",
    :"instance",
    :"kind",
    :"name",
    :"project",
    :"selfLink"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.SQLAdmin.V1beta4.Model.Database do
  def decode(value, _options) do
    value
  end
end

defimpl Poison.Encoder, for: GoogleApi.SQLAdmin.V1beta4.Model.Database do
  def encode(value, options) do
    GoogleApi.SQLAdmin.V1beta4.Deserializer.serialize_non_nil(value, options)
  end
end


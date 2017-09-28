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

defmodule GoogleApi.AppEngine.V1.Model.OperationMetadataV1 do
  @moduledoc """
  Metadata for the given google.longrunning.Operation.

  ## Attributes

  - endTime (String): Time that this operation completed.@OutputOnly Defaults to: `null`.
  - ephemeralMessage (String): Ephemeral message that may change every time the operation is polled. @OutputOnly Defaults to: `null`.
  - insertTime (String): Time that this operation was created.@OutputOnly Defaults to: `null`.
  - method (String): API method that initiated this operation. Example: google.appengine.v1.Versions.CreateVersion.@OutputOnly Defaults to: `null`.
  - target (String): Name of the resource that this operation is acting on. Example: apps/myapp/services/default.@OutputOnly Defaults to: `null`.
  - user (String): User who requested this operation.@OutputOnly Defaults to: `null`.
  - warning (List[String]): Durable messages that persist on every operation poll. @OutputOnly Defaults to: `null`.
  """

  defstruct [
    :"endTime",
    :"ephemeralMessage",
    :"insertTime",
    :"method",
    :"target",
    :"user",
    :"warning"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.AppEngine.V1.Model.OperationMetadataV1 do
  def decode(value, _options) do
    value
  end
end

defimpl Poison.Encoder, for: GoogleApi.AppEngine.V1.Model.OperationMetadataV1 do
  def encode(value, options) do
    GoogleApi.AppEngine.V1.Deserializer.serialize_non_nil(value, options)
  end
end


# Copyright 2018 Google Inc.
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

defmodule GoogleApi.Firestore.V1beta1.Model.Value do
  @moduledoc """
  A message that can hold any of the supported value types.

  ## Attributes

  - arrayValue (ArrayValue): An array value.  Cannot contain another array value. Defaults to: `null`.
  - booleanValue (boolean()): A boolean value. Defaults to: `null`.
  - bytesValue (binary()): A bytes value.  Must not exceed 1 MiB - 89 bytes. Only the first 1,500 bytes are considered by queries. Defaults to: `null`.
  - doubleValue (float()): A double value. Defaults to: `null`.
  - geoPointValue (LatLng): A geo point value representing a point on the surface of Earth. Defaults to: `null`.
  - integerValue (String.t): An integer value. Defaults to: `null`.
  - mapValue (MapValue): A map value. Defaults to: `null`.
  - nullValue (String.t): A null value. Defaults to: `null`.
    - Enum - one of [NULL_VALUE]
  - referenceValue (String.t): A reference to a document. For example: &#x60;projects/{project_id}/databases/{database_id}/documents/{document_path}&#x60;. Defaults to: `null`.
  - stringValue (String.t): A string value.  The string, represented as UTF-8, must not exceed 1 MiB - 89 bytes. Only the first 1,500 bytes of the UTF-8 representation are considered by queries. Defaults to: `null`.
  - timestampValue (String.t): A timestamp value.  Precise only to microseconds. When stored, any additional precision is rounded down. Defaults to: `null`.
  """

  defstruct [
    :arrayValue,
    :booleanValue,
    :bytesValue,
    :doubleValue,
    :geoPointValue,
    :integerValue,
    :mapValue,
    :nullValue,
    :referenceValue,
    :stringValue,
    :timestampValue
  ]
end

defimpl Poison.Decoder, for: GoogleApi.Firestore.V1beta1.Model.Value do
  import GoogleApi.Firestore.V1beta1.Deserializer

  def decode(value, options) do
    value
    |> deserialize(:arrayValue, :struct, GoogleApi.Firestore.V1beta1.Model.ArrayValue, options)
    |> deserialize(:geoPointValue, :struct, GoogleApi.Firestore.V1beta1.Model.LatLng, options)
    |> deserialize(:mapValue, :struct, GoogleApi.Firestore.V1beta1.Model.MapValue, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Firestore.V1beta1.Model.Value do
  def encode(value, options) do
    GoogleApi.Firestore.V1beta1.Deserializer.serialize_non_nil(value, options)
  end
end

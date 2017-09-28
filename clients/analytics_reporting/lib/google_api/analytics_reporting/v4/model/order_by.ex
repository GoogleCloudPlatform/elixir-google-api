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

defmodule GoogleApi.AnalyticsReporting.V4.Model.OrderBy do
  @moduledoc """
  Specifies the sorting options.

  ## Attributes

  - fieldName (String): The field which to sort by. The default sort order is ascending. Example: &#x60;ga:browser&#x60;. Note, that you can only specify one field for sort here. For example, &#x60;ga:browser, ga:city&#x60; is not valid. Defaults to: `null`.
  - orderType (String): The order type. The default orderType is &#x60;VALUE&#x60;. Defaults to: `null`.
    - Enum - one of [ORDER_TYPE_UNSPECIFIED, VALUE, DELTA, SMART, HISTOGRAM_BUCKET, DIMENSION_AS_INTEGER]
  - sortOrder (String): The sorting order for the field. Defaults to: `null`.
    - Enum - one of [SORT_ORDER_UNSPECIFIED, ASCENDING, DESCENDING]
  """

  defstruct [
    :"fieldName",
    :"orderType",
    :"sortOrder"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.AnalyticsReporting.V4.Model.OrderBy do
  def decode(value, _options) do
    value
  end
end

defimpl Poison.Encoder, for: GoogleApi.AnalyticsReporting.V4.Model.OrderBy do
  def encode(value, options) do
    GoogleApi.AnalyticsReporting.V4.Deserializer.serialize_non_nil(value, options)
  end
end


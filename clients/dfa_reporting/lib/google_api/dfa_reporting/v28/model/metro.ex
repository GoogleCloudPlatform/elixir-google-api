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

defmodule GoogleApi.DFAReporting.V28.Model.Metro do
  @moduledoc """
  Contains information about a metro region that can be targeted by ads.

  ## Attributes

  - countryCode (String.t): Country code of the country to which this metro region belongs. Defaults to: `null`.
  - countryDartId (String.t): DART ID of the country to which this metro region belongs. Defaults to: `null`.
  - dartId (String.t): DART ID of this metro region. Defaults to: `null`.
  - dmaId (String.t): DMA ID of this metro region. This is the ID used for targeting and generating reports, and is equivalent to metro_code. Defaults to: `null`.
  - kind (String.t): Identifies what kind of resource this is. Value: the fixed string \&quot;dfareporting#metro\&quot;. Defaults to: `null`.
  - metroCode (String.t): Metro code of this metro region. This is equivalent to dma_id. Defaults to: `null`.
  - name (String.t): Name of this metro region. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :countryCode => any(),
          :countryDartId => any(),
          :dartId => any(),
          :dmaId => any(),
          :kind => any(),
          :metroCode => any(),
          :name => any()
        }

  field(:countryCode)
  field(:countryDartId)
  field(:dartId)
  field(:dmaId)
  field(:kind)
  field(:metroCode)
  field(:name)
end

defimpl Poison.Decoder, for: GoogleApi.DFAReporting.V28.Model.Metro do
  def decode(value, options) do
    GoogleApi.DFAReporting.V28.Model.Metro.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DFAReporting.V28.Model.Metro do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end

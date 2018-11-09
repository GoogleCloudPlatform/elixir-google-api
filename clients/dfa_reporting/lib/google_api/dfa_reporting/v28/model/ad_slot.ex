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

defmodule GoogleApi.DFAReporting.V28.Model.AdSlot do
  @moduledoc """
  Ad Slot

  ## Attributes

  - comment (String.t): Comment for this ad slot. Defaults to: `null`.
  - compatibility (String.t): Ad slot compatibility. DISPLAY and DISPLAY_INTERSTITIAL refer to rendering either on desktop, mobile devices or in mobile apps for regular or interstitial ads respectively. APP and APP_INTERSTITIAL are for rendering in mobile apps. IN_STREAM_VIDEO refers to rendering in in-stream video ads developed with the VAST standard. Defaults to: `null`.
    - Enum - one of [APP, APP_INTERSTITIAL, DISPLAY, DISPLAY_INTERSTITIAL, IN_STREAM_AUDIO, IN_STREAM_VIDEO]
  - height (String.t): Height of this ad slot. Defaults to: `null`.
  - linkedPlacementId (String.t): ID of the placement from an external platform that is linked to this ad slot. Defaults to: `null`.
  - name (String.t): Name of this ad slot. Defaults to: `null`.
  - paymentSourceType (String.t): Payment source type of this ad slot. Defaults to: `null`.
    - Enum - one of [PLANNING_PAYMENT_SOURCE_TYPE_AGENCY_PAID, PLANNING_PAYMENT_SOURCE_TYPE_PUBLISHER_PAID]
  - primary (boolean()): Primary ad slot of a roadblock inventory item. Defaults to: `null`.
  - width (String.t): Width of this ad slot. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :comment => any(),
          :compatibility => any(),
          :height => any(),
          :linkedPlacementId => any(),
          :name => any(),
          :paymentSourceType => any(),
          :primary => any(),
          :width => any()
        }

  field(:comment)
  field(:compatibility)
  field(:height)
  field(:linkedPlacementId)
  field(:name)
  field(:paymentSourceType)
  field(:primary)
  field(:width)
end

defimpl Poison.Decoder, for: GoogleApi.DFAReporting.V28.Model.AdSlot do
  def decode(value, options) do
    GoogleApi.DFAReporting.V28.Model.AdSlot.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DFAReporting.V28.Model.AdSlot do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end

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

defmodule GoogleApi.Analytics.V3.Model.GoalEventDetailsEventConditions do
  @moduledoc """


  ## Attributes

  - comparisonType (String.t): Type of comparison. Possible values are LESS_THAN, GREATER_THAN or EQUAL. Defaults to: `null`.
  - comparisonValue (String.t): Value used for this comparison. Defaults to: `null`.
  - expression (String.t): Expression used for this match. Defaults to: `null`.
  - matchType (String.t): Type of the match to be performed. Possible values are REGEXP, BEGINS_WITH, or EXACT. Defaults to: `null`.
  - type (String.t): Type of this event condition. Possible values are CATEGORY, ACTION, LABEL, or VALUE. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :comparisonType => any(),
          :comparisonValue => any(),
          :expression => any(),
          :matchType => any(),
          :type => any()
        }

  field(:comparisonType)
  field(:comparisonValue)
  field(:expression)
  field(:matchType)
  field(:type)
end

defimpl Poison.Decoder, for: GoogleApi.Analytics.V3.Model.GoalEventDetailsEventConditions do
  def decode(value, options) do
    GoogleApi.Analytics.V3.Model.GoalEventDetailsEventConditions.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Analytics.V3.Model.GoalEventDetailsEventConditions do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end

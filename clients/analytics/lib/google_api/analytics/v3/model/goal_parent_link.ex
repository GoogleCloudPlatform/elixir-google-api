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

defmodule GoogleApi.Analytics.V3.Model.GoalParentLink do
  @moduledoc """
  Parent link for a goal. Points to the view (profile) to which this goal belongs.

  ## Attributes

  - href (String.t): Link to the view (profile) to which this goal belongs. Defaults to: `null`.
  - type (String.t): Value is \&quot;analytics#profile\&quot;. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :href => any(),
          :type => any()
        }

  field(:href)
  field(:type)
end

defimpl Poison.Decoder, for: GoogleApi.Analytics.V3.Model.GoalParentLink do
  def decode(value, options) do
    GoogleApi.Analytics.V3.Model.GoalParentLink.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Analytics.V3.Model.GoalParentLink do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end

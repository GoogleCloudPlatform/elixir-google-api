# Copyright 2019 Google LLC
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

# NOTE: This class is auto generated by the elixir code generator program.
# Do not edit the class manually.

defmodule GoogleApi.Analytics.V3.Model.RemarketingAudienceStateBasedAudienceDefinitionExcludeConditions do
  @moduledoc """
  Defines the conditions to exclude users from the audience.

  ## Attributes

  - exclusionDuration (String.t): Whether to make the exclusion TEMPORARY or PERMANENT. Defaults to `nil`.
  - segment (String.t): The segment condition that will cause a user to be removed from an audience. Defaults to `nil`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :exclusionDuration => String.t(),
          :segment => String.t()
        }

  field(:exclusionDuration)
  field(:segment)
end

defimpl Poison.Decoder,
  for:
    GoogleApi.Analytics.V3.Model.RemarketingAudienceStateBasedAudienceDefinitionExcludeConditions do
  def decode(value, options) do
    GoogleApi.Analytics.V3.Model.RemarketingAudienceStateBasedAudienceDefinitionExcludeConditions.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for:
    GoogleApi.Analytics.V3.Model.RemarketingAudienceStateBasedAudienceDefinitionExcludeConditions do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end

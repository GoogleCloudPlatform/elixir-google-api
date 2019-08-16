# Copyright 2019 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# NOTE: This file is auto generated by the elixir code generator program.
# Do not edit this file manually.

defmodule GoogleApi.Monitoring.V3.Model.ContentMatcher do
  @moduledoc """
  Used to perform string matching. It allows substring and regular expressions, together with their negations.

  ## Attributes

  *   `content` (*type:* `String.t`, *default:* `nil`) - String or regex content to match (max 1024 bytes)
  *   `matcher` (*type:* `String.t`, *default:* `nil`) - The matcher representing content match options which the check will run with. If the field is not specified (in previous versions), the option is set to be CONTAINS_STRING which performs content substring matching.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :content => String.t(),
          :matcher => String.t()
        }

  field(:content)
  field(:matcher)
end

defimpl Poison.Decoder, for: GoogleApi.Monitoring.V3.Model.ContentMatcher do
  def decode(value, options) do
    GoogleApi.Monitoring.V3.Model.ContentMatcher.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Monitoring.V3.Model.ContentMatcher do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end

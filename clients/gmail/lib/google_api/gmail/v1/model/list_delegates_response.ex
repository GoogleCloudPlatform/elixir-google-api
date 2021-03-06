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

defmodule GoogleApi.Gmail.V1.Model.ListDelegatesResponse do
  @moduledoc """
  Response for the ListDelegates method.

  ## Attributes

  *   `delegates` (*type:* `list(GoogleApi.Gmail.V1.Model.Delegate.t)`, *default:* `nil`) - List of the user's delegates (with any verification status). If an account doesn't have delegates, this field doesn't appear.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :delegates => list(GoogleApi.Gmail.V1.Model.Delegate.t()) | nil
        }

  field(:delegates, as: GoogleApi.Gmail.V1.Model.Delegate, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.Gmail.V1.Model.ListDelegatesResponse do
  def decode(value, options) do
    GoogleApi.Gmail.V1.Model.ListDelegatesResponse.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Gmail.V1.Model.ListDelegatesResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end

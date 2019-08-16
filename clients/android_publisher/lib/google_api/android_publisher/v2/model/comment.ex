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

defmodule GoogleApi.AndroidPublisher.V2.Model.Comment do
  @moduledoc """


  ## Attributes

  *   `developerComment` (*type:* `GoogleApi.AndroidPublisher.V2.Model.DeveloperComment.t`, *default:* `nil`) - A comment from a developer.
  *   `userComment` (*type:* `GoogleApi.AndroidPublisher.V2.Model.UserComment.t`, *default:* `nil`) - A comment from a user.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :developerComment => GoogleApi.AndroidPublisher.V2.Model.DeveloperComment.t(),
          :userComment => GoogleApi.AndroidPublisher.V2.Model.UserComment.t()
        }

  field(:developerComment, as: GoogleApi.AndroidPublisher.V2.Model.DeveloperComment)
  field(:userComment, as: GoogleApi.AndroidPublisher.V2.Model.UserComment)
end

defimpl Poison.Decoder, for: GoogleApi.AndroidPublisher.V2.Model.Comment do
  def decode(value, options) do
    GoogleApi.AndroidPublisher.V2.Model.Comment.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AndroidPublisher.V2.Model.Comment do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end

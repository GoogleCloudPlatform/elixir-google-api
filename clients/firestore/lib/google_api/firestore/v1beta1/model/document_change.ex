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

defmodule GoogleApi.Firestore.V1beta1.Model.DocumentChange do
  @moduledoc """
  A Document has changed. May be the result of multiple writes, including deletes, that ultimately resulted in a new value for the Document. Multiple DocumentChange messages may be returned for the same logical change, if multiple targets are affected.

  ## Attributes

  *   `document` (*type:* `GoogleApi.Firestore.V1beta1.Model.Document.t`, *default:* `nil`) - The new state of the Document. If `mask` is set, contains only fields that were updated or added.
  *   `removedTargetIds` (*type:* `list(integer())`, *default:* `nil`) - A set of target IDs for targets that no longer match this document.
  *   `targetIds` (*type:* `list(integer())`, *default:* `nil`) - A set of target IDs of targets that match this document.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :document => GoogleApi.Firestore.V1beta1.Model.Document.t(),
          :removedTargetIds => list(integer()),
          :targetIds => list(integer())
        }

  field(:document, as: GoogleApi.Firestore.V1beta1.Model.Document)
  field(:removedTargetIds, type: :list)
  field(:targetIds, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.Firestore.V1beta1.Model.DocumentChange do
  def decode(value, options) do
    GoogleApi.Firestore.V1beta1.Model.DocumentChange.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Firestore.V1beta1.Model.DocumentChange do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end

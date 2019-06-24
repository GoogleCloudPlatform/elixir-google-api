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

defmodule GoogleApi.TagManager.V2.Model.RevertTagResponse do
  @moduledoc """
  The result of reverting a tag in a workspace.

  ## Attributes

  *   `tag` (*type:* `GoogleApi.TagManager.V2.Model.Tag.t`, *default:* `nil`) - Tag as it appears in the latest container version since the last
      workspace synchronization operation. If no tag is present, that means
      the tag was deleted in the latest container version.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :tag => GoogleApi.TagManager.V2.Model.Tag.t()
        }

  field(:tag, as: GoogleApi.TagManager.V2.Model.Tag)
end

defimpl Poison.Decoder, for: GoogleApi.TagManager.V2.Model.RevertTagResponse do
  def decode(value, options) do
    GoogleApi.TagManager.V2.Model.RevertTagResponse.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.TagManager.V2.Model.RevertTagResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end

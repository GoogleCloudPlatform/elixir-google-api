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

defmodule GoogleApi.CloudFunctions.V1.Model.SourceRepository do
  @moduledoc """
  Describes SourceRepository, used to represent parameters related to
  source repository where a function is hosted.

  ## Attributes

  *   `deployedUrl` (*type:* `String.t`, *default:* `nil`) - Output only. The URL pointing to the hosted repository where the function
      were defined at the time of deployment. It always points to a specific
      commit in the format described above.
  *   `url` (*type:* `String.t`, *default:* `nil`) - The URL pointing to the hosted repository where the function is defined.
      There are supported Cloud Source Repository URLs in the following
      formats:

      To refer to a specific commit:
      `https://source.developers.google.com/projects/*/repos/*/revisions/*/paths/*`
      To refer to a moveable alias (branch):
      `https://source.developers.google.com/projects/*/repos/*/moveable-aliases/*/paths/*`
      In particular, to refer to HEAD use `master` moveable alias.
      To refer to a specific fixed alias (tag):
      `https://source.developers.google.com/projects/*/repos/*/fixed-aliases/*/paths/*`

      You may omit `paths/*` if you want to use the main directory.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :deployedUrl => String.t(),
          :url => String.t()
        }

  field(:deployedUrl)
  field(:url)
end

defimpl Poison.Decoder, for: GoogleApi.CloudFunctions.V1.Model.SourceRepository do
  def decode(value, options) do
    GoogleApi.CloudFunctions.V1.Model.SourceRepository.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudFunctions.V1.Model.SourceRepository do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end

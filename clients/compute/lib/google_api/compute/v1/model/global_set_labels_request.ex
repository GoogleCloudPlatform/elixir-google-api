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

defmodule GoogleApi.Compute.V1.Model.GlobalSetLabelsRequest do
  @moduledoc """


  ## Attributes

  *   `labelFingerprint` (*type:* `String.t`, *default:* `nil`) - The fingerprint of the previous set of labels for this resource, used to detect conflicts. The fingerprint is initially generated by Compute Engine and changes after every request to modify or update labels. You must always provide an up-to-date fingerprint hash when updating or changing labels, otherwise the request will fail with error 412 conditionNotMet. Make a get() request to the resource to get the latest fingerprint.
  *   `labels` (*type:* `map()`, *default:* `nil`) - A list of labels to apply for this resource. Each label key & value must comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash. For example, "webserver-frontend": "images". A label value can also be empty (e.g. "my-label": "").
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :labelFingerprint => String.t(),
          :labels => map()
        }

  field(:labelFingerprint)
  field(:labels, type: :map)
end

defimpl Poison.Decoder, for: GoogleApi.Compute.V1.Model.GlobalSetLabelsRequest do
  def decode(value, options) do
    GoogleApi.Compute.V1.Model.GlobalSetLabelsRequest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Compute.V1.Model.GlobalSetLabelsRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end

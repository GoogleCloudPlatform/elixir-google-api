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

defmodule GoogleApi.Vision.V1.Model.ImportProductSetsResponse do
  @moduledoc """
  Response message for the `ImportProductSets` method.

  This message is returned by the
  google.longrunning.Operations.GetOperation method in the returned
  google.longrunning.Operation.response field.

  ## Attributes

  - referenceImages (list(GoogleApi.Vision.V1.Model.ReferenceImage.t)): The list of reference_images that are imported successfully. Defaults to `nil`.
  - statuses (list(GoogleApi.Vision.V1.Model.Status.t)): The rpc status for each ImportProductSet request, including both successes
  and errors.

  The number of statuses here matches the number of lines in the csv file,
  and statuses[i] stores the success or failure status of processing the i-th
  line of the csv, starting from line 0. Defaults to `nil`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :referenceImages => list(GoogleApi.Vision.V1.Model.ReferenceImage.t()),
          :statuses => list(GoogleApi.Vision.V1.Model.Status.t())
        }

  field(:referenceImages, as: GoogleApi.Vision.V1.Model.ReferenceImage, type: :list)
  field(:statuses, as: GoogleApi.Vision.V1.Model.Status, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.Vision.V1.Model.ImportProductSetsResponse do
  def decode(value, options) do
    GoogleApi.Vision.V1.Model.ImportProductSetsResponse.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Vision.V1.Model.ImportProductSetsResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end

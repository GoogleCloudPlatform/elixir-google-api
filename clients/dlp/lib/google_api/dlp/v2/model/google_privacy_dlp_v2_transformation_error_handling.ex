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

defmodule GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2TransformationErrorHandling do
  @moduledoc """
  How to handle transformation errors during de-identification. A transformation error occurs when the requested transformation is incompatible with the data. For example, trying to de-identify an IP address using a `DateShift` transformation would result in a transformation error, since date info cannot be extracted from an IP address. Information about any incompatible transformations, and how they were handled, is returned in the response as part of the `TransformationOverviews`.

  ## Attributes

  *   `leaveUntransformed` (*type:* `GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2LeaveUntransformed.t`, *default:* `nil`) - Ignore errors
  *   `throwError` (*type:* `GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2ThrowError.t`, *default:* `nil`) - Throw an error
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :leaveUntransformed => GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2LeaveUntransformed.t(),
          :throwError => GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2ThrowError.t()
        }

  field(:leaveUntransformed, as: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2LeaveUntransformed)
  field(:throwError, as: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2ThrowError)
end

defimpl Poison.Decoder, for: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2TransformationErrorHandling do
  def decode(value, options) do
    GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2TransformationErrorHandling.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2TransformationErrorHandling do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end

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

defmodule GoogleApi.AndroidManagement.V1.Model.Enterprise do
  @moduledoc """
  The configuration applied to an enterprise.

  ## Attributes

  - appAutoApprovalEnabled (boolean()): Deprecated and unused. Defaults to `nil`.
  - enabledNotificationTypes (list(String.t)): The types of Google Pub/Sub notifications enabled for the enterprise. Defaults to `nil`.
  - enterpriseDisplayName (String.t): The name of the enterprise displayed to users. Defaults to `nil`.
  - logo (GoogleApi.AndroidManagement.V1.Model.ExternalData.t): An image displayed as a logo during device provisioning. Supported types are: image/bmp, image/gif, image/x-ico, image/jpeg, image/png, image/webp, image/vnd.wap.wbmp, image/x-adobe-dng. Defaults to `nil`.
  - name (String.t): The name of the enterprise which is generated by the server during creation, in the form enterprises/{enterpriseId}. Defaults to `nil`.
  - primaryColor (integer()): A color in RGB format that indicates the predominant color to display in the device management app UI. The color components are stored as follows: (red << 16) | (green << 8) | blue, where the value of each component is between 0 and 255, inclusive. Defaults to `nil`.
  - pubsubTopic (String.t): The topic that Cloud Pub/Sub notifications are published to, in the form projects/{project}/topics/{topic}. This field is only required if Pub/Sub notifications are enabled. Defaults to `nil`.
  - signinDetails (list(GoogleApi.AndroidManagement.V1.Model.SigninDetail.t)): Sign-in details of the enterprise. Maximum of 1 SigninDetail is supported. Defaults to `nil`.
  - termsAndConditions (list(GoogleApi.AndroidManagement.V1.Model.TermsAndConditions.t)): Terms and conditions that must be accepted when provisioning a device for this enterprise. A page of terms is generated for each value in this list. Defaults to `nil`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :appAutoApprovalEnabled => boolean(),
          :enabledNotificationTypes => list(String.t()),
          :enterpriseDisplayName => String.t(),
          :logo => GoogleApi.AndroidManagement.V1.Model.ExternalData.t(),
          :name => String.t(),
          :primaryColor => integer(),
          :pubsubTopic => String.t(),
          :signinDetails => list(GoogleApi.AndroidManagement.V1.Model.SigninDetail.t()),
          :termsAndConditions => list(GoogleApi.AndroidManagement.V1.Model.TermsAndConditions.t())
        }

  field(:appAutoApprovalEnabled)
  field(:enabledNotificationTypes, type: :list)
  field(:enterpriseDisplayName)
  field(:logo, as: GoogleApi.AndroidManagement.V1.Model.ExternalData)
  field(:name)
  field(:primaryColor)
  field(:pubsubTopic)
  field(:signinDetails, as: GoogleApi.AndroidManagement.V1.Model.SigninDetail, type: :list)

  field(
    :termsAndConditions,
    as: GoogleApi.AndroidManagement.V1.Model.TermsAndConditions,
    type: :list
  )
end

defimpl Poison.Decoder, for: GoogleApi.AndroidManagement.V1.Model.Enterprise do
  def decode(value, options) do
    GoogleApi.AndroidManagement.V1.Model.Enterprise.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AndroidManagement.V1.Model.Enterprise do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end

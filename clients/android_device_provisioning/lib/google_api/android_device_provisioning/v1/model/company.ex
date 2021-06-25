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

defmodule GoogleApi.AndroidDeviceProvisioning.V1.Model.Company do
  @moduledoc """
  A reseller, vendor, or customer in the zero-touch reseller and customer APIs.

  ## Attributes

  *   `adminEmails` (*type:* `list(String.t)`, *default:* `nil`) - Optional. Email address of customer's users in the admin role. Each email address must be associated with a Google Account.
  *   `companyId` (*type:* `String.t`, *default:* `nil`) - Output only. The ID of the company. Assigned by the server.
  *   `companyName` (*type:* `String.t`, *default:* `nil`) - Required. The name of the company. For example _XYZ Corp_. Displayed to the company's employees in the zero-touch enrollment portal.
  *   `languageCode` (*type:* `String.t`, *default:* `nil`) - Input only. The preferred locale of the customer represented as a BCP47 language code. This field is validated on input and requests containing unsupported language codes will be rejected. Supported language codes: Arabic (ar) Chinese (Hong Kong) (zh-HK) Chinese (Simplified) (zh-CN) Chinese (Traditional) (zh-TW) Czech (cs) Danish (da) Dutch (nl) English (UK) (en-GB) English (US) (en-US) Filipino (fil) Finnish (fi) French (fr) German (de) Hebrew (iw) Hindi (hi) Hungarian (hu) Indonesian (id) Italian (it) Japanese (ja) Korean (ko) Norwegian (Bokmal) (no) Polish (pl) Portuguese (Brazil) (pt-BR) Portuguese (Portugal) (pt-PT) Russian (ru) Spanish (es) Spanish (Latin America) (es-419) Swedish (sv) Thai (th) Turkish (tr) Ukrainian (uk) Vietnamese (vi)
  *   `name` (*type:* `String.t`, *default:* `nil`) - Output only. The API resource name of the company. The resource name is one of the following formats: * `partners/[PARTNER_ID]/customers/[CUSTOMER_ID]` * `partners/[PARTNER_ID]/vendors/[VENDOR_ID]` * `partners/[PARTNER_ID]/vendors/[VENDOR_ID]/customers/[CUSTOMER_ID]` Assigned by the server.
  *   `ownerEmails` (*type:* `list(String.t)`, *default:* `nil`) - Required. Input only. Email address of customer's users in the owner role. At least one `owner_email` is required. Owners share the same access as admins but can also add, delete, and edit your organization's portal users.
  *   `skipWelcomeEmail` (*type:* `boolean()`, *default:* `nil`) - Input only. If set to true, welcome email will not be sent to the customer. It is recommended to skip the welcome email if devices will be claimed with additional DEVICE_PROTECTION service, as the customer will receive separate emails at device claim time. This field is ignored if this is not a Zero-touch customer.
  *   `termsStatus` (*type:* `String.t`, *default:* `nil`) - Output only. Whether any user from the company has accepted the latest Terms of Service (ToS). See TermsStatus.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :adminEmails => list(String.t()) | nil,
          :companyId => String.t() | nil,
          :companyName => String.t() | nil,
          :languageCode => String.t() | nil,
          :name => String.t() | nil,
          :ownerEmails => list(String.t()) | nil,
          :skipWelcomeEmail => boolean() | nil,
          :termsStatus => String.t() | nil
        }

  field(:adminEmails, type: :list)
  field(:companyId)
  field(:companyName)
  field(:languageCode)
  field(:name)
  field(:ownerEmails, type: :list)
  field(:skipWelcomeEmail)
  field(:termsStatus)
end

defimpl Poison.Decoder, for: GoogleApi.AndroidDeviceProvisioning.V1.Model.Company do
  def decode(value, options) do
    GoogleApi.AndroidDeviceProvisioning.V1.Model.Company.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AndroidDeviceProvisioning.V1.Model.Company do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end

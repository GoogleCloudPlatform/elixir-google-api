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

defmodule GoogleApi.CloudAsset.V1.Model.GoogleIdentityAccesscontextmanagerV1AccessLevel do
  @moduledoc """
  An `AccessLevel` is a label that can be applied to requests to Google Cloud
  services, along with a list of requirements necessary for the label to be
  applied.

  ## Attributes

  *   `basic` (*type:* `GoogleApi.CloudAsset.V1.Model.GoogleIdentityAccesscontextmanagerV1BasicLevel.t`, *default:* `nil`) - A `BasicLevel` composed of `Conditions`.
  *   `custom` (*type:* `GoogleApi.CloudAsset.V1.Model.GoogleIdentityAccesscontextmanagerV1CustomLevel.t`, *default:* `nil`) - A `CustomLevel` written in the Common Expression Language.
  *   `description` (*type:* `String.t`, *default:* `nil`) - Description of the `AccessLevel` and its use. Does not affect behavior.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Required. Resource name for the Access Level. The `short_name` component
      must begin with a letter and only include alphanumeric and '_'. Format:
      `accessPolicies/{policy_id}/accessLevels/{short_name}`. The maximum length
      of the `short_name` component is 50 characters.
  *   `title` (*type:* `String.t`, *default:* `nil`) - Human readable title. Must be unique within the Policy.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :basic =>
            GoogleApi.CloudAsset.V1.Model.GoogleIdentityAccesscontextmanagerV1BasicLevel.t(),
          :custom =>
            GoogleApi.CloudAsset.V1.Model.GoogleIdentityAccesscontextmanagerV1CustomLevel.t(),
          :description => String.t(),
          :name => String.t(),
          :title => String.t()
        }

  field(:basic, as: GoogleApi.CloudAsset.V1.Model.GoogleIdentityAccesscontextmanagerV1BasicLevel)

  field(:custom, as: GoogleApi.CloudAsset.V1.Model.GoogleIdentityAccesscontextmanagerV1CustomLevel)

  field(:description)
  field(:name)
  field(:title)
end

defimpl Poison.Decoder,
  for: GoogleApi.CloudAsset.V1.Model.GoogleIdentityAccesscontextmanagerV1AccessLevel do
  def decode(value, options) do
    GoogleApi.CloudAsset.V1.Model.GoogleIdentityAccesscontextmanagerV1AccessLevel.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.CloudAsset.V1.Model.GoogleIdentityAccesscontextmanagerV1AccessLevel do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end

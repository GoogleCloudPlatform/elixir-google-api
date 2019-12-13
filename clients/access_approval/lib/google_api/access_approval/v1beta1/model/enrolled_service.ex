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

defmodule GoogleApi.AccessApproval.V1beta1.Model.EnrolledService do
  @moduledoc """
  Represents the enrollment of a cloud resource into a specific service.

  ## Attributes

  *   `cloudProduct` (*type:* `String.t`, *default:* `nil`) - The product for which Access Approval will be enrolled. Allowed values are
      listed below (case-sensitive):
      <ol>
        <li>all</li>
        <li>appengine.googleapis.com</li>
        <li>bigquery.googleapis.com</li>
        <li>bigtable.googleapis.com</li>
        <li>cloudkms.googleapis.com</li>
        <li>compute.googleapis.com</li>
        <li>dataflow.googleapis.com</li>
        <li>iam.googleapis.com</li>
        <li>pubsub.googleapis.com</li>
        <li>storage.googleapis.com</li>
      <ol>
  *   `enrollmentLevel` (*type:* `String.t`, *default:* `nil`) - The enrollment level of the service.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :cloudProduct => String.t(),
          :enrollmentLevel => String.t()
        }

  field(:cloudProduct)
  field(:enrollmentLevel)
end

defimpl Poison.Decoder, for: GoogleApi.AccessApproval.V1beta1.Model.EnrolledService do
  def decode(value, options) do
    GoogleApi.AccessApproval.V1beta1.Model.EnrolledService.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AccessApproval.V1beta1.Model.EnrolledService do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end

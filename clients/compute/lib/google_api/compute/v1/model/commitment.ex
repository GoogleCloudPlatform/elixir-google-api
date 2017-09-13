# Copyright 2017 Google Inc.
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


# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule GoogleApi.Compute.V1.Model.Commitment do
  @moduledoc """
  Represents a Commitment resource. Creating a Commitment resource means that you are purchasing a committed use contract with an explicit start and end time. You can create commitments based on vCPUs and memory usage and receive discounted rates. For full details, read Signing Up for Committed Use Discounts.  Committed use discounts are subject to Google Cloud Platform&#39;s Service Specific Terms. By purchasing a committed use discount, you agree to these terms. Committed use discounts will not renew, so you must purchase a new commitment to continue receiving discounts.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"creationTimestamp",
    :"description",
    :"endTimestamp",
    :"id",
    :"kind",
    :"name",
    :"plan",
    :"region",
    :"resources",
    :"selfLink",
    :"startTimestamp",
    :"status",
    :"statusMessage"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.Compute.V1.Model.Commitment do
  import GoogleApi.Compute.V1.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"resources", :list, GoogleApi.Compute.V1.Model.ResourceCommitment, options)
  end
end


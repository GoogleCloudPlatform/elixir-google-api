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

defmodule GoogleApi.CivicInfo.V2.Model.VoterInfoResponse do
  @moduledoc """
  The result of a voter info lookup query.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"contests",
    :"dropOffLocations",
    :"earlyVoteSites",
    :"election",
    :"kind",
    :"mailOnly",
    :"normalizedInput",
    :"otherElections",
    :"pollingLocations",
    :"precinctId",
    :"state"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.CivicInfo.V2.Model.VoterInfoResponse do
  import GoogleApi.CivicInfo.V2.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"contests", :list, GoogleApi.CivicInfo.V2.Model.Contest, options)
    |> deserialize(:"dropOffLocations", :list, GoogleApi.CivicInfo.V2.Model.PollingLocation, options)
    |> deserialize(:"earlyVoteSites", :list, GoogleApi.CivicInfo.V2.Model.PollingLocation, options)
    |> deserialize(:"election", :struct, GoogleApi.CivicInfo.V2.Model.Election, options)
    |> deserialize(:"normalizedInput", :struct, GoogleApi.CivicInfo.V2.Model.SimpleAddressType, options)
    |> deserialize(:"otherElections", :list, GoogleApi.CivicInfo.V2.Model.Election, options)
    |> deserialize(:"pollingLocations", :list, GoogleApi.CivicInfo.V2.Model.PollingLocation, options)
    |> deserialize(:"state", :list, GoogleApi.CivicInfo.V2.Model.AdministrationRegion, options)
  end
end


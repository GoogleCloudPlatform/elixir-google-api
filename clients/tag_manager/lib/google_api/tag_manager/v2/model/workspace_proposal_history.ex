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

defmodule GoogleApi.TagManager.V2.Model.WorkspaceProposalHistory do
  @moduledoc """
  A history event that represents a comment or status change in the proposal.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"comment",
    :"createdBy",
    :"createdTimestamp",
    :"statusChange",
    :"type"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.TagManager.V2.Model.WorkspaceProposalHistory do
  import GoogleApi.TagManager.V2.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"comment", :struct, GoogleApi.TagManager.V2.Model.WorkspaceProposalHistoryComment, options)
    |> deserialize(:"createdBy", :struct, GoogleApi.TagManager.V2.Model.WorkspaceProposalUser, options)
    |> deserialize(:"createdTimestamp", :struct, GoogleApi.TagManager.V2.Model.Timestamp, options)
    |> deserialize(:"statusChange", :struct, GoogleApi.TagManager.V2.Model.WorkspaceProposalHistoryStatusChange, options)
  end
end


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

defmodule GoogleApi.CivicInfo.V2.Model.Contest do
  @moduledoc """
  Information about a contest that appears on a voter's ballot.

  ## Attributes

  - ballotPlacement (String.t): A number specifying the position of this contest on the voter's ballot. Defaults to `nil`.
  - ballotTitle (String.t): The official title on the ballot for this contest, only where available. Defaults to `nil`.
  - candidates (list(GoogleApi.CivicInfo.V2.Model.Candidate.t)): The candidate choices for this contest. Defaults to `nil`.
  - district (GoogleApi.CivicInfo.V2.Model.ElectoralDistrict.t): Information about the electoral district that this contest is in. Defaults to `nil`.
  - electorateSpecifications (String.t): A description of any additional eligibility requirements for voting in this contest. Defaults to `nil`.
  - id (String.t): An ID for this object. IDs may change in future requests and should not be cached. Access to this field requires special access that can be requested from the Request more link on the Quotas page. Defaults to `nil`.
  - level (list(String.t)): The levels of government of the office for this contest. There may be more than one in cases where a jurisdiction effectively acts at two different levels of government; for example, the mayor of the District of Columbia acts at "locality" level, but also effectively at both "administrative-area-2" and "administrative-area-1". Defaults to `nil`.
  - numberElected (String.t): The number of candidates that will be elected to office in this contest. Defaults to `nil`.
  - numberVotingFor (String.t): The number of candidates that a voter may vote for in this contest. Defaults to `nil`.
  - office (String.t): The name of the office for this contest. Defaults to `nil`.
  - primaryParty (String.t): If this is a partisan election, the name of the party it is for. Defaults to `nil`.
  - referendumBallotResponses (list(String.t)): The set of ballot responses for the referendum. A ballot response represents a line on the ballot. Common examples might include "yes" or "no" for referenda. This field is only populated for contests of type 'Referendum'. Defaults to `nil`.
  - referendumBrief (String.t): Specifies a short summary of the referendum that is typically on the ballot below the title but above the text. This field is only populated for contests of type 'Referendum'. Defaults to `nil`.
  - referendumConStatement (String.t): A statement in opposition to the referendum. It does not necessarily appear on the ballot. This field is only populated for contests of type 'Referendum'. Defaults to `nil`.
  - referendumEffectOfAbstain (String.t): Specifies what effect abstaining (not voting) on the proposition will have (i.e. whether abstaining is considered a vote against it). This field is only populated for contests of type 'Referendum'. Defaults to `nil`.
  - referendumPassageThreshold (String.t): The threshold of votes that the referendum needs in order to pass, e.g. "two-thirds". This field is only populated for contests of type 'Referendum'. Defaults to `nil`.
  - referendumProStatement (String.t): A statement in favor of the referendum. It does not necessarily appear on the ballot. This field is only populated for contests of type 'Referendum'. Defaults to `nil`.
  - referendumSubtitle (String.t): A brief description of the referendum. This field is only populated for contests of type 'Referendum'. Defaults to `nil`.
  - referendumText (String.t): The full text of the referendum. This field is only populated for contests of type 'Referendum'. Defaults to `nil`.
  - referendumTitle (String.t): The title of the referendum (e.g. 'Proposition 42'). This field is only populated for contests of type 'Referendum'. Defaults to `nil`.
  - referendumUrl (String.t): A link to the referendum. This field is only populated for contests of type 'Referendum'. Defaults to `nil`.
  - roles (list(String.t)): The roles which this office fulfills. Defaults to `nil`.
  - sources (list(GoogleApi.CivicInfo.V2.Model.Source.t)): A list of sources for this contest. If multiple sources are listed, the data has been aggregated from those sources. Defaults to `nil`.
  - special (String.t): "Yes" or "No" depending on whether this a contest being held outside the normal election cycle. Defaults to `nil`.
  - type (String.t): The type of contest. Usually this will be 'General', 'Primary', or 'Run-off' for contests with candidates. For referenda this will be 'Referendum'. For Retention contests this will typically be 'Retention'. Defaults to `nil`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :ballotPlacement => String.t(),
          :ballotTitle => String.t(),
          :candidates => list(GoogleApi.CivicInfo.V2.Model.Candidate.t()),
          :district => GoogleApi.CivicInfo.V2.Model.ElectoralDistrict.t(),
          :electorateSpecifications => String.t(),
          :id => String.t(),
          :level => list(String.t()),
          :numberElected => String.t(),
          :numberVotingFor => String.t(),
          :office => String.t(),
          :primaryParty => String.t(),
          :referendumBallotResponses => list(String.t()),
          :referendumBrief => String.t(),
          :referendumConStatement => String.t(),
          :referendumEffectOfAbstain => String.t(),
          :referendumPassageThreshold => String.t(),
          :referendumProStatement => String.t(),
          :referendumSubtitle => String.t(),
          :referendumText => String.t(),
          :referendumTitle => String.t(),
          :referendumUrl => String.t(),
          :roles => list(String.t()),
          :sources => list(GoogleApi.CivicInfo.V2.Model.Source.t()),
          :special => String.t(),
          :type => String.t()
        }

  field(:ballotPlacement)
  field(:ballotTitle)
  field(:candidates, as: GoogleApi.CivicInfo.V2.Model.Candidate, type: :list)
  field(:district, as: GoogleApi.CivicInfo.V2.Model.ElectoralDistrict)
  field(:electorateSpecifications)
  field(:id)
  field(:level, type: :list)
  field(:numberElected)
  field(:numberVotingFor)
  field(:office)
  field(:primaryParty)
  field(:referendumBallotResponses, type: :list)
  field(:referendumBrief)
  field(:referendumConStatement)
  field(:referendumEffectOfAbstain)
  field(:referendumPassageThreshold)
  field(:referendumProStatement)
  field(:referendumSubtitle)
  field(:referendumText)
  field(:referendumTitle)
  field(:referendumUrl)
  field(:roles, type: :list)
  field(:sources, as: GoogleApi.CivicInfo.V2.Model.Source, type: :list)
  field(:special)
  field(:type)
end

defimpl Poison.Decoder, for: GoogleApi.CivicInfo.V2.Model.Contest do
  def decode(value, options) do
    GoogleApi.CivicInfo.V2.Model.Contest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CivicInfo.V2.Model.Contest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end

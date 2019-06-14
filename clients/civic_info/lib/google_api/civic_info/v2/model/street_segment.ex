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

defmodule GoogleApi.CivicInfo.V2.Model.StreetSegment do
  @moduledoc """


  ## Attributes

  - ncoaAddress (String.t):  Defaults to `nil`.
  - unitType (String.t):  Defaults to `nil`.
  - unitNumber (String.t):  Defaults to `nil`.
  - congressionalDistrict (String.t):  Defaults to `nil`.
  - stateHouseDistrict (String.t):  Defaults to `nil`.
  - precinctName (String.t):  Defaults to `nil`.
  - geographicDivisionOcdIds (list(String.t)):  Defaults to `nil`.
  - vanPrecinctCode (String.t):  Defaults to `nil`.
  - startLatE7 (String.t):  Defaults to `nil`.
  - published (boolean()):  Defaults to `nil`.
  - contestIds (list(String.t)):  Defaults to `nil`.
  - geocodedPoint (GoogleApi.CivicInfo.V2.Model.PointProto.t):  Defaults to `nil`.
  - startLngE7 (String.t):  Defaults to `nil`.
  - municipalDistrict (String.t):  Defaults to `nil`.
  - id (String.t):  Defaults to `nil`.
  - streetName (String.t):  Defaults to `nil`.
  - subAdministrativeAreaName (String.t):  Defaults to `nil`.
  - surrogateId (String.t):  Defaults to `nil`.
  - pollinglocationByIds (list(String.t)):  Defaults to `nil`.
  - countyCouncilDistrict (String.t):  Defaults to `nil`.
  - oddOrEvens (list(String.t)):  Defaults to `nil`.
  - datasetId (String.t):  Defaults to `nil`.
  - originalId (String.t):  Defaults to `nil`.
  - state (String.t):  Defaults to `nil`.
  - countyFips (String.t):  Defaults to `nil`.
  - targetsmartUniquePrecinctCode (String.t):  Defaults to `nil`.
  - precinctOcdId (String.t):  Defaults to `nil`.
  - earlyVoteSiteByIds (list(String.t)):  Defaults to `nil`.
  - wildcard (boolean()):  Defaults to `nil`.
  - city (String.t):  Defaults to `nil`.
  - beforeGeocodeId (String.t):  Defaults to `nil`.
  - cityCouncilDistrict (String.t):  Defaults to `nil`.
  - wardDistrict (String.t):  Defaults to `nil`.
  - provenances (list(GoogleApi.CivicInfo.V2.Model.Provenance.t)):  Defaults to `nil`.
  - administrationRegionIds (list(String.t)):  Defaults to `nil`.
  - schoolDistrict (String.t):  Defaults to `nil`.
  - zip (String.t):  Defaults to `nil`.
  - judicialDistrict (String.t):  Defaults to `nil`.
  - mailOnly (boolean()):  Defaults to `nil`.
  - townshipDistrict (String.t):  Defaults to `nil`.
  - endHouseNumber (String.t):  Defaults to `nil`.
  - catalistUniquePrecinctCode (String.t):  Defaults to `nil`.
  - startHouseNumber (String.t):  Defaults to `nil`.
  - stateSenateDistrict (String.t):  Defaults to `nil`.
  - voterGeographicDivisionOcdIds (list(String.t)):  Defaults to `nil`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :ncoaAddress => String.t(),
          :unitType => String.t(),
          :unitNumber => String.t(),
          :congressionalDistrict => String.t(),
          :stateHouseDistrict => String.t(),
          :precinctName => String.t(),
          :geographicDivisionOcdIds => list(String.t()),
          :vanPrecinctCode => String.t(),
          :startLatE7 => String.t(),
          :published => boolean(),
          :contestIds => list(String.t()),
          :geocodedPoint => GoogleApi.CivicInfo.V2.Model.PointProto.t(),
          :startLngE7 => String.t(),
          :municipalDistrict => String.t(),
          :id => String.t(),
          :streetName => String.t(),
          :subAdministrativeAreaName => String.t(),
          :surrogateId => String.t(),
          :pollinglocationByIds => list(String.t()),
          :countyCouncilDistrict => String.t(),
          :oddOrEvens => list(String.t()),
          :datasetId => String.t(),
          :originalId => String.t(),
          :state => String.t(),
          :countyFips => String.t(),
          :targetsmartUniquePrecinctCode => String.t(),
          :precinctOcdId => String.t(),
          :earlyVoteSiteByIds => list(String.t()),
          :wildcard => boolean(),
          :city => String.t(),
          :beforeGeocodeId => String.t(),
          :cityCouncilDistrict => String.t(),
          :wardDistrict => String.t(),
          :provenances => list(GoogleApi.CivicInfo.V2.Model.Provenance.t()),
          :administrationRegionIds => list(String.t()),
          :schoolDistrict => String.t(),
          :zip => String.t(),
          :judicialDistrict => String.t(),
          :mailOnly => boolean(),
          :townshipDistrict => String.t(),
          :endHouseNumber => String.t(),
          :catalistUniquePrecinctCode => String.t(),
          :startHouseNumber => String.t(),
          :stateSenateDistrict => String.t(),
          :voterGeographicDivisionOcdIds => list(String.t())
        }

  field(:ncoaAddress)
  field(:unitType)
  field(:unitNumber)
  field(:congressionalDistrict)
  field(:stateHouseDistrict)
  field(:precinctName)
  field(:geographicDivisionOcdIds, type: :list)
  field(:vanPrecinctCode)
  field(:startLatE7)
  field(:published)
  field(:contestIds, type: :list)
  field(:geocodedPoint, as: GoogleApi.CivicInfo.V2.Model.PointProto)
  field(:startLngE7)
  field(:municipalDistrict)
  field(:id)
  field(:streetName)
  field(:subAdministrativeAreaName)
  field(:surrogateId)
  field(:pollinglocationByIds, type: :list)
  field(:countyCouncilDistrict)
  field(:oddOrEvens, type: :list)
  field(:datasetId)
  field(:originalId)
  field(:state)
  field(:countyFips)
  field(:targetsmartUniquePrecinctCode)
  field(:precinctOcdId)
  field(:earlyVoteSiteByIds, type: :list)
  field(:wildcard)
  field(:city)
  field(:beforeGeocodeId)
  field(:cityCouncilDistrict)
  field(:wardDistrict)
  field(:provenances, as: GoogleApi.CivicInfo.V2.Model.Provenance, type: :list)
  field(:administrationRegionIds, type: :list)
  field(:schoolDistrict)
  field(:zip)
  field(:judicialDistrict)
  field(:mailOnly)
  field(:townshipDistrict)
  field(:endHouseNumber)
  field(:catalistUniquePrecinctCode)
  field(:startHouseNumber)
  field(:stateSenateDistrict)
  field(:voterGeographicDivisionOcdIds, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.CivicInfo.V2.Model.StreetSegment do
  def decode(value, options) do
    GoogleApi.CivicInfo.V2.Model.StreetSegment.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CivicInfo.V2.Model.StreetSegment do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end

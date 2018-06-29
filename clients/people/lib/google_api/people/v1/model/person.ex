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

defmodule GoogleApi.People.V1.Model.Person do
  @moduledoc """
  Information about a person merged from various data sources such as the authenticated user&#39;s contacts and profile data.  Most fields can have multiple items. The items in a field have no guaranteed order, but each non-empty field is guaranteed to have exactly one field with &#x60;metadata.primary&#x60; set to true.

  ## Attributes

  - addresses ([Address]): The person&#39;s street addresses. Defaults to: `null`.
  - ageRange (String.t): **DEPRECATED** (Please use &#x60;person.ageRanges&#x60; instead)**  The person&#39;s read-only age range. Defaults to: `null`.
    - Enum - one of [AGE_RANGE_UNSPECIFIED, LESS_THAN_EIGHTEEN, EIGHTEEN_TO_TWENTY, TWENTY_ONE_OR_OLDER]
  - ageRanges ([AgeRangeType]): The person&#39;s read-only age ranges. Defaults to: `null`.
  - biographies ([Biography]): The person&#39;s biographies. Defaults to: `null`.
  - birthdays ([Birthday]): The person&#39;s birthdays. Defaults to: `null`.
  - braggingRights ([BraggingRights]): The person&#39;s bragging rights. Defaults to: `null`.
  - coverPhotos ([CoverPhoto]): The person&#39;s read-only cover photos. Defaults to: `null`.
  - emailAddresses ([EmailAddress]): The person&#39;s email addresses. Defaults to: `null`.
  - etag (String.t): The [HTTP entity tag](https://en.wikipedia.org/wiki/HTTP_ETag) of the resource. Used for web cache validation. Defaults to: `null`.
  - events ([Event]): The person&#39;s events. Defaults to: `null`.
  - genders ([Gender]): The person&#39;s genders. Defaults to: `null`.
  - imClients ([ImClient]): The person&#39;s instant messaging clients. Defaults to: `null`.
  - interests ([Interest]): The person&#39;s interests. Defaults to: `null`.
  - locales ([Locale]): The person&#39;s locale preferences. Defaults to: `null`.
  - memberships ([Membership]): The person&#39;s read-only group memberships. Defaults to: `null`.
  - metadata (PersonMetadata): Read-only metadata about the person. Defaults to: `null`.
  - names ([Name]): The person&#39;s names. Defaults to: `null`.
  - nicknames ([Nickname]): The person&#39;s nicknames. Defaults to: `null`.
  - occupations ([Occupation]): The person&#39;s occupations. Defaults to: `null`.
  - organizations ([Organization]): The person&#39;s past or current organizations. Defaults to: `null`.
  - phoneNumbers ([PhoneNumber]): The person&#39;s phone numbers. Defaults to: `null`.
  - photos ([Photo]): The person&#39;s read-only photos. Defaults to: `null`.
  - relations ([Relation]): The person&#39;s relations. Defaults to: `null`.
  - relationshipInterests ([RelationshipInterest]): The person&#39;s read-only relationship interests. Defaults to: `null`.
  - relationshipStatuses ([RelationshipStatus]): The person&#39;s read-only relationship statuses. Defaults to: `null`.
  - residences ([Residence]): The person&#39;s residences. Defaults to: `null`.
  - resourceName (String.t): The resource name for the person, assigned by the server. An ASCII string with a max length of 27 characters, in the form of &#x60;people/&#x60;&lt;var&gt;person_id&lt;/var&gt;. Defaults to: `null`.
  - sipAddresses ([SipAddress]): The person&#39;s SIP addresses. Defaults to: `null`.
  - skills ([Skill]): The person&#39;s skills. Defaults to: `null`.
  - taglines ([Tagline]): The person&#39;s read-only taglines. Defaults to: `null`.
  - urls ([Url]): The person&#39;s associated URLs. Defaults to: `null`.
  - userDefined ([UserDefined]): The person&#39;s user defined data. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :addresses => list(GoogleApi.People.V1.Model.Address.t()),
          :ageRange => any(),
          :ageRanges => list(GoogleApi.People.V1.Model.AgeRangeType.t()),
          :biographies => list(GoogleApi.People.V1.Model.Biography.t()),
          :birthdays => list(GoogleApi.People.V1.Model.Birthday.t()),
          :braggingRights => list(GoogleApi.People.V1.Model.BraggingRights.t()),
          :coverPhotos => list(GoogleApi.People.V1.Model.CoverPhoto.t()),
          :emailAddresses => list(GoogleApi.People.V1.Model.EmailAddress.t()),
          :etag => any(),
          :events => list(GoogleApi.People.V1.Model.Event.t()),
          :genders => list(GoogleApi.People.V1.Model.Gender.t()),
          :imClients => list(GoogleApi.People.V1.Model.ImClient.t()),
          :interests => list(GoogleApi.People.V1.Model.Interest.t()),
          :locales => list(GoogleApi.People.V1.Model.Locale.t()),
          :memberships => list(GoogleApi.People.V1.Model.Membership.t()),
          :metadata => GoogleApi.People.V1.Model.PersonMetadata.t(),
          :names => list(GoogleApi.People.V1.Model.Name.t()),
          :nicknames => list(GoogleApi.People.V1.Model.Nickname.t()),
          :occupations => list(GoogleApi.People.V1.Model.Occupation.t()),
          :organizations => list(GoogleApi.People.V1.Model.Organization.t()),
          :phoneNumbers => list(GoogleApi.People.V1.Model.PhoneNumber.t()),
          :photos => list(GoogleApi.People.V1.Model.Photo.t()),
          :relations => list(GoogleApi.People.V1.Model.Relation.t()),
          :relationshipInterests => list(GoogleApi.People.V1.Model.RelationshipInterest.t()),
          :relationshipStatuses => list(GoogleApi.People.V1.Model.RelationshipStatus.t()),
          :residences => list(GoogleApi.People.V1.Model.Residence.t()),
          :resourceName => any(),
          :sipAddresses => list(GoogleApi.People.V1.Model.SipAddress.t()),
          :skills => list(GoogleApi.People.V1.Model.Skill.t()),
          :taglines => list(GoogleApi.People.V1.Model.Tagline.t()),
          :urls => list(GoogleApi.People.V1.Model.Url.t()),
          :userDefined => list(GoogleApi.People.V1.Model.UserDefined.t())
        }

  field(:addresses, as: GoogleApi.People.V1.Model.Address, type: :list)
  field(:ageRange)
  field(:ageRanges, as: GoogleApi.People.V1.Model.AgeRangeType, type: :list)
  field(:biographies, as: GoogleApi.People.V1.Model.Biography, type: :list)
  field(:birthdays, as: GoogleApi.People.V1.Model.Birthday, type: :list)
  field(:braggingRights, as: GoogleApi.People.V1.Model.BraggingRights, type: :list)
  field(:coverPhotos, as: GoogleApi.People.V1.Model.CoverPhoto, type: :list)
  field(:emailAddresses, as: GoogleApi.People.V1.Model.EmailAddress, type: :list)
  field(:etag)
  field(:events, as: GoogleApi.People.V1.Model.Event, type: :list)
  field(:genders, as: GoogleApi.People.V1.Model.Gender, type: :list)
  field(:imClients, as: GoogleApi.People.V1.Model.ImClient, type: :list)
  field(:interests, as: GoogleApi.People.V1.Model.Interest, type: :list)
  field(:locales, as: GoogleApi.People.V1.Model.Locale, type: :list)
  field(:memberships, as: GoogleApi.People.V1.Model.Membership, type: :list)
  field(:metadata, as: GoogleApi.People.V1.Model.PersonMetadata)
  field(:names, as: GoogleApi.People.V1.Model.Name, type: :list)
  field(:nicknames, as: GoogleApi.People.V1.Model.Nickname, type: :list)
  field(:occupations, as: GoogleApi.People.V1.Model.Occupation, type: :list)
  field(:organizations, as: GoogleApi.People.V1.Model.Organization, type: :list)
  field(:phoneNumbers, as: GoogleApi.People.V1.Model.PhoneNumber, type: :list)
  field(:photos, as: GoogleApi.People.V1.Model.Photo, type: :list)
  field(:relations, as: GoogleApi.People.V1.Model.Relation, type: :list)
  field(:relationshipInterests, as: GoogleApi.People.V1.Model.RelationshipInterest, type: :list)
  field(:relationshipStatuses, as: GoogleApi.People.V1.Model.RelationshipStatus, type: :list)
  field(:residences, as: GoogleApi.People.V1.Model.Residence, type: :list)
  field(:resourceName)
  field(:sipAddresses, as: GoogleApi.People.V1.Model.SipAddress, type: :list)
  field(:skills, as: GoogleApi.People.V1.Model.Skill, type: :list)
  field(:taglines, as: GoogleApi.People.V1.Model.Tagline, type: :list)
  field(:urls, as: GoogleApi.People.V1.Model.Url, type: :list)
  field(:userDefined, as: GoogleApi.People.V1.Model.UserDefined, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.People.V1.Model.Person do
  def decode(value, options) do
    GoogleApi.People.V1.Model.Person.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.People.V1.Model.Person do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end

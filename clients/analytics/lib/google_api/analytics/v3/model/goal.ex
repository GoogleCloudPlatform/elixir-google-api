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

defmodule GoogleApi.Analytics.V3.Model.Goal do
  @moduledoc """
  JSON template for Analytics goal resource.

  ## Attributes

  - accountId (String.t): Account ID to which this goal belongs. Defaults to `nil`.
  - active (boolean()): Determines whether this goal is active. Defaults to `nil`.
  - created (DateTime.t): Time this goal was created. Defaults to `nil`.
  - eventDetails (GoogleApi.Analytics.V3.Model.GoalEventDetails.t): Details for the goal of the type EVENT. Defaults to `nil`.
  - id (String.t): Goal ID. Defaults to `nil`.
  - internalWebPropertyId (String.t): Internal ID for the web property to which this goal belongs. Defaults to `nil`.
  - kind (String.t): Resource type for an Analytics goal. Defaults to `analytics#goal`.
  - name (String.t): Goal name. Defaults to `nil`.
  - parentLink (GoogleApi.Analytics.V3.Model.GoalParentLink.t): Parent link for a goal. Points to the view (profile) to which this goal belongs. Defaults to `nil`.
  - profileId (String.t): View (Profile) ID to which this goal belongs. Defaults to `nil`.
  - selfLink (String.t): Link for this goal. Defaults to `nil`.
  - type (String.t): Goal type. Possible values are URL_DESTINATION, VISIT_TIME_ON_SITE, VISIT_NUM_PAGES, AND EVENT. Defaults to `nil`.
  - updated (DateTime.t): Time this goal was last modified. Defaults to `nil`.
  - urlDestinationDetails (GoogleApi.Analytics.V3.Model.GoalUrlDestinationDetails.t): Details for the goal of the type URL_DESTINATION. Defaults to `nil`.
  - value (number()): Goal value. Defaults to `nil`.
  - visitNumPagesDetails (GoogleApi.Analytics.V3.Model.GoalVisitNumPagesDetails.t): Details for the goal of the type VISIT_NUM_PAGES. Defaults to `nil`.
  - visitTimeOnSiteDetails (GoogleApi.Analytics.V3.Model.GoalVisitTimeOnSiteDetails.t): Details for the goal of the type VISIT_TIME_ON_SITE. Defaults to `nil`.
  - webPropertyId (String.t): Web property ID to which this goal belongs. The web property ID is of the form UA-XXXXX-YY. Defaults to `nil`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :accountId => String.t(),
          :active => boolean(),
          :created => DateTime.t(),
          :eventDetails => GoogleApi.Analytics.V3.Model.GoalEventDetails.t(),
          :id => String.t(),
          :internalWebPropertyId => String.t(),
          :kind => String.t(),
          :name => String.t(),
          :parentLink => GoogleApi.Analytics.V3.Model.GoalParentLink.t(),
          :profileId => String.t(),
          :selfLink => String.t(),
          :type => String.t(),
          :updated => DateTime.t(),
          :urlDestinationDetails => GoogleApi.Analytics.V3.Model.GoalUrlDestinationDetails.t(),
          :value => number(),
          :visitNumPagesDetails => GoogleApi.Analytics.V3.Model.GoalVisitNumPagesDetails.t(),
          :visitTimeOnSiteDetails => GoogleApi.Analytics.V3.Model.GoalVisitTimeOnSiteDetails.t(),
          :webPropertyId => String.t()
        }

  field(:accountId)
  field(:active)
  field(:created, as: DateTime)
  field(:eventDetails, as: GoogleApi.Analytics.V3.Model.GoalEventDetails)
  field(:id)
  field(:internalWebPropertyId)
  field(:kind)
  field(:name)
  field(:parentLink, as: GoogleApi.Analytics.V3.Model.GoalParentLink)
  field(:profileId)
  field(:selfLink)
  field(:type)
  field(:updated, as: DateTime)
  field(:urlDestinationDetails, as: GoogleApi.Analytics.V3.Model.GoalUrlDestinationDetails)
  field(:value)
  field(:visitNumPagesDetails, as: GoogleApi.Analytics.V3.Model.GoalVisitNumPagesDetails)
  field(:visitTimeOnSiteDetails, as: GoogleApi.Analytics.V3.Model.GoalVisitTimeOnSiteDetails)
  field(:webPropertyId)
end

defimpl Poison.Decoder, for: GoogleApi.Analytics.V3.Model.Goal do
  def decode(value, options) do
    GoogleApi.Analytics.V3.Model.Goal.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Analytics.V3.Model.Goal do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end

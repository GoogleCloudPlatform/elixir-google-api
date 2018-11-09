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

defmodule GoogleApi.Analytics.V3.Model.Filter do
  @moduledoc """
  JSON template for an Analytics account filter.

  ## Attributes

  - accountId (String.t): Account ID to which this filter belongs. Defaults to: `null`.
  - advancedDetails (FilterAdvancedDetails):  Defaults to: `null`.
  - created (DateTime.t): Time this filter was created. Defaults to: `null`.
  - excludeDetails (FilterExpression): Details for the filter of the type EXCLUDE. Defaults to: `null`.
  - id (String.t): Filter ID. Defaults to: `null`.
  - includeDetails (FilterExpression): Details for the filter of the type INCLUDE. Defaults to: `null`.
  - kind (String.t): Resource type for Analytics filter. Defaults to: `null`.
  - lowercaseDetails (FilterLowercaseDetails):  Defaults to: `null`.
  - name (String.t): Name of this filter. Defaults to: `null`.
  - parentLink (FilterParentLink):  Defaults to: `null`.
  - searchAndReplaceDetails (FilterSearchAndReplaceDetails):  Defaults to: `null`.
  - selfLink (String.t): Link for this filter. Defaults to: `null`.
  - type (String.t): Type of this filter. Possible values are INCLUDE, EXCLUDE, LOWERCASE, UPPERCASE, SEARCH_AND_REPLACE and ADVANCED. Defaults to: `null`.
  - updated (DateTime.t): Time this filter was last modified. Defaults to: `null`.
  - uppercaseDetails (FilterUppercaseDetails):  Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :accountId => any(),
          :advancedDetails => GoogleApi.Analytics.V3.Model.FilterAdvancedDetails.t(),
          :created => DateTime.t(),
          :excludeDetails => GoogleApi.Analytics.V3.Model.FilterExpression.t(),
          :id => any(),
          :includeDetails => GoogleApi.Analytics.V3.Model.FilterExpression.t(),
          :kind => any(),
          :lowercaseDetails => GoogleApi.Analytics.V3.Model.FilterLowercaseDetails.t(),
          :name => any(),
          :parentLink => GoogleApi.Analytics.V3.Model.FilterParentLink.t(),
          :searchAndReplaceDetails =>
            GoogleApi.Analytics.V3.Model.FilterSearchAndReplaceDetails.t(),
          :selfLink => any(),
          :type => any(),
          :updated => DateTime.t(),
          :uppercaseDetails => GoogleApi.Analytics.V3.Model.FilterUppercaseDetails.t()
        }

  field(:accountId)
  field(:advancedDetails, as: GoogleApi.Analytics.V3.Model.FilterAdvancedDetails)
  field(:created, as: DateTime)
  field(:excludeDetails, as: GoogleApi.Analytics.V3.Model.FilterExpression)
  field(:id)
  field(:includeDetails, as: GoogleApi.Analytics.V3.Model.FilterExpression)
  field(:kind)
  field(:lowercaseDetails, as: GoogleApi.Analytics.V3.Model.FilterLowercaseDetails)
  field(:name)
  field(:parentLink, as: GoogleApi.Analytics.V3.Model.FilterParentLink)
  field(:searchAndReplaceDetails, as: GoogleApi.Analytics.V3.Model.FilterSearchAndReplaceDetails)
  field(:selfLink)
  field(:type)
  field(:updated, as: DateTime)
  field(:uppercaseDetails, as: GoogleApi.Analytics.V3.Model.FilterUppercaseDetails)
end

defimpl Poison.Decoder, for: GoogleApi.Analytics.V3.Model.Filter do
  def decode(value, options) do
    GoogleApi.Analytics.V3.Model.Filter.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Analytics.V3.Model.Filter do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end

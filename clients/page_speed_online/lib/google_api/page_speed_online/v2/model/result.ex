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

defmodule GoogleApi.PageSpeedOnline.V2.Model.Result do
  @moduledoc """


  ## Attributes

  - captchaResult (String.t): The captcha verify result Defaults to: `null`.
  - formattedResults (ResultFormattedResults):  Defaults to: `null`.
  - id (String.t): Canonicalized and final URL for the document, after following page redirects (if any). Defaults to: `null`.
  - invalidRules ([String.t]): List of rules that were specified in the request, but which the server did not know how to instantiate. Defaults to: `null`.
  - kind (String.t): Kind of result. Defaults to: `null`.
  - pageStats (ResultPageStats):  Defaults to: `null`.
  - responseCode (integer()): Response code for the document. 200 indicates a normal page load. 4xx/5xx indicates an error. Defaults to: `null`.
  - ruleGroups (%{optional(String.t) &#x3D;&gt; ResultRuleGroups}): A map with one entry for each rule group in these results. Defaults to: `null`.
  - screenshot (PagespeedApiImageV2): Base64-encoded screenshot of the page that was analyzed. Defaults to: `null`.
  - title (String.t): Title of the page, as displayed in the browser&#39;s title bar. Defaults to: `null`.
  - version (ResultVersion):  Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :captchaResult => any(),
          :formattedResults => GoogleApi.PageSpeedOnline.V2.Model.ResultFormattedResults.t(),
          :id => any(),
          :invalidRules => list(any()),
          :kind => any(),
          :pageStats => GoogleApi.PageSpeedOnline.V2.Model.ResultPageStats.t(),
          :responseCode => any(),
          :ruleGroups => map(),
          :screenshot => GoogleApi.PageSpeedOnline.V2.Model.PagespeedApiImageV2.t(),
          :title => any(),
          :version => GoogleApi.PageSpeedOnline.V2.Model.ResultVersion.t()
        }

  field(:captchaResult)
  field(:formattedResults, as: GoogleApi.PageSpeedOnline.V2.Model.ResultFormattedResults)
  field(:id)
  field(:invalidRules, type: :list)
  field(:kind)
  field(:pageStats, as: GoogleApi.PageSpeedOnline.V2.Model.ResultPageStats)
  field(:responseCode)
  field(:ruleGroups, as: GoogleApi.PageSpeedOnline.V2.Model.ResultRuleGroups, type: :map)
  field(:screenshot, as: GoogleApi.PageSpeedOnline.V2.Model.PagespeedApiImageV2)
  field(:title)
  field(:version, as: GoogleApi.PageSpeedOnline.V2.Model.ResultVersion)
end

defimpl Poison.Decoder, for: GoogleApi.PageSpeedOnline.V2.Model.Result do
  def decode(value, options) do
    GoogleApi.PageSpeedOnline.V2.Model.Result.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.PageSpeedOnline.V2.Model.Result do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end

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

defmodule GoogleApi.PageSpeedOnline.V2.Model.ResultPageStats do
  @moduledoc """
  Summary statistics for the page, such as number of JavaScript bytes, number of HTML bytes, etc.

  ## Attributes

  - cssResponseBytes (String.t): Number of uncompressed response bytes for CSS resources on the page. Defaults to: `null`.
  - flashResponseBytes (String.t): Number of response bytes for flash resources on the page. Defaults to: `null`.
  - htmlResponseBytes (String.t): Number of uncompressed response bytes for the main HTML document and all iframes on the page. Defaults to: `null`.
  - imageResponseBytes (String.t): Number of response bytes for image resources on the page. Defaults to: `null`.
  - javascriptResponseBytes (String.t): Number of uncompressed response bytes for JS resources on the page. Defaults to: `null`.
  - numberCssResources (integer()): Number of CSS resources referenced by the page. Defaults to: `null`.
  - numberHosts (integer()): Number of unique hosts referenced by the page. Defaults to: `null`.
  - numberJsResources (integer()): Number of JavaScript resources referenced by the page. Defaults to: `null`.
  - numberResources (integer()): Number of HTTP resources loaded by the page. Defaults to: `null`.
  - numberStaticResources (integer()): Number of static (i.e. cacheable) resources on the page. Defaults to: `null`.
  - otherResponseBytes (String.t): Number of response bytes for other resources on the page. Defaults to: `null`.
  - textResponseBytes (String.t): Number of uncompressed response bytes for text resources not covered by other statistics (i.e non-HTML, non-script, non-CSS resources) on the page. Defaults to: `null`.
  - totalRequestBytes (String.t): Total size of all request bytes sent by the page. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :cssResponseBytes => any(),
          :flashResponseBytes => any(),
          :htmlResponseBytes => any(),
          :imageResponseBytes => any(),
          :javascriptResponseBytes => any(),
          :numberCssResources => any(),
          :numberHosts => any(),
          :numberJsResources => any(),
          :numberResources => any(),
          :numberStaticResources => any(),
          :otherResponseBytes => any(),
          :textResponseBytes => any(),
          :totalRequestBytes => any()
        }

  field(:cssResponseBytes)
  field(:flashResponseBytes)
  field(:htmlResponseBytes)
  field(:imageResponseBytes)
  field(:javascriptResponseBytes)
  field(:numberCssResources)
  field(:numberHosts)
  field(:numberJsResources)
  field(:numberResources)
  field(:numberStaticResources)
  field(:otherResponseBytes)
  field(:textResponseBytes)
  field(:totalRequestBytes)
end

defimpl Poison.Decoder, for: GoogleApi.PageSpeedOnline.V2.Model.ResultPageStats do
  def decode(value, options) do
    GoogleApi.PageSpeedOnline.V2.Model.ResultPageStats.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.PageSpeedOnline.V2.Model.ResultPageStats do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end

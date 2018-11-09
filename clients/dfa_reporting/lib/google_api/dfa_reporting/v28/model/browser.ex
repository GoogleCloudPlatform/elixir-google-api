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

defmodule GoogleApi.DFAReporting.V28.Model.Browser do
  @moduledoc """
  Contains information about a browser that can be targeted by ads.

  ## Attributes

  - browserVersionId (String.t): ID referring to this grouping of browser and version numbers. This is the ID used for targeting. Defaults to: `null`.
  - dartId (String.t): DART ID of this browser. This is the ID used when generating reports. Defaults to: `null`.
  - kind (String.t): Identifies what kind of resource this is. Value: the fixed string \&quot;dfareporting#browser\&quot;. Defaults to: `null`.
  - majorVersion (String.t): Major version number (leftmost number) of this browser. For example, for Chrome 5.0.376.86 beta, this field should be set to 5. An asterisk (*) may be used to target any version number, and a question mark (?) may be used to target cases where the version number cannot be identified. For example, Chrome *.* targets any version of Chrome: 1.2, 2.5, 3.5, and so on. Chrome 3.* targets Chrome 3.1, 3.5, but not 4.0. Firefox ?.? targets cases where the ad server knows the browser is Firefox but can&#39;t tell which version it is. Defaults to: `null`.
  - minorVersion (String.t): Minor version number (number after first dot on left) of this browser. For example, for Chrome 5.0.375.86 beta, this field should be set to 0. An asterisk (*) may be used to target any version number, and a question mark (?) may be used to target cases where the version number cannot be identified. For example, Chrome *.* targets any version of Chrome: 1.2, 2.5, 3.5, and so on. Chrome 3.* targets Chrome 3.1, 3.5, but not 4.0. Firefox ?.? targets cases where the ad server knows the browser is Firefox but can&#39;t tell which version it is. Defaults to: `null`.
  - name (String.t): Name of this browser. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :browserVersionId => any(),
          :dartId => any(),
          :kind => any(),
          :majorVersion => any(),
          :minorVersion => any(),
          :name => any()
        }

  field(:browserVersionId)
  field(:dartId)
  field(:kind)
  field(:majorVersion)
  field(:minorVersion)
  field(:name)
end

defimpl Poison.Decoder, for: GoogleApi.DFAReporting.V28.Model.Browser do
  def decode(value, options) do
    GoogleApi.DFAReporting.V28.Model.Browser.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DFAReporting.V28.Model.Browser do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end

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

defmodule GoogleApi.IdentityToolkit.V3.Model.Relyingparty do
  @moduledoc """
  Request of getting a code for user confirmation (reset password, change email etc.)

  ## Attributes

  - androidInstallApp (Boolean): whether or not to install the android app on the device where the link is opened Defaults to: `null`.
  - androidMinimumVersion (String): minimum version of the app. if the version on the device is lower than this version then the user is taken to the play store to upgrade the app Defaults to: `null`.
  - androidPackageName (String): android package name of the android app to handle the action code Defaults to: `null`.
  - canHandleCodeInApp (Boolean): whether or not the app can handle the oob code without first going to web Defaults to: `null`.
  - captchaResp (String): The recaptcha response from the user. Defaults to: `null`.
  - challenge (String): The recaptcha challenge presented to the user. Defaults to: `null`.
  - continueUrl (String): The url to continue to the Gitkit app Defaults to: `null`.
  - email (String): The email of the user. Defaults to: `null`.
  - iOSAppStoreId (String): iOS app store id to download the app if it&#39;s not already installed Defaults to: `null`.
  - iOSBundleId (String): the iOS bundle id of iOS app to handle the action code Defaults to: `null`.
  - idToken (String): The user&#39;s Gitkit login token for email change. Defaults to: `null`.
  - kind (String): The fixed string \&quot;identitytoolkit#relyingparty\&quot;. Defaults to: `null`.
  - newEmail (String): The new email if the code is for email change. Defaults to: `null`.
  - requestType (String): The request type. Defaults to: `null`.
  - userIp (String): The IP address of the user. Defaults to: `null`.
  """

  defstruct [
    :"androidInstallApp",
    :"androidMinimumVersion",
    :"androidPackageName",
    :"canHandleCodeInApp",
    :"captchaResp",
    :"challenge",
    :"continueUrl",
    :"email",
    :"iOSAppStoreId",
    :"iOSBundleId",
    :"idToken",
    :"kind",
    :"newEmail",
    :"requestType",
    :"userIp"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.IdentityToolkit.V3.Model.Relyingparty do
  def decode(value, _options) do
    value
  end
end

defimpl Poison.Encoder, for: GoogleApi.IdentityToolkit.V3.Model.Relyingparty do
  def encode(value, options) do
    GoogleApi.IdentityToolkit.V3.Deserializer.serialize_non_nil(value, options)
  end
end


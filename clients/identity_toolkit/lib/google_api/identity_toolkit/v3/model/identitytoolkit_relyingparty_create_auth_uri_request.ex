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

defmodule GoogleApi.IdentityToolkit.V3.Model.IdentitytoolkitRelyingpartyCreateAuthUriRequest do
  @moduledoc """
  Request to get the IDP authentication URL.

  ## Attributes

  - appId (String): The app ID of the mobile app, base64(CERT_SHA1):PACKAGE_NAME for Android, BUNDLE_ID for iOS. Defaults to: `null`.
  - authFlowType (String): Explicitly specify the auth flow type. Currently only support \&quot;CODE_FLOW\&quot; type. The field is only used for Google provider. Defaults to: `null`.
  - clientId (String): The relying party OAuth client ID. Defaults to: `null`.
  - context (String): The opaque value used by the client to maintain context info between the authentication request and the IDP callback. Defaults to: `null`.
  - continueUri (String): The URI to which the IDP redirects the user after the federated login flow. Defaults to: `null`.
  - customParameter (Map[String, String]): The query parameter that client can customize by themselves in auth url. The following parameters are reserved for server so that they cannot be customized by clients: client_id, response_type, scope, redirect_uri, state, oauth_token. Defaults to: `null`.
  - hostedDomain (String): The hosted domain to restrict sign-in to accounts at that domain for Google Apps hosted accounts. Defaults to: `null`.
  - identifier (String): The email or federated ID of the user. Defaults to: `null`.
  - oauthConsumerKey (String): The developer&#39;s consumer key for OpenId OAuth Extension Defaults to: `null`.
  - oauthScope (String): Additional oauth scopes, beyond the basid user profile, that the user would be prompted to grant Defaults to: `null`.
  - openidRealm (String): Optional realm for OpenID protocol. The sub string \&quot;scheme://domain:port\&quot; of the param \&quot;continueUri\&quot; is used if this is not set. Defaults to: `null`.
  - otaApp (String): The native app package for OTA installation. Defaults to: `null`.
  - providerId (String): The IdP ID. For white listed IdPs it&#39;s a short domain name e.g. google.com, aol.com, live.net and yahoo.com. For other OpenID IdPs it&#39;s the OP identifier. Defaults to: `null`.
  - sessionId (String): The session_id passed by client. Defaults to: `null`.
  """

  defstruct [
    :"appId",
    :"authFlowType",
    :"clientId",
    :"context",
    :"continueUri",
    :"customParameter",
    :"hostedDomain",
    :"identifier",
    :"oauthConsumerKey",
    :"oauthScope",
    :"openidRealm",
    :"otaApp",
    :"providerId",
    :"sessionId"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.IdentityToolkit.V3.Model.IdentitytoolkitRelyingpartyCreateAuthUriRequest do
  def decode(value, _options) do
    value
  end
end

defimpl Poison.Encoder, for: GoogleApi.IdentityToolkit.V3.Model.IdentitytoolkitRelyingpartyCreateAuthUriRequest do
  def encode(value, options) do
    GoogleApi.IdentityToolkit.V3.Deserializer.serialize_non_nil(value, options)
  end
end


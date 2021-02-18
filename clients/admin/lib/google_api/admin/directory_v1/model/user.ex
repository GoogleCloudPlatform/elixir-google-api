# Copyright 2019 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# NOTE: This file is auto generated by the elixir code generator program.
# Do not edit this file manually.

defmodule GoogleApi.Admin.Directory_v1.Model.User do
  @moduledoc """
  The Directory API allows you to create and manage your account's users, user aliases, and user Gmail chat profile photos. For more information about common tasks, see the [User Accounts Developer's Guide](/admin-sdk/directory/v1/guides/manage-users.html) and the [User Aliases Developer's Guide](/admin-sdk/directory/v1/guides/manage-user-aliases.html).

  ## Attributes

  *   `ims` (*type:* `any()`, *default:* `nil`) - The user's Instant Messenger (IM) accounts. A user account can have multiple ims properties. But, only one of these ims properties can be the primary IM contact. The maximum allowed data size for this field is 2Kb.
  *   `posixAccounts` (*type:* `any()`, *default:* `nil`) - A list of [POSIX](https://www.opengroup.org/austin/papers/posix_faq.html) account information for the user.
  *   `etag` (*type:* `String.t`, *default:* `nil`) - Output only. ETag of the resource.
  *   `orgUnitPath` (*type:* `String.t`, *default:* `nil`) - The full path of the parent organization associated with the user. If the parent organization is the top-level, it is represented as a forward slash (`/`).
  *   `suspensionReason` (*type:* `String.t`, *default:* `nil`) - Output only. Has the reason a user account is suspended either by the administrator or by Google at the time of suspension. The property is returned only if the `suspended` property is `true`.
  *   `agreedToTerms` (*type:* `boolean()`, *default:* `nil`) - Output only. This property is `true` if the user has completed an initial login and accepted the Terms of Service agreement.
  *   `customSchemas` (*type:* `%{optional(String.t) => GoogleApi.Admin.Directory_v1.Model.UserCustomProperties.t}`, *default:* `nil`) - Custom fields of the user.
  *   `externalIds` (*type:* `any()`, *default:* `nil`) - A list of external IDs for the user, such as an employee or network ID. The maximum allowed data size for this field is 2Kb.
  *   `gender` (*type:* `any()`, *default:* `nil`) - The user's gender. The maximum allowed data size for this field is 1Kb.
  *   `recoveryPhone` (*type:* `String.t`, *default:* `nil`) - Recovery phone of the user. The phone number must be in the E.164 format, starting with the plus sign (+). Example: *+16506661212*.
  *   `deletionTime` (*type:* `DateTime.t`, *default:* `nil`) - 
  *   `keywords` (*type:* `any()`, *default:* `nil`) - The user's keywords. The maximum allowed data size for this field is 1Kb.
  *   `isEnrolledIn2Sv` (*type:* `boolean()`, *default:* `nil`) - Output only. Is enrolled in 2-step verification (Read-only)
  *   `includeInGlobalAddressList` (*type:* `boolean()`, *default:* `nil`) - Indicates if the user's profile is visible in the Google Workspace global address list when the contact sharing feature is enabled for the domain. For more information about excluding user profiles, see the [administration help center](https://support.google.com/a/answer/1285988).
  *   `addresses` (*type:* `any()`, *default:* `nil`) - A list of the user's addresses. The maximum allowed data size for this field is 10Kb.
  *   `kind` (*type:* `String.t`, *default:* `admin#directory#user`) - Output only. The type of the API resource. For Users resources, the value is `admin#directory#user`.
  *   `sshPublicKeys` (*type:* `any()`, *default:* `nil`) - A list of SSH public keys.
  *   `languages` (*type:* `any()`, *default:* `nil`) - The user's languages. The maximum allowed data size for this field is 1Kb.
  *   `password` (*type:* `String.t`, *default:* `nil`) - User's password
  *   `thumbnailPhotoEtag` (*type:* `String.t`, *default:* `nil`) - Output only. ETag of the user's photo (Read-only)
  *   `hashFunction` (*type:* `String.t`, *default:* `nil`) - Stores the hash format of the password property. We recommend sending the `password` property value as a base 16 bit hexadecimal-encoded hash value. Set the `hashFunction` values as either the [SHA-1](https://wikipedia.org/wiki/SHA-1), [MD5](https://wikipedia.org/wiki/MD5), or [crypt](https://en.wikipedia.org/wiki/Crypt_\\(C\\)) hash format.
  *   `name` (*type:* `GoogleApi.Admin.Directory_v1.Model.UserName.t`, *default:* `nil`) - Holds the given and family names of the user, and the read-only `fullName` value. The maximum number of characters in the `givenName` and in the `familyName` values is 60. In addition, name values support unicode/UTF-8 characters, and can contain spaces, letters (a-z), numbers (0-9), dashes (-), forward slashes (/), and periods (.). For more information about character usage rules, see the [administration help center](https://support.google.com/a/answer/9193374). Maximum allowed data size for this field is 1Kb.
  *   `suspended` (*type:* `boolean()`, *default:* `nil`) - Indicates if user is suspended.
  *   `lastLoginTime` (*type:* `DateTime.t`, *default:* `nil`) - User's last login time. (Read-only)
  *   `relations` (*type:* `any()`, *default:* `nil`) - A list of the user's relationships to other users. The maximum allowed data size for this field is 2Kb.
  *   `recoveryEmail` (*type:* `String.t`, *default:* `nil`) - Recovery email of the user.
  *   `websites` (*type:* `any()`, *default:* `nil`) - The user's websites. The maximum allowed data size for this field is 2Kb.
  *   `primaryEmail` (*type:* `String.t`, *default:* `nil`) - The user's primary email address. This property is required in a request to create a user account. The `primaryEmail` must be unique and cannot be an alias of another user.
  *   `ipWhitelisted` (*type:* `boolean()`, *default:* `nil`) - If `true`, the user's IP address is [whitelisted](https://support.google.com/a/answer/60752).
  *   `creationTime` (*type:* `DateTime.t`, *default:* `nil`) - User's G Suite account creation time. (Read-only)
  *   `customerId` (*type:* `String.t`, *default:* `nil`) - Output only. The customer ID to [retrieve all account users](/admin-sdk/directory/v1/guides/manage-users.html#get_all_users). You can use the alias `my_customer` to represent your account's `customerId`. As a reseller administrator, you can use the resold customer account's `customerId`. To get a `customerId`, use the account's primary domain in the `domain` parameter of a [users.list](/admin-sdk/directory/v1/reference/users/list) request.
  *   `archived` (*type:* `boolean()`, *default:* `nil`) - Indicates if user is archived.
  *   `isDelegatedAdmin` (*type:* `boolean()`, *default:* `nil`) - Output only. Indicates if the user is a delegated administrator. Delegated administrators are supported by the API but cannot create or undelete users, or make users administrators. These requests are ignored by the API service. Roles and privileges for administrators are assigned using the [Admin console](https://support.google.com/a/answer/33325).
  *   `locations` (*type:* `any()`, *default:* `nil`) - The user's locations. The maximum allowed data size for this field is 10Kb.
  *   `nonEditableAliases` (*type:* `list(String.t)`, *default:* `nil`) - Output only. List of the user's non-editable alias email addresses. These are typically outside the account's primary domain or sub-domain.
  *   `emails` (*type:* `any()`, *default:* `nil`) - A list of the user's email addresses. The maximum allowed data size for this field is 10Kb.
  *   `isAdmin` (*type:* `boolean()`, *default:* `nil`) - Output only. Indicates a user with super admininistrator privileges. The `isAdmin` property can only be edited in the [Make a user an administrator](/admin-sdk/directory/v1/guides/manage-users.html#make_admin) operation ( [makeAdmin](/admin-sdk/directory/v1/reference/users/makeAdmin.html) method). If edited in the user [insert](/admin-sdk/directory/v1/reference/users/insert.html) or [update](/admin-sdk/directory/v1/reference/users/update.html) methods, the edit is ignored by the API service.
  *   `aliases` (*type:* `list(String.t)`, *default:* `nil`) - Output only. List of the user's alias email addresses.
  *   `id` (*type:* `String.t`, *default:* `nil`) - The unique ID for the user. A user `id` can be used as a user request URI's `userKey`.
  *   `isEnforcedIn2Sv` (*type:* `boolean()`, *default:* `nil`) - Output only. Is 2-step verification enforced (Read-only)
  *   `thumbnailPhotoUrl` (*type:* `String.t`, *default:* `nil`) - Output only. Photo Url of the user (Read-only)
  *   `phones` (*type:* `any()`, *default:* `nil`) - A list of the user's phone numbers. The maximum allowed data size for this field is 1Kb.
  *   `notes` (*type:* `any()`, *default:* `nil`) - Notes for the user.
  *   `changePasswordAtNextLogin` (*type:* `boolean()`, *default:* `nil`) - Indicates if the user is forced to change their password at next login. This setting doesn't apply when [the user signs in via a third-party identity provider](https://support.google.com/a/answer/60224).
  *   `isMailboxSetup` (*type:* `boolean()`, *default:* `nil`) - Output only. Indicates if the user's Google mailbox is created. This property is only applicable if the user has been assigned a Gmail license.
  *   `organizations` (*type:* `any()`, *default:* `nil`) - A list of organizations the user belongs to. The maximum allowed data size for this field is 10Kb.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :ims => any(),
          :posixAccounts => any(),
          :etag => String.t(),
          :orgUnitPath => String.t(),
          :suspensionReason => String.t(),
          :agreedToTerms => boolean(),
          :customSchemas => %{
            optional(String.t()) => GoogleApi.Admin.Directory_v1.Model.UserCustomProperties.t()
          },
          :externalIds => any(),
          :gender => any(),
          :recoveryPhone => String.t(),
          :deletionTime => DateTime.t(),
          :keywords => any(),
          :isEnrolledIn2Sv => boolean(),
          :includeInGlobalAddressList => boolean(),
          :addresses => any(),
          :kind => String.t(),
          :sshPublicKeys => any(),
          :languages => any(),
          :password => String.t(),
          :thumbnailPhotoEtag => String.t(),
          :hashFunction => String.t(),
          :name => GoogleApi.Admin.Directory_v1.Model.UserName.t(),
          :suspended => boolean(),
          :lastLoginTime => DateTime.t(),
          :relations => any(),
          :recoveryEmail => String.t(),
          :websites => any(),
          :primaryEmail => String.t(),
          :ipWhitelisted => boolean(),
          :creationTime => DateTime.t(),
          :customerId => String.t(),
          :archived => boolean(),
          :isDelegatedAdmin => boolean(),
          :locations => any(),
          :nonEditableAliases => list(String.t()),
          :emails => any(),
          :isAdmin => boolean(),
          :aliases => list(String.t()),
          :id => String.t(),
          :isEnforcedIn2Sv => boolean(),
          :thumbnailPhotoUrl => String.t(),
          :phones => any(),
          :notes => any(),
          :changePasswordAtNextLogin => boolean(),
          :isMailboxSetup => boolean(),
          :organizations => any()
        }

  field(:ims)
  field(:posixAccounts)
  field(:etag)
  field(:orgUnitPath)
  field(:suspensionReason)
  field(:agreedToTerms)
  field(:customSchemas, as: GoogleApi.Admin.Directory_v1.Model.UserCustomProperties, type: :map)
  field(:externalIds)
  field(:gender)
  field(:recoveryPhone)
  field(:deletionTime, as: DateTime)
  field(:keywords)
  field(:isEnrolledIn2Sv)
  field(:includeInGlobalAddressList)
  field(:addresses)
  field(:kind)
  field(:sshPublicKeys)
  field(:languages)
  field(:password)
  field(:thumbnailPhotoEtag)
  field(:hashFunction)
  field(:name, as: GoogleApi.Admin.Directory_v1.Model.UserName)
  field(:suspended)
  field(:lastLoginTime, as: DateTime)
  field(:relations)
  field(:recoveryEmail)
  field(:websites)
  field(:primaryEmail)
  field(:ipWhitelisted)
  field(:creationTime, as: DateTime)
  field(:customerId)
  field(:archived)
  field(:isDelegatedAdmin)
  field(:locations)
  field(:nonEditableAliases, type: :list)
  field(:emails)
  field(:isAdmin)
  field(:aliases, type: :list)
  field(:id)
  field(:isEnforcedIn2Sv)
  field(:thumbnailPhotoUrl)
  field(:phones)
  field(:notes)
  field(:changePasswordAtNextLogin)
  field(:isMailboxSetup)
  field(:organizations)
end

defimpl Poison.Decoder, for: GoogleApi.Admin.Directory_v1.Model.User do
  def decode(value, options) do
    GoogleApi.Admin.Directory_v1.Model.User.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Admin.Directory_v1.Model.User do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end

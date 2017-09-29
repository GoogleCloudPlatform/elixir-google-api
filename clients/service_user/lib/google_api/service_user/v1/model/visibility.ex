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

defmodule GoogleApi.ServiceUser.V1.Model.Visibility do
  @moduledoc """
  &#x60;Visibility&#x60; defines restrictions for the visibility of service elements.  Restrictions are specified using visibility labels (e.g., TRUSTED_TESTER) that are elsewhere linked to users and projects.  Users and projects can have access to more than one visibility label. The effective visibility for multiple labels is the union of each label&#39;s elements, plus any unrestricted elements.  If an element and its parents have no restrictions, visibility is unconditionally granted.  Example:      visibility:       rules:       - selector: google.calendar.Calendar.EnhancedSearch         restriction: TRUSTED_TESTER       - selector: google.calendar.Calendar.Delegate         restriction: GOOGLE_INTERNAL  Here, all methods are publicly visible except for the restricted methods EnhancedSearch and Delegate.

  ## Attributes

  - rules (List[VisibilityRule]): A list of visibility rules that apply to individual API elements.  **NOTE:** All service configuration rules follow \&quot;last one wins\&quot; order. Defaults to: `null`.
  """

  defstruct [
    :"rules"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.ServiceUser.V1.Model.Visibility do
  import GoogleApi.ServiceUser.V1.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"rules", :list, GoogleApi.ServiceUser.V1.Model.VisibilityRule, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ServiceUser.V1.Model.Visibility do
  def encode(value, options) do
    GoogleApi.ServiceUser.V1.Deserializer.serialize_non_nil(value, options)
  end
end


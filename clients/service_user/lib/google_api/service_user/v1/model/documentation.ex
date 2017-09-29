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

defmodule GoogleApi.ServiceUser.V1.Model.Documentation do
  @moduledoc """
  &#x60;Documentation&#x60; provides the information for describing a service.  Example: &lt;pre&gt;&lt;code&gt;documentation:   summary: &gt;     The Google Calendar API gives access     to most calendar features.   pages:   - name: Overview     content: &amp;#40;&#x3D;&#x3D; include google/foo/overview.md &#x3D;&#x3D;&amp;#41;   - name: Tutorial     content: &amp;#40;&#x3D;&#x3D; include google/foo/tutorial.md &#x3D;&#x3D;&amp;#41;     subpages;     - name: Java       content: &amp;#40;&#x3D;&#x3D; include google/foo/tutorial_java.md &#x3D;&#x3D;&amp;#41;   rules:   - selector: google.calendar.Calendar.Get     description: &gt;       ...   - selector: google.calendar.Calendar.Put     description: &gt;       ... &lt;/code&gt;&lt;/pre&gt; Documentation is provided in markdown syntax. In addition to standard markdown features, definition lists, tables and fenced code blocks are supported. Section headers can be provided and are interpreted relative to the section nesting of the context where a documentation fragment is embedded.  Documentation from the IDL is merged with documentation defined via the config at normalization time, where documentation provided by config rules overrides IDL provided.  A number of constructs specific to the API platform are supported in documentation text.  In order to reference a proto element, the following notation can be used: &lt;pre&gt;&lt;code&gt;&amp;#91;fully.qualified.proto.name]&amp;#91;]&lt;/code&gt;&lt;/pre&gt; To override the display text used for the link, this can be used: &lt;pre&gt;&lt;code&gt;&amp;#91;display text]&amp;#91;fully.qualified.proto.name]&lt;/code&gt;&lt;/pre&gt; Text can be excluded from doc using the following notation: &lt;pre&gt;&lt;code&gt;&amp;#40;-- internal comment --&amp;#41;&lt;/code&gt;&lt;/pre&gt; Comments can be made conditional using a visibility label. The below text will be only rendered if the &#x60;BETA&#x60; label is available: &lt;pre&gt;&lt;code&gt;&amp;#40;--BETA: comment for BETA users --&amp;#41;&lt;/code&gt;&lt;/pre&gt; A few directives are available in documentation. Note that directives must appear on a single line to be properly identified. The &#x60;include&#x60; directive includes a markdown file from an external source: &lt;pre&gt;&lt;code&gt;&amp;#40;&#x3D;&#x3D; include path/to/file &#x3D;&#x3D;&amp;#41;&lt;/code&gt;&lt;/pre&gt; The &#x60;resource_for&#x60; directive marks a message to be the resource of a collection in REST view. If it is not specified, tools attempt to infer the resource from the operations in a collection: &lt;pre&gt;&lt;code&gt;&amp;#40;&#x3D;&#x3D; resource_for v1.shelves.books &#x3D;&#x3D;&amp;#41;&lt;/code&gt;&lt;/pre&gt; The directive &#x60;suppress_warning&#x60; does not directly affect documentation and is documented together with service config validation.

  ## Attributes

  - documentationRootUrl (String): The URL to the root of documentation. Defaults to: `null`.
  - overview (String): Declares a single overview page. For example: &lt;pre&gt;&lt;code&gt;documentation:   summary: ...   overview: &amp;#40;&#x3D;&#x3D; include overview.md &#x3D;&#x3D;&amp;#41; &lt;/code&gt;&lt;/pre&gt; This is a shortcut for the following declaration (using pages style): &lt;pre&gt;&lt;code&gt;documentation:   summary: ...   pages:   - name: Overview     content: &amp;#40;&#x3D;&#x3D; include overview.md &#x3D;&#x3D;&amp;#41; &lt;/code&gt;&lt;/pre&gt; Note: you cannot specify both &#x60;overview&#x60; field and &#x60;pages&#x60; field. Defaults to: `null`.
  - pages (List[Page]): The top level pages for the documentation set. Defaults to: `null`.
  - rules (List[DocumentationRule]): A list of documentation rules that apply to individual API elements.  **NOTE:** All service configuration rules follow \&quot;last one wins\&quot; order. Defaults to: `null`.
  - summary (String): A short summary of what the service does. Can only be provided by plain text. Defaults to: `null`.
  """

  defstruct [
    :"documentationRootUrl",
    :"overview",
    :"pages",
    :"rules",
    :"summary"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.ServiceUser.V1.Model.Documentation do
  import GoogleApi.ServiceUser.V1.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"pages", :list, GoogleApi.ServiceUser.V1.Model.Page, options)
    |> deserialize(:"rules", :list, GoogleApi.ServiceUser.V1.Model.DocumentationRule, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ServiceUser.V1.Model.Documentation do
  def encode(value, options) do
    GoogleApi.ServiceUser.V1.Deserializer.serialize_non_nil(value, options)
  end
end


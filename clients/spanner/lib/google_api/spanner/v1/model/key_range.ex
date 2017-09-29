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

defmodule GoogleApi.Spanner.V1.Model.KeyRange do
  @moduledoc """
  KeyRange represents a range of rows in a table or index.  A range has a start key and an end key. These keys can be open or closed, indicating if the range includes rows with that key.  Keys are represented by lists, where the ith value in the list corresponds to the ith component of the table or index primary key. Individual values are encoded as described here.  For example, consider the following table definition:      CREATE TABLE UserEvents (       UserName STRING(MAX),       EventDate STRING(10)     ) PRIMARY KEY(UserName, EventDate);  The following keys name rows in this table:      \&quot;Bob\&quot;, \&quot;2014-09-23\&quot;  Since the &#x60;UserEvents&#x60; table&#39;s &#x60;PRIMARY KEY&#x60; clause names two columns, each &#x60;UserEvents&#x60; key has two elements; the first is the &#x60;UserName&#x60;, and the second is the &#x60;EventDate&#x60;.  Key ranges with multiple components are interpreted lexicographically by component using the table or index key&#39;s declared sort order. For example, the following range returns all events for user &#x60;\&quot;Bob\&quot;&#x60; that occurred in the year 2015:      \&quot;start_closed\&quot;: [\&quot;Bob\&quot;, \&quot;2015-01-01\&quot;]     \&quot;end_closed\&quot;: [\&quot;Bob\&quot;, \&quot;2015-12-31\&quot;]  Start and end keys can omit trailing key components. This affects the inclusion and exclusion of rows that exactly match the provided key components: if the key is closed, then rows that exactly match the provided components are included; if the key is open, then rows that exactly match are not included.  For example, the following range includes all events for &#x60;\&quot;Bob\&quot;&#x60; that occurred during and after the year 2000:      \&quot;start_closed\&quot;: [\&quot;Bob\&quot;, \&quot;2000-01-01\&quot;]     \&quot;end_closed\&quot;: [\&quot;Bob\&quot;]  The next example retrieves all events for &#x60;\&quot;Bob\&quot;&#x60;:      \&quot;start_closed\&quot;: [\&quot;Bob\&quot;]     \&quot;end_closed\&quot;: [\&quot;Bob\&quot;]  To retrieve events before the year 2000:      \&quot;start_closed\&quot;: [\&quot;Bob\&quot;]     \&quot;end_open\&quot;: [\&quot;Bob\&quot;, \&quot;2000-01-01\&quot;]  The following range includes all rows in the table:      \&quot;start_closed\&quot;: []     \&quot;end_closed\&quot;: []  This range returns all users whose &#x60;UserName&#x60; begins with any character from A to C:      \&quot;start_closed\&quot;: [\&quot;A\&quot;]     \&quot;end_open\&quot;: [\&quot;D\&quot;]  This range returns all users whose &#x60;UserName&#x60; begins with B:      \&quot;start_closed\&quot;: [\&quot;B\&quot;]     \&quot;end_open\&quot;: [\&quot;C\&quot;]  Key ranges honor column sort order. For example, suppose a table is defined as follows:      CREATE TABLE DescendingSortedTable {       Key INT64,       ...     ) PRIMARY KEY(Key DESC);  The following range retrieves all rows with key values between 1 and 100 inclusive:      \&quot;start_closed\&quot;: [\&quot;100\&quot;]     \&quot;end_closed\&quot;: [\&quot;1\&quot;]  Note that 100 is passed as the start, and 1 is passed as the end, because &#x60;Key&#x60; is a descending column in the schema.

  ## Attributes

  - endClosed (List[ErrorUnknown]): If the end is closed, then the range includes all rows whose first &#x60;len(end_closed)&#x60; key columns exactly match &#x60;end_closed&#x60;. Defaults to: `null`.
  - endOpen (List[ErrorUnknown]): If the end is open, then the range excludes rows whose first &#x60;len(end_open)&#x60; key columns exactly match &#x60;end_open&#x60;. Defaults to: `null`.
  - startClosed (List[ErrorUnknown]): If the start is closed, then the range includes all rows whose first &#x60;len(start_closed)&#x60; key columns exactly match &#x60;start_closed&#x60;. Defaults to: `null`.
  - startOpen (List[ErrorUnknown]): If the start is open, then the range excludes rows whose first &#x60;len(start_open)&#x60; key columns exactly match &#x60;start_open&#x60;. Defaults to: `null`.
  """

  defstruct [
    :"endClosed",
    :"endOpen",
    :"startClosed",
    :"startOpen"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.Spanner.V1.Model.KeyRange do
  import GoogleApi.Spanner.V1.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"endClosed", :list, nil, options)
    |> deserialize(:"endOpen", :list, nil, options)
    |> deserialize(:"startClosed", :list, nil, options)
    |> deserialize(:"startOpen", :list, nil, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Spanner.V1.Model.KeyRange do
  def encode(value, options) do
    GoogleApi.Spanner.V1.Deserializer.serialize_non_nil(value, options)
  end
end


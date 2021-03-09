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

defmodule GoogleApi.CloudRun.V1alpha1.Model.TrafficTarget do
  @moduledoc """
  TrafficTarget holds a single entry of the routing table for a Route.

  ## Attributes

  *   `configurationName` (*type:* `String.t`, *default:* `nil`) - ConfigurationName of a configuration to whose latest revision we will send this portion of traffic. When the "status.latestReadyRevisionName" of the referenced configuration changes, we will automatically migrate traffic from the prior "latest ready" revision to the new one. This field is never set in Route's status, only its spec. This is mutually exclusive with RevisionName. Cloud Run currently supports a single ConfigurationName.
  *   `latestRevision` (*type:* `boolean()`, *default:* `nil`) - LatestRevision may be optionally provided to indicate that the latest ready Revision of the Configuration should be used for this traffic target. When provided LatestRevision must be true if RevisionName is empty; it must be false when RevisionName is non-empty. +optional
  *   `name` (*type:* `String.t`, *default:* `nil`) - Name is optionally used to expose a dedicated hostname for referencing this target exclusively. Not currently supported by Cloud Run. +optional
  *   `percent` (*type:* `integer()`, *default:* `nil`) - Percent specifies percent of the traffic to this Revision or Configuration. This defaults to zero if unspecified. Cloud Run currently requires 100 percent for a single ConfigurationName TrafficTarget entry.
  *   `revisionName` (*type:* `String.t`, *default:* `nil`) - RevisionName of a specific revision to which to send this portion of traffic. This is mutually exclusive with ConfigurationName. Providing RevisionName in spec is not currently supported by Cloud Run.
  *   `tag` (*type:* `String.t`, *default:* `nil`) - Tag is optionally used to expose a dedicated url for referencing this target exclusively. Not currently supported in Cloud Run. +optional
  *   `url` (*type:* `String.t`, *default:* `nil`) - Output only. URL displays the URL for accessing named traffic targets. URL is displayed in status, and is disallowed on spec. URL must contain a scheme (e.g. http://) and a hostname, but may not contain anything else (e.g. basic auth, url path, etc. Not currently supported in Cloud Run.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :configurationName => String.t() | nil,
          :latestRevision => boolean() | nil,
          :name => String.t() | nil,
          :percent => integer() | nil,
          :revisionName => String.t() | nil,
          :tag => String.t() | nil,
          :url => String.t() | nil
        }

  field(:configurationName)
  field(:latestRevision)
  field(:name)
  field(:percent)
  field(:revisionName)
  field(:tag)
  field(:url)
end

defimpl Poison.Decoder, for: GoogleApi.CloudRun.V1alpha1.Model.TrafficTarget do
  def decode(value, options) do
    GoogleApi.CloudRun.V1alpha1.Model.TrafficTarget.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudRun.V1alpha1.Model.TrafficTarget do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end

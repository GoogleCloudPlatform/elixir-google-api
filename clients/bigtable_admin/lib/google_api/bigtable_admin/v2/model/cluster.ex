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

defmodule GoogleApi.BigtableAdmin.V2.Model.Cluster do
  @moduledoc """
  A resizable group of nodes in a particular cloud location, capable
  of serving all Tables in the parent
  Instance.

  ## Attributes

  *   `defaultStorageType` (*type:* `String.t`, *default:* `nil`) - (`CreationOnly`)
      The type of storage used by this cluster to serve its
      parent instance's tables, unless explicitly overridden.
  *   `location` (*type:* `String.t`, *default:* `nil`) - (`CreationOnly`)
      The location where this cluster's nodes and storage reside. For best
      performance, clients should be located as close as possible to this
      cluster. Currently only zones are supported, so values should be of the
      form `projects/{project}/locations/{zone}`.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Required. (`OutputOnly`)
      The unique name of the cluster. Values are of the form
      `projects/{project}/instances/{instance}/clusters/a-z*`.
  *   `serveNodes` (*type:* `integer()`, *default:* `nil`) - Required. The number of nodes allocated to this cluster. More nodes enable higher
      throughput and more consistent performance.
  *   `state` (*type:* `String.t`, *default:* `nil`) - (`OutputOnly`)
      The current state of the cluster.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :defaultStorageType => String.t(),
          :location => String.t(),
          :name => String.t(),
          :serveNodes => integer(),
          :state => String.t()
        }

  field(:defaultStorageType)
  field(:location)
  field(:name)
  field(:serveNodes)
  field(:state)
end

defimpl Poison.Decoder, for: GoogleApi.BigtableAdmin.V2.Model.Cluster do
  def decode(value, options) do
    GoogleApi.BigtableAdmin.V2.Model.Cluster.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.BigtableAdmin.V2.Model.Cluster do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end

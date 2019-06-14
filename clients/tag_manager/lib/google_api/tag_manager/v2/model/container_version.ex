# Copyright 2019 Google LLC
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

# NOTE: This class is auto generated by the elixir code generator program.
# Do not edit the class manually.

defmodule GoogleApi.TagManager.V2.Model.ContainerVersion do
  @moduledoc """
  Represents a Google Tag Manager Container Version.

  ## Attributes

  - accountId (String.t): GTM Account ID. Defaults to `nil`.
  - builtInVariable (list(GoogleApi.TagManager.V2.Model.BuiltInVariable.t)): The built-in variables in the container that this version was taken from. Defaults to `nil`.
  - container (GoogleApi.TagManager.V2.Model.Container.t): The container that this version was taken from. Defaults to `nil`.
  - containerId (String.t): GTM Container ID. Defaults to `nil`.
  - containerVersionId (String.t): The Container Version ID uniquely identifies the GTM Container Version. Defaults to `nil`.
  - customTemplate (list(GoogleApi.TagManager.V2.Model.CustomTemplate.t)): The custom templates in the container that this version was taken from. Defaults to `nil`.
  - deleted (boolean()): A value of true indicates this container version has been deleted. Defaults to `nil`.
  - description (String.t): Container version description. Defaults to `nil`.
  - fingerprint (String.t): The fingerprint of the GTM Container Version as computed at storage time. This value is recomputed whenever the container version is modified. Defaults to `nil`.
  - folder (list(GoogleApi.TagManager.V2.Model.Folder.t)): The folders in the container that this version was taken from. Defaults to `nil`.
  - name (String.t): Container version display name. Defaults to `nil`.
  - path (String.t): GTM ContainerVersions's API relative path. Defaults to `nil`.
  - tag (list(GoogleApi.TagManager.V2.Model.Tag.t)): The tags in the container that this version was taken from. Defaults to `nil`.
  - tagManagerUrl (String.t): Auto generated link to the tag manager UI Defaults to `nil`.
  - trigger (list(GoogleApi.TagManager.V2.Model.Trigger.t)): The triggers in the container that this version was taken from. Defaults to `nil`.
  - variable (list(GoogleApi.TagManager.V2.Model.Variable.t)): The variables in the container that this version was taken from. Defaults to `nil`.
  - zone (list(GoogleApi.TagManager.V2.Model.Zone.t)): The zones in the container that this version was taken from. Defaults to `nil`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :accountId => String.t(),
          :builtInVariable => list(GoogleApi.TagManager.V2.Model.BuiltInVariable.t()),
          :container => GoogleApi.TagManager.V2.Model.Container.t(),
          :containerId => String.t(),
          :containerVersionId => String.t(),
          :customTemplate => list(GoogleApi.TagManager.V2.Model.CustomTemplate.t()),
          :deleted => boolean(),
          :description => String.t(),
          :fingerprint => String.t(),
          :folder => list(GoogleApi.TagManager.V2.Model.Folder.t()),
          :name => String.t(),
          :path => String.t(),
          :tag => list(GoogleApi.TagManager.V2.Model.Tag.t()),
          :tagManagerUrl => String.t(),
          :trigger => list(GoogleApi.TagManager.V2.Model.Trigger.t()),
          :variable => list(GoogleApi.TagManager.V2.Model.Variable.t()),
          :zone => list(GoogleApi.TagManager.V2.Model.Zone.t())
        }

  field(:accountId)
  field(:builtInVariable, as: GoogleApi.TagManager.V2.Model.BuiltInVariable, type: :list)
  field(:container, as: GoogleApi.TagManager.V2.Model.Container)
  field(:containerId)
  field(:containerVersionId)
  field(:customTemplate, as: GoogleApi.TagManager.V2.Model.CustomTemplate, type: :list)
  field(:deleted)
  field(:description)
  field(:fingerprint)
  field(:folder, as: GoogleApi.TagManager.V2.Model.Folder, type: :list)
  field(:name)
  field(:path)
  field(:tag, as: GoogleApi.TagManager.V2.Model.Tag, type: :list)
  field(:tagManagerUrl)
  field(:trigger, as: GoogleApi.TagManager.V2.Model.Trigger, type: :list)
  field(:variable, as: GoogleApi.TagManager.V2.Model.Variable, type: :list)
  field(:zone, as: GoogleApi.TagManager.V2.Model.Zone, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.TagManager.V2.Model.ContainerVersion do
  def decode(value, options) do
    GoogleApi.TagManager.V2.Model.ContainerVersion.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.TagManager.V2.Model.ContainerVersion do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end

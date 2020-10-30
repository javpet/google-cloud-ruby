# Generated by the protocol buffer compiler.  DO NOT EDIT!
# Source: google/cloud/asset/v1/asset_service.proto for package 'google.cloud.asset.v1'
# Original file comments:
# Copyright 2020 Google LLC
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
#

require 'grpc'
require 'google/cloud/asset/v1/asset_service_pb'

module Google
  module Cloud
    module Asset
      module V1
        module AssetService
          # Asset service definition.
          class Service

            include GRPC::GenericService

            self.marshal_class_method = :encode
            self.unmarshal_class_method = :decode
            self.service_name = 'google.cloud.asset.v1.AssetService'

            # Exports assets with time and resource types to a given Cloud Storage
            # location/BigQuery table. For Cloud Storage location destinations, the
            # output format is newline-delimited JSON. Each line represents a
            # [google.cloud.asset.v1.Asset][google.cloud.asset.v1.Asset] in the JSON format; for BigQuery table
            # destinations, the output table stores the fields in asset proto as columns.
            # This API implements the [google.longrunning.Operation][google.longrunning.Operation] API
            # , which allows you to keep track of the export. We recommend intervals of
            # at least 2 seconds with exponential retry to poll the export operation
            # result. For regular-size resource parent, the export operation usually
            # finishes within 5 minutes.
            rpc :ExportAssets, ::Google::Cloud::Asset::V1::ExportAssetsRequest, ::Google::Longrunning::Operation
            # Batch gets the update history of assets that overlap a time window.
            # For IAM_POLICY content, this API outputs history when the asset and its
            # attached IAM POLICY both exist. This can create gaps in the output history.
            # Otherwise, this API outputs history with asset in both non-delete or
            # deleted status.
            # If a specified asset does not exist, this API returns an INVALID_ARGUMENT
            # error.
            rpc :BatchGetAssetsHistory, ::Google::Cloud::Asset::V1::BatchGetAssetsHistoryRequest, ::Google::Cloud::Asset::V1::BatchGetAssetsHistoryResponse
            # Creates a feed in a parent project/folder/organization to listen to its
            # asset updates.
            rpc :CreateFeed, ::Google::Cloud::Asset::V1::CreateFeedRequest, ::Google::Cloud::Asset::V1::Feed
            # Gets details about an asset feed.
            rpc :GetFeed, ::Google::Cloud::Asset::V1::GetFeedRequest, ::Google::Cloud::Asset::V1::Feed
            # Lists all asset feeds in a parent project/folder/organization.
            rpc :ListFeeds, ::Google::Cloud::Asset::V1::ListFeedsRequest, ::Google::Cloud::Asset::V1::ListFeedsResponse
            # Updates an asset feed configuration.
            rpc :UpdateFeed, ::Google::Cloud::Asset::V1::UpdateFeedRequest, ::Google::Cloud::Asset::V1::Feed
            # Deletes an asset feed.
            rpc :DeleteFeed, ::Google::Cloud::Asset::V1::DeleteFeedRequest, ::Google::Protobuf::Empty
            # Searches all Cloud resources within the specified scope, such as a project,
            # folder, or organization. The caller must be granted the
            # `cloudasset.assets.searchAllResources` permission on the desired scope,
            # otherwise the request will be rejected.
            rpc :SearchAllResources, ::Google::Cloud::Asset::V1::SearchAllResourcesRequest, ::Google::Cloud::Asset::V1::SearchAllResourcesResponse
            # Searches all IAM policies within the specified scope, such as a project,
            # folder, or organization. The caller must be granted the
            # `cloudasset.assets.searchAllIamPolicies` permission on the desired scope,
            # otherwise the request will be rejected.
            rpc :SearchAllIamPolicies, ::Google::Cloud::Asset::V1::SearchAllIamPoliciesRequest, ::Google::Cloud::Asset::V1::SearchAllIamPoliciesResponse
            # Analyzes IAM policies to answer which identities have what accesses on
            # which resources.
            rpc :AnalyzeIamPolicy, ::Google::Cloud::Asset::V1::AnalyzeIamPolicyRequest, ::Google::Cloud::Asset::V1::AnalyzeIamPolicyResponse
            # Analyzes IAM policies asynchronously to answer which identities have what
            # accesses on which resources, and writes the analysis results to a Google
            # Cloud Storage or a BigQuery destination. For Cloud Storage destination, the
            # output format is the JSON format that represents a
            # [AnalyzeIamPolicyResponse][google.cloud.asset.v1.AnalyzeIamPolicyResponse]. This method implements the
            # [google.longrunning.Operation][google.longrunning.Operation], which allows you to track the operation
            # status. We recommend intervals of at least 2 seconds with exponential
            # backoff retry to poll the operation result. The metadata contains the
            # request to help callers to map responses to requests.
            rpc :AnalyzeIamPolicyLongrunning, ::Google::Cloud::Asset::V1::AnalyzeIamPolicyLongrunningRequest, ::Google::Longrunning::Operation
          end

          Stub = Service.rpc_stub_class
        end
      end
    end
  end
end

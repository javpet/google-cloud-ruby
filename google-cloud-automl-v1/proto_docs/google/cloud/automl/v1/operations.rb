# frozen_string_literal: true

# Copyright 2020 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     https://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Auto-generated by gapic-generator-ruby. DO NOT EDIT!


module Google
  module Cloud
    module AutoML
      module V1
        # Metadata used across all long running operations returned by AutoML API.
        # @!attribute [rw] delete_details
        #   @return [::Google::Cloud::AutoML::V1::DeleteOperationMetadata]
        #     Details of a Delete operation.
        # @!attribute [rw] deploy_model_details
        #   @return [::Google::Cloud::AutoML::V1::DeployModelOperationMetadata]
        #     Details of a DeployModel operation.
        # @!attribute [rw] undeploy_model_details
        #   @return [::Google::Cloud::AutoML::V1::UndeployModelOperationMetadata]
        #     Details of an UndeployModel operation.
        # @!attribute [rw] create_model_details
        #   @return [::Google::Cloud::AutoML::V1::CreateModelOperationMetadata]
        #     Details of CreateModel operation.
        # @!attribute [rw] create_dataset_details
        #   @return [::Google::Cloud::AutoML::V1::CreateDatasetOperationMetadata]
        #     Details of CreateDataset operation.
        # @!attribute [rw] import_data_details
        #   @return [::Google::Cloud::AutoML::V1::ImportDataOperationMetadata]
        #     Details of ImportData operation.
        # @!attribute [rw] batch_predict_details
        #   @return [::Google::Cloud::AutoML::V1::BatchPredictOperationMetadata]
        #     Details of BatchPredict operation.
        # @!attribute [rw] export_data_details
        #   @return [::Google::Cloud::AutoML::V1::ExportDataOperationMetadata]
        #     Details of ExportData operation.
        # @!attribute [rw] export_model_details
        #   @return [::Google::Cloud::AutoML::V1::ExportModelOperationMetadata]
        #     Details of ExportModel operation.
        # @!attribute [rw] progress_percent
        #   @return [::Integer]
        #     Output only. Progress of operation. Range: [0, 100].
        #     Not used currently.
        # @!attribute [rw] partial_failures
        #   @return [::Array<::Google::Rpc::Status>]
        #     Output only. Partial failures encountered.
        #     E.g. single files that couldn't be read.
        #     This field should never exceed 20 entries.
        #     Status details field will contain standard GCP error details.
        # @!attribute [rw] create_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. Time when the operation was created.
        # @!attribute [rw] update_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. Time when the operation was updated for the last time.
        class OperationMetadata
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Details of operations that perform deletes of any entities.
        class DeleteOperationMetadata
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Details of DeployModel operation.
        class DeployModelOperationMetadata
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Details of UndeployModel operation.
        class UndeployModelOperationMetadata
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Details of CreateDataset operation.
        class CreateDatasetOperationMetadata
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Details of CreateModel operation.
        class CreateModelOperationMetadata
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Details of ImportData operation.
        class ImportDataOperationMetadata
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Details of ExportData operation.
        # @!attribute [rw] output_info
        #   @return [::Google::Cloud::AutoML::V1::ExportDataOperationMetadata::ExportDataOutputInfo]
        #     Output only. Information further describing this export data's output.
        class ExportDataOperationMetadata
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # Further describes this export data's output.
          # Supplements
          # {::Google::Cloud::AutoML::V1::OutputConfig OutputConfig}.
          # @!attribute [rw] gcs_output_directory
          #   @return [::String]
          #     The full path of the Google Cloud Storage directory created, into which
          #     the exported data is written.
          class ExportDataOutputInfo
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end
        end

        # Details of BatchPredict operation.
        # @!attribute [rw] input_config
        #   @return [::Google::Cloud::AutoML::V1::BatchPredictInputConfig]
        #     Output only. The input config that was given upon starting this
        #     batch predict operation.
        # @!attribute [rw] output_info
        #   @return [::Google::Cloud::AutoML::V1::BatchPredictOperationMetadata::BatchPredictOutputInfo]
        #     Output only. Information further describing this batch predict's output.
        class BatchPredictOperationMetadata
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # Further describes this batch predict's output.
          # Supplements
          #
          # {::Google::Cloud::AutoML::V1::BatchPredictOutputConfig BatchPredictOutputConfig}.
          # @!attribute [rw] gcs_output_directory
          #   @return [::String]
          #     The full path of the Google Cloud Storage directory created, into which
          #     the prediction output is written.
          class BatchPredictOutputInfo
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end
        end

        # Details of ExportModel operation.
        # @!attribute [rw] output_info
        #   @return [::Google::Cloud::AutoML::V1::ExportModelOperationMetadata::ExportModelOutputInfo]
        #     Output only. Information further describing the output of this model
        #     export.
        class ExportModelOperationMetadata
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # Further describes the output of model export.
          # Supplements
          # {::Google::Cloud::AutoML::V1::ModelExportOutputConfig ModelExportOutputConfig}.
          # @!attribute [rw] gcs_output_directory
          #   @return [::String]
          #     The full path of the Google Cloud Storage directory created, into which
          #     the model will be exported.
          class ExportModelOutputInfo
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end
        end
      end
    end
  end
end
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/dialogflow/v2/agent.proto

require 'google/protobuf'

require 'google/api/annotations_pb'
require 'google/longrunning/operations_pb'
require 'google/protobuf/empty_pb'
require 'google/protobuf/field_mask_pb'
require 'google/protobuf/struct_pb'
Google::Protobuf::DescriptorPool.generated_pool.build do
  add_message "google.cloud.dialogflow.v2.Agent" do
    optional :parent, :string, 1
    optional :display_name, :string, 2
    optional :default_language_code, :string, 3
    repeated :supported_language_codes, :string, 4
    optional :time_zone, :string, 5
    optional :description, :string, 6
    optional :avatar_uri, :string, 7
    optional :enable_logging, :bool, 8
    optional :match_mode, :enum, 9, "google.cloud.dialogflow.v2.Agent.MatchMode"
    optional :classification_threshold, :float, 10
  end
  add_enum "google.cloud.dialogflow.v2.Agent.MatchMode" do
    value :MATCH_MODE_UNSPECIFIED, 0
    value :MATCH_MODE_HYBRID, 1
    value :MATCH_MODE_ML_ONLY, 2
  end
  add_message "google.cloud.dialogflow.v2.GetAgentRequest" do
    optional :parent, :string, 1
  end
  add_message "google.cloud.dialogflow.v2.SearchAgentsRequest" do
    optional :parent, :string, 1
    optional :page_size, :int32, 2
    optional :page_token, :string, 3
  end
  add_message "google.cloud.dialogflow.v2.SearchAgentsResponse" do
    repeated :agents, :message, 1, "google.cloud.dialogflow.v2.Agent"
    optional :next_page_token, :string, 2
  end
  add_message "google.cloud.dialogflow.v2.TrainAgentRequest" do
    optional :parent, :string, 1
  end
  add_message "google.cloud.dialogflow.v2.ExportAgentRequest" do
    optional :parent, :string, 1
    optional :agent_uri, :string, 2
  end
  add_message "google.cloud.dialogflow.v2.ExportAgentResponse" do
    oneof :agent do
      optional :agent_uri, :string, 1
      optional :agent_content, :bytes, 2
    end
  end
  add_message "google.cloud.dialogflow.v2.ImportAgentRequest" do
    optional :parent, :string, 1
    oneof :agent do
      optional :agent_uri, :string, 2
      optional :agent_content, :bytes, 3
    end
  end
  add_message "google.cloud.dialogflow.v2.RestoreAgentRequest" do
    optional :parent, :string, 1
    oneof :agent do
      optional :agent_uri, :string, 2
      optional :agent_content, :bytes, 3
    end
  end
end

module Google
  module Cloud
    module Dialogflow
      module V2
        Agent = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.v2.Agent").msgclass
        Agent::MatchMode = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.v2.Agent.MatchMode").enummodule
        GetAgentRequest = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.v2.GetAgentRequest").msgclass
        SearchAgentsRequest = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.v2.SearchAgentsRequest").msgclass
        SearchAgentsResponse = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.v2.SearchAgentsResponse").msgclass
        TrainAgentRequest = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.v2.TrainAgentRequest").msgclass
        ExportAgentRequest = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.v2.ExportAgentRequest").msgclass
        ExportAgentResponse = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.v2.ExportAgentResponse").msgclass
        ImportAgentRequest = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.v2.ImportAgentRequest").msgclass
        RestoreAgentRequest = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.v2.RestoreAgentRequest").msgclass
      end
    end
  end
end

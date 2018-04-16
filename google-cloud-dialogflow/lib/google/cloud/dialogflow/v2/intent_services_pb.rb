# Generated by the protocol buffer compiler.  DO NOT EDIT!
# Source: google/cloud/dialogflow/v2/intent.proto for package 'google.cloud.dialogflow.v2'
# Original file comments:
# Copyright 2018 Google Inc.
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
require 'google/cloud/dialogflow/v2/intent_pb'

module Google
  module Cloud
    module Dialogflow
      module V2
        module Intents
          # An intent represents a mapping between input from a user and an action to
          # be taken by your application. When you pass user input to the
          # [DetectIntent][google.cloud.dialogflow.v2.Sessions.DetectIntent] (or
          # [StreamingDetectIntent][google.cloud.dialogflow.v2.Sessions.StreamingDetectIntent]) method, the
          # Dialogflow API analyzes the input and searches
          # for a matching intent. If no match is found, the Dialogflow API returns a
          # fallback intent (`is_fallback` = true).
          #
          # You can provide additional information for the Dialogflow API to use to
          # match user input to an intent by adding the following to your intent.
          #
          # *   **Contexts** - provide additional context for intent analysis. For
          #     example, if an intent is related to an object in your application that
          #     plays music, you can provide a context to determine when to match the
          #     intent if the user input is “turn it off”.  You can include a context
          #     that matches the intent when there is previous user input of
          #     "play music", and not when there is previous user input of
          #     "turn on the light".
          #
          # *   **Events** - allow for matching an intent by using an event name
          #     instead of user input. Your application can provide an event name and
          #     related parameters to the Dialogflow API to match an intent. For
          #     example, when your application starts, you can send a welcome event
          #     with a user name parameter to the Dialogflow API to match an intent with
          #     a personalized welcome message for the user.
          #
          # *   **Training phrases** - provide examples of user input to train the
          #     Dialogflow API agent to better match intents.
          #
          # For more information about intents, see the
          # [Dialogflow documentation](https://dialogflow.com/docs/intents).
          class Service

            include GRPC::GenericService

            self.marshal_class_method = :encode
            self.unmarshal_class_method = :decode
            self.service_name = 'google.cloud.dialogflow.v2.Intents'

            # Returns the list of all intents in the specified agent.
            rpc :ListIntents, ListIntentsRequest, ListIntentsResponse
            # Retrieves the specified intent.
            rpc :GetIntent, GetIntentRequest, Intent
            # Creates an intent in the specified agent.
            rpc :CreateIntent, CreateIntentRequest, Intent
            # Updates the specified intent.
            rpc :UpdateIntent, UpdateIntentRequest, Intent
            # Deletes the specified intent.
            rpc :DeleteIntent, DeleteIntentRequest, Google::Protobuf::Empty
            # Updates/Creates multiple intents in the specified agent.
            #
            # Operation <response: [BatchUpdateIntentsResponse][google.cloud.dialogflow.v2.BatchUpdateIntentsResponse]>
            rpc :BatchUpdateIntents, BatchUpdateIntentsRequest, Google::Longrunning::Operation
            # Deletes intents in the specified agent.
            #
            # Operation <response: [google.protobuf.Empty][google.protobuf.Empty]>
            rpc :BatchDeleteIntents, BatchDeleteIntentsRequest, Google::Longrunning::Operation
          end

          Stub = Service.rpc_stub_class
        end
      end
    end
  end
end

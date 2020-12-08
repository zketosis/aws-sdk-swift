//
// Copyright 2020 Amazon.com, Inc. or its affiliates. All Rights Reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License").
// You may not use this file except in compliance with the License.
// A copy of the License is located at
//
// http://aws.amazon.com/apache2.0
//
// or in the "license" file accompanying this file. This file is distributed
// on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either
// express or implied. See the License for the specific language governing
// permissions and limitations under the License.
//

import ClientRuntime

public protocol AWSClientConfiguration {
    
    var credentialsProvider: AWSCredentialsProvider { get set }
    var region: String { get set }
    var signingRegion: String {get set}
    
    // idempotency token provider to be added
    // some kind of endpoint resolver to be added
    // some kind of retryer options or configuration
}
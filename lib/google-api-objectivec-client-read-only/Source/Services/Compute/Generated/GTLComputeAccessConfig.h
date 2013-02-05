/* Copyright (c) 2012 Google Inc.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

//
//  GTLComputeAccessConfig.h
//

// ----------------------------------------------------------------------------
// NOTE: This file is generated from Google APIs Discovery Service.
// Service:
//   Compute Engine API (compute/v1beta13)
// Description:
//   API for the Google Compute Engine service.
// Documentation:
//   https://developers.google.com/compute/docs/reference/v1beta13
// Classes:
//   GTLComputeAccessConfig (0 custom class methods, 4 custom properties)

#if GTL_BUILT_AS_FRAMEWORK
  #import "GTL/GTLObject.h"
#else
  #import "GTLObject.h"
#endif

// ----------------------------------------------------------------------------
//
//   GTLComputeAccessConfig
//

@interface GTLComputeAccessConfig : GTLObject

// Type of the resource.
@property (copy) NSString *kind;

// Name of this access configuration.
@property (copy) NSString *name;

// An external IP address associated with this instance. Specify an unused
// static IP address available to the project. If not specified, the external IP
// will be drawn from a shared ephemeral pool.
@property (copy) NSString *natIP;

// Type of configuration. Must be set to "ONE_TO_ONE_NAT". This configures
// port-for-port NAT to the internet.
@property (copy) NSString *type;

@end

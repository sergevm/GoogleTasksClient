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
//  GTLComputeSerialPortOutput.h
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
//   GTLComputeSerialPortOutput (0 custom class methods, 3 custom properties)

#if GTL_BUILT_AS_FRAMEWORK
  #import "GTL/GTLObject.h"
#else
  #import "GTLObject.h"
#endif

// ----------------------------------------------------------------------------
//
//   GTLComputeSerialPortOutput
//

// An instance serial console output.

@interface GTLComputeSerialPortOutput : GTLObject

// The contents of the console output.
@property (copy) NSString *contents;

// Type of the resource.
@property (copy) NSString *kind;

// Server defined URL for the resource.
@property (copy) NSString *selfLink;

@end

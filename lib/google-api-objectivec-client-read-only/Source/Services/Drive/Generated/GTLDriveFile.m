/* Copyright (c) 2013 Google Inc.
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
//  GTLDriveFile.m
//

// ----------------------------------------------------------------------------
// NOTE: This file is generated from Google APIs Discovery Service.
// Service:
//   Drive API (drive/v2)
// Description:
//   The API to interact with Drive.
// Documentation:
//   https://developers.google.com/drive/
// Classes:
//   GTLDriveFile (0 custom class methods, 38 custom properties)
//   GTLDriveFileExportLinks (0 custom class methods, 0 custom properties)
//   GTLDriveFileImageMediaMetadata (0 custom class methods, 21 custom properties)
//   GTLDriveFileIndexableText (0 custom class methods, 1 custom properties)
//   GTLDriveFileLabels (0 custom class methods, 5 custom properties)
//   GTLDriveFileThumbnail (0 custom class methods, 2 custom properties)
//   GTLDriveFileImageMediaMetadataLocation (0 custom class methods, 3 custom properties)

#import "GTLDriveFile.h"

#import "GTLDriveParentReference.h"
#import "GTLDrivePermission.h"

// ----------------------------------------------------------------------------
//
//   GTLDriveFile
//

@implementation GTLDriveFile
@dynamic alternateLink, appDataContents, createdDate, descriptionProperty,
         downloadUrl, editable, embedLink, ETag, explicitlyTrashed, exportLinks,
         fileExtension, fileSize, iconLink, identifier, imageMediaMetadata,
         indexableText, kind, labels, lastModifyingUserName, lastViewedByMeDate,
         md5Checksum, mimeType, modifiedByMeDate, modifiedDate,
         originalFilename, ownerNames, parents, quotaBytesUsed, selfLink,
         shared, sharedWithMeDate, thumbnail, thumbnailLink, title,
         userPermission, webContentLink, webViewLink, writersCanShare;

+ (NSDictionary *)propertyToJSONKeyMap {
  NSDictionary *map =
    [NSDictionary dictionaryWithObjectsAndKeys:
      @"description", @"descriptionProperty",
      @"etag", @"ETag",
      @"id", @"identifier",
      nil];
  return map;
}

+ (NSDictionary *)arrayPropertyToClassMap {
  NSDictionary *map =
    [NSDictionary dictionaryWithObjectsAndKeys:
      [NSString class], @"ownerNames",
      [GTLDriveParentReference class], @"parents",
      nil];
  return map;
}

+ (void)load {
  [self registerObjectClassForKind:@"drive#file"];
}

@end


// ----------------------------------------------------------------------------
//
//   GTLDriveFileExportLinks
//

@implementation GTLDriveFileExportLinks

+ (Class)classForAdditionalProperties {
  return [NSString class];
}

@end


// ----------------------------------------------------------------------------
//
//   GTLDriveFileImageMediaMetadata
//

@implementation GTLDriveFileImageMediaMetadata
@dynamic aperture, cameraMake, cameraModel, colorSpace, date, exposureBias,
         exposureMode, exposureTime, flashUsed, focalLength, height, isoSpeed,
         lens, location, maxApertureValue, meteringMode, rotation, sensor,
         subjectDistance, whiteBalance, width;
@end


// ----------------------------------------------------------------------------
//
//   GTLDriveFileIndexableText
//

@implementation GTLDriveFileIndexableText
@dynamic text;
@end


// ----------------------------------------------------------------------------
//
//   GTLDriveFileLabels
//

@implementation GTLDriveFileLabels
@dynamic hidden, restricted, starred, trashed, viewed;
@end


// ----------------------------------------------------------------------------
//
//   GTLDriveFileThumbnail
//

@implementation GTLDriveFileThumbnail
@dynamic image, mimeType;
@end


// ----------------------------------------------------------------------------
//
//   GTLDriveFileImageMediaMetadataLocation
//

@implementation GTLDriveFileImageMediaMetadataLocation
@dynamic altitude, latitude, longitude;
@end

//
// Copyright 2016 The Nerdery, LLC
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
// http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

#import <Cocoa/Cocoa.h>

@interface SavePanelLanguageChooserViewController : NSViewController

@property (nonatomic) NSInteger languageDropDownIndex;
@property (strong) NSString *packageName;
@property (strong) NSString *baseClassName;
@property (strong) NSString *classPrefix;
@property (nonatomic) BOOL buildForARC;

@property (weak) IBOutlet NSPopUpButton *languageDropDown;
@property (weak) IBOutlet NSTextField *outputLanguageLabel;
@property (weak) IBOutlet NSTextField *baseClassLabel;
@property (weak) IBOutlet NSTextField *baseClassField;
@property (weak) IBOutlet NSView *objectiveCPanel;
@property (weak) IBOutlet NSTextField *classPrefixField;
@property (weak) IBOutlet NSTextField *classPrefixLabel;


- (IBAction)languagePopUpChanged:(id)sender;

@property (NS_NONATOMIC_IOSONLY, readonly) OutputLanguage chosenLanguage;

@end

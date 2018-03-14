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

#import "SavePanelLanguageChooserViewController.h"

@interface SavePanelLanguageChooserViewController ()

@property (weak) IBOutlet NSTextFieldCell *classPrefixCell;

@end

@implementation SavePanelLanguageChooserViewController

- (instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    
    if (self) {
        // Initialization code here.
        self.buildForARC = YES;
    }
    
    return self;
}

- (void)awakeFromNib {
    self.outputLanguageLabel.stringValue = NSLocalizedString(@"Output Language", "In the save portion, the label to choose what language");
    self.baseClassLabel.stringValue = NSLocalizedString(@"Base Class", "In the save portion, the prompt to specify what the base class is");
    self.classPrefixLabel.stringValue = NSLocalizedString(@"Class Prefix", "The letters to prepend to the file");
    
    self.classPrefixCell.placeholderString = @"WSG";
    
    self.objectiveCPanel.hidden = NO;

    [self.languageDropDown selectItemAtIndex:OutputLanguageObjectiveC];
}

- (IBAction)languagePopUpChanged:(id)sender {
    self.languageDropDown.nextKeyView = self.baseClassField;
    [self.baseClassField becomeFirstResponder];
    if (_languageDropDownIndex == OutputLanguageObjectiveC) {
        self.objectiveCPanel.hidden = NO;
        self.baseClassField.nextKeyView = self.classPrefixField;
    } else {
        self.objectiveCPanel.hidden = YES;
    }
}

- (OutputLanguage)chosenLanguage {
    if (_languageDropDownIndex == OutputLanguageObjectiveC) {
        return OutputLanguageObjectiveC;
    } else if (_languageDropDownIndex == 1) {
        return OutputLanguageCoreDataObjectiveC;
    } else {
        return -1;
    }
}

@end

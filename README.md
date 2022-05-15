# CodingStyle
An implementation of "camel case", "snake case", "kebab case" string wrapper.
## Table of Contents
* [Getting Started](#getting-started)
* [Usage](#usage)
    * [Basic Examples](#usage)
* [Todo](#todo)
* [License](#license)

## Getting Started
CodingStyle is a *swift package*.
 * It can be imported into an app project using Xcode’s new Swift Packages option, which is located within the File menu.
 * When asked, use this repository's url: https://github.com/ads63/CodingStyle
String value wrapper to convert wrapped string into:
 camelCase/ snake_case/ kebab-case
 
 ## Usage

### Basic example:
```swift
import CodingStyle
import SwiftUI

struct CodingStyleExampleView: View
{
    @CodingStyle(coding: .camel) var camelValue = " Demo STrING value  "
    @CodingStyle(coding: .snake) var snakeValue = "  DEMO String  Value "
    @CodingStyle(coding: .kebab) var kebabValue = "  Demo  STRING  Value  "
    var body: some View
    {
                VStack {
                        Text(camelValue)        // "demoStringValue"
                            .padding(.top, 10)
                        Text(snakeValue)        // "demo_string_value"
                            .padding(.top, 10) 
                        Text(kebabValue)        // "demo-string-value"
                            .padding(.top, 10)
                            
                    }
    }
}
```

 ## Todo
 
 ## Licence
 MIT License

Copyright (c) 2022 Alexey Shinkarev

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.

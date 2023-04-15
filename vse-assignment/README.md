# VSE Assignment template

Template used for assignments on University of Economics in Prague, Faculty of Informatics.

## Usage

In the document entry point add following lines:

```typst
#import "template.typ": *

#show: project.with(
  title: "",
  subtitle: "", // Optional
  place: "", // Optional, must be used with date
  date: "", // Optional, must be used with place
  authors: ( // Optional (but recommended)
    "Dan Balarin", 
  ),
)

Your text goes here.
```

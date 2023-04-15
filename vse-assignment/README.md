# VSE Assignment template

Template used for assignments on University of Economics in Prague, Faculty of Informatics.

## Usage

Copy the content of `template.typ` and paste it into the Typst editor.
Copy `vse-fis.png` and paste it into the same directory as the `template.typ` file.

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

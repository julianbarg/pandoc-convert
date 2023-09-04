
An example that uses my terrible, very bad hacky lua filter. Leaves behind temp files that I cannot manage to clean up properly and simply separately calls bash when lua should be more than capable of handling this with pandoc.pipe

```bash
pandoc terrible_example.md --lua-filter terrible.lua -o terrible_output.pptx
```

To create document, should run:

```bash
pandoc example.md --lua-filter diagram-generator.lua -o output.pptx
```

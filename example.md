
## For reference: graphviz

Should be an image:

```{.graphviz}
digraph test {
  size="5,6";
  dpi=300;

  a -> b
}
```

## Convert

Here is some text. Next is the example for convert: 

```{.convert}
a.png b.png -append -bordercolor red -border 6
```

## Montage

And then there is the example for montage:

```{.montage}
a.png b.png -geometry +3+3 -background red -tile 1x
```

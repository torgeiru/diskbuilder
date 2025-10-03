# diskbuilder

`diskbuilder` is an IncludeOS utility for creating raw FAT32 disk images.  
It is used in tests to generate FAT32 images for block devices and memdisk.  

## Usage

`diskbuilder` builds a FAT32 image from a specified directory, which acts as the root.  

```bash
diskbuilder -o <output-image> <root-dir>
```

For verbose output, add the -v option before -o:

```bash
diskbuilder -v -o <output-image> <root-dir>
```
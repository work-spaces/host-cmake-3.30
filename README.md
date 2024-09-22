# cmake Package

Add a version of cmake to your spaces SDK.

```starlark
checkout.add_repo(
    rule = {"name": "tools/sysroot-cmake"},
    repo = {
        "url": "https://github.com/work-spaces/sysroot-cmake",
        "rev": "v3",
        "checkout": "Revision",
    },
)
```

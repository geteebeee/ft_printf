# ft_printf

A custom implementation of the C `printf` function made for 42 projects. It reproduces the behavior of the standard `printf` with a subset of its features.

## Build

```bash
make
```

## Supported conversions

| Specifier   | Description              |
| ----------- | ------------------------ |
| `%c`        | Character                |
| `%s`        | String                   |
| `%p`        | Pointer address          |
| `%d` / `%i` | Signed decimal integer   |
| `%u`        | Unsigned decimal integer |
| `%x`        | Hexadecimal (lowercase)  |
| `%X`        | Hexadecimal (uppercase)  |
| `%%`        | Prints a percent sign    |

## Example

```c
#include "ft_printf.h"

int main(void)
{
    ft_printf("Hello %s!\\n", "world");
    ft_printf("Hex: %x\\n", 255);
    ft_printf("Pointer: %p\\n", &main);
    return 0;
}
```

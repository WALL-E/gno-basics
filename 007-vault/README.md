# [r/moul_basics_vault_v1](https://test2.gno.land/r/moul_basics_vault_v1)
_`README.md` generated by "make integration"._

## Examples

```console
foo@bar:~$ gnokey maketx call "MYWALLET" --gas-fee "1ugnot"  \
> --broadcast "true" --chainid "test2" --remote "test2.gno.land:36657"  \
> --gas-wanted "500000" --pkgpath gno.land/r/moul_basics_vault_v1  \
> --func Deposit --args 10000 --args g1myrecoveryaddress
```

```console
foo@bar:~$ gnokey maketx call "MYWALLET" --gas-fee "1ugnot"  \
> --broadcast "true" --chainid "test2" --remote "test2.gno.land:36657"  \
> --gas-wanted "500000" --pkgpath gno.land/r/moul_basics_vault_v1  \
> --func MyBalance
```

## `gnodev test`

```console
foo@bar:~$ gnodev test . --verbose
=== RUN   Test
--- PASS: Test (0.00s)
ok      ./. 	2.97s
```

## How to publish locally

```sh
gnokey maketx addpkg "MYWALLET" --deposit "1ugnot" --gas-fee "1ugnot" --gas-wanted "5000000" --broadcast "true" --remote "localhost:26657" --chainid "dev" --pkgpath "gno.land/r/moul_basics_vault_v1" --pkgdir "."
```


Encapsulates knowledge of GBT Antenna FITS.

> module Data.Fits.GBT.Antenna where

> import Data.Fits.FitsIO
> import Data.Fits.FQL
> import Data.Fits.GBT
> import Data.Array.Parallel.Unlifted

> columns       :: (FitsValue a, Elt a) => [String] -> GBT [Array a]
> columns names = with "ANTENNA" $ do
>     namedHDU "ANTPOSGR" <|> namedHDU "ANTPOSPF"
>     mapM column $ names

(use-modules (guix build-system haskell))
(use-modules (guix packages))
(use-modules (guix download))
(use-modules (guix licenses))
(package
  (name "ghc-random")
  (version "1.1")
  (source
    (origin
      (method url-fetch)
      (uri (string-append
             "https://hackage.haskell.org/package/random/random-"
             version
             ".tar.gz"))
      (sha256
        (base32
          "0nis3lbkp8vfx8pkr6v7b7kr5m334bzb0fk9vxqklnp2aw8a865p"))))
  (build-system haskell-build-system)
  (arguments
    `(#:cabal-revision
      ("1"
       "1pv5d7bm2rgap7llp5vjsplrg048gvf0226y0v19gpvdsx7n4rvv")))
  (home-page
    "http://hackage.haskell.org/package/random")
  (synopsis "random number library")
  (description
    "This package provides a basic random number generation library, including the ability to split random number generators.")
  (license bsd-3))

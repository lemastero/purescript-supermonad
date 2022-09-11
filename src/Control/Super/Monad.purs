module Data.Super.Monad where

import Prelude

class (Functor m, Functor n, Functor p)
       <= Bind m n p where
  fmap :: forall a b. (a -> b)
    -> m a
    -> (a -> n b)
    -> p b

class (Functor m) <= Return m where
  return :: forall a b. a -> m b

class (Functor m, Functor n, Functor p)
      <= Apply m n p where
  apply :: forall a b. m (a -> b) -> n a -> p b

module Data.Super.Monad where

import Prelude (class Functor, (<*>))
import Data.Maybe (Maybe(..))
import Data.Either (Either(..))
import Data.List (singleton)
import Data.List.Types (List)

class (Functor m, Functor n, Functor p)
       <= Bind m n p where
  fmap :: forall a b. (a -> b)
    -> m a
    -> (a -> n b)
    -> p b

class (Functor m) <= Return m where
  return :: forall a. a -> m a

class (Functor m, Functor n, Functor p)
      <= Apply m n p where
  apply :: forall a b. m (a -> b) -> n a -> p b


instance maybeApply :: Apply Maybe Maybe Maybe where
  apply mab nb = mab <*> nb

instance maybeReturn :: Return Maybe where
  return a = Just a

instance eitherAply :: Apply (Either a) (Either a) (Either a) where
  apply mab nb = mab <*> nb

instance eitherReturn :: Return (Either a) where
  return a = Right a

instance listAply :: Apply List List List where
  apply mab nb = mab <*> nb

instance listReturn :: Return List where
  return a = singleton a

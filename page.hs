module SQLPages where

import Data.Word
import Data.ByteString
import Foreign.ForeignPtr

data BTreePageHeader = BTreePageHeaderInterior { bTreePageType :: Word8
                                              , firstFreeblockOffset :: Word16
                                              , numberOfCells :: Word16
                                              , cellContentOffset :: Word16
                                              , numberFragments :: Word8
                                              , rightMostPointer :: Word32 } |
                      BTreePageHeaderLeaf { bTreePageType :: Word8
                                          , firstFreeblockOffset :: Word16
                                          , numberOfCells :: Word16
                                          , cellContentOffset :: Word16
                                          , numberFragments :: Word8 }

{-


LockBytePage =
FreelistPage = Trunk | Leaf
BTreePage = TableInterior | TableLeaf |
            IndexInterior | IndexLeaf
PayloadOverflowPage =
PointerMapPage =




Freelist
BTree


    The lock-byte page
    A freelist page
        A freelist trunk page
        A freelist leaf page 
    A b-tree page
        A table b-tree interior page
        A table b-tree leaf page
        An index b-tree interior page
        An index b-tree leaf page 
    A payload overflow page
    A pointer map page 

-}

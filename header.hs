module SQLDiskModel where

import Data.Word
import Data.ByteString
import Foreign.ForeignPtr


data LegacyOrWAL = Legacy | WAL

data Header = Header { headerString :: ByteString
                     , databasePageSize :: Word32 -- Do we really need 32?
                     , fileFormatWriteVersion :: LegacyOrWAL
                     , fileFormatReadVersion :: LegacyOrWAL
                     , bytesReservedSpace :: Word8
                     , maximumEmbeddedPayloadFraction :: Word8
                     , minimumEmbeddedPayloadFraction :: Word8
                     , leafPayloadFraction :: Word8
                     , fileChangeCounter :: ForeignPtr Word32
                     , databasePageCount :: ForeignPtr Word32
                     , firstFreelistTrunkPage :: ForeignPtr Word32
                     , totalFreelistPages :: ForeignPtr Word32
                     , schemaCookie :: ForeignPtr Word32
                     , schemaFormatNumber :: Word32
                     , defaultPageCacheSize :: ForeignPtr Word32
                     , largestRootBTreePage :: ForeignPtr Word32
                     , databaseTextEncoding :: Word32
                     , userVersion :: ForeignPtr Word32
                     , incrementalVacuumMode :: ForeignPtr Word32
                     , applicationId :: ForeignPtr Word32
                     , reserved :: ForeignPtr ByteString -- Must be 20 bytes and zero
                     , versionValidFor :: Word32
                     , sqliteVersionNumber :: Word32 }

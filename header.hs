data Pointer
data Constant

data Header = Header { headerString :: ByteString,
                       databasePageSize :: Word32, -- Do we really need 32?
                       fileFormatWriteVersion :: LegacyOrWAL,
                       fileFormatReadVersion :: LegacyOrWAL,
                       bytesReservedSpace :: Word8,
                       maximumEmbeddedPayloadFraction :: Word8,
                       minimumEmbeddedPayloadFraction :: Word8,
                       leafPayloadFraction :: Word8,
                       fileChangeCounter :: Ptr Word32,
                       databasePageCount :: Ptr Word32,
32  4   Page number of the first freelist trunk page.
36  4   Total number of freelist pages.
40  4   The schema cookie.
44  4   The schema format number. Supported schema formats are 1, 2, 3, and 4.
48  4   Default page cache size.
52  4   The page number of the largest root b-tree page when in auto-vacuum or incremental-vacuum modes, or zero otherwise.
56  4   The database text encoding. A value of 1 means UTF-8. A value of 2 means UTF-16le. A value of 3 means UTF-16be.
60  4   The "user version" as read and set by the user_version pragma.
64  4   True (non-zero) for incremental-vacuum mode. False (zero) otherwise.
68  4   The "Application ID" set by PRAGMA application_id.
72  20  Reserved for expansion. Must be zero.
92  4   The version-valid-for number.
96  4   SQLITE_VERSION_NUMBER

use crate::models::compression::Compression;
use crate::models::file_type::FileType;

#[derive(Debug)]
pub struct ParseResult<T> {
    pub file_type: FileType,
    pub compression: Compression,
    pub data: Vec<u8>,
    pub parsed_data: T,
}

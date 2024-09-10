/// string_pad(str, len)
/// Pads the string `str` with spaces until it reaches the length `len`.
function string_pad(str, len) {
    while (string_width(str) < len) {
        str += " "; // Add a space until the string reaches the required length
    }
    return str;
}

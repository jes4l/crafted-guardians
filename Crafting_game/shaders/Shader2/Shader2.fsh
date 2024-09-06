//
// Fragment shader to replace red (238, 28, 26) with pink (237, 0, 140)
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

void main()
{
    // Get the current pixel color from the texture
    vec4 pixel_color = texture2D(gm_BaseTexture, v_vTexcoord);
    
    // Check if the pixel is red (238, 28, 26) with some tolerance
    if (abs(pixel_color.r - 238.0 / 255.0) < 0.05 &&
        abs(pixel_color.g - 28.0 / 255.0) < 0.05 &&
        abs(pixel_color.b - 26.0 / 255.0) < 0.05) {
        
        // Replace it with pink (237, 0, 140)
        gl_FragColor = vec4(237.0 / 255.0, 0.0, 140.0 / 255.0, pixel_color.a);
    } else {
        // Otherwise, pass the original color
        gl_FragColor = pixel_color * v_vColour;
    }
}

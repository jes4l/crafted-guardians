//
// Fragment shader to replace green with pink
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

void main()
{
    // Get the current pixel color from the texture
    vec4 pixel_color = texture2D(gm_BaseTexture, v_vTexcoord);
    
    // Check if the pixel is green (approximately green to account for any variations)
    if (pixel_color.r < 0.1 && pixel_color.g > 0.9 && pixel_color.b < 0.1) {
        // Replace green with pink (RGB: 237, 0, 140)
        gl_FragColor = vec4(237.0 / 255.0, 0.0, 140.0 / 255.0, pixel_color.a);
    } else {
        // Otherwise, just pass the pixel color unchanged
        gl_FragColor = pixel_color * v_vColour;
    }
}

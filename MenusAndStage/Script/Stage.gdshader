shader_type canvas_item;

void vertex() {
	// Called for every vertex the material is visible on.
}





void fragment() {
    vec2 uv = UV;
    
    // Wavy distortion
    uv.y += sin(uv.x * 10.0 + TIME * 5.0) * 0.05;

    // Sample the texture
    vec4 tex_color = texture(TEXTURE, uv);

    // Apply a fiery red tint — strong red, reduced green/blue
    tex_color.rgb = vec3(
        tex_color.r * 1.5 + 0.2,  // boost red
        tex_color.g * 0.3,        // suppress green
        tex_color.b * 0.2         // suppress blue
    );

    // Optional: animate slight glow effect
    float pulse = sin(TIME * 3.0) * 0.05;
    tex_color.r += pulse;

    COLOR = clamp(tex_color, 0.0, 1.0);
}



//void light() {
	// Called for every pixel for every light affecting the CanvasItem.
	// Uncomment to replace the default light processing function with this one.
//}

shader_type canvas_item;

void vertex() {
	// Called for every vertex the material is visible on.
}

void fragment() {
    vec4 tex_color = texture(TEXTURE, UV);
    
    // Flickering effect, based on time (random variation)
    float flicker = sin(TIME * 10.0 + UV.x * 5.0) * 0.2 + 0.5;
    
    // Multiply by a reddish color to simulate fire
    tex_color.rgb *= vec3(1.5, 0.4, 0.1) * flicker;
    
    COLOR = tex_color;
}


//void light() {
	// Called for every pixel for every light affecting the CanvasItem.
	// Uncomment to replace the default light processing function with this one.
//}

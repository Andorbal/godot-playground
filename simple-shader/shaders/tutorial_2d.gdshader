shader_type canvas_item;

uniform float blue = 1.0; // you can assign a default value to uniforms

void vertex() {
	/* Move everthing right */
	//VERTEX += vec2(10.0, 0.0);
	
	/* Animate it! */
	VERTEX += vec2(cos(TIME)*100.0, sin(TIME)*100.0);
}

void fragment() {
	/* Set the entire square to blue */ 
	//COLOR = vec4(0.4, 0.6, 0.9, 1.0);
	
	/* Set the color based on the UV */
  	//COLOR = vec4(UV, 0.5, 1.0);
	
	/* Tint the whole sprite blue */
	//COLOR.b = blue;
	
	/* Animate the tinting */
	COLOR.b = abs(sin(TIME)) * blue;
	
	/* Flip the texture */
	//COLOR = texture(TEXTURE, vec2(UV.x, 1.0 - UV.y)); // Read from texture again. 
}

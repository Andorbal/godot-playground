shader_type spatial;

uniform sampler2D noise;
uniform float height_scale = 0.5;
uniform sampler2D normalmap;

varying vec2 tex_position;

void vertex() {
	/* Base the height on the horizontal position */
	//VERTEX.y += cos(VERTEX.x) * sin(VERTEX.z);
	
	/* Scale the height based on the horizontal position */
	//VERTEX.y += cos(VERTEX.x * 4.0) * sin(VERTEX.z * 4.0);
	
	/* Use the noise texture to adjust the height 
	*  - The vertex value is from -1 to 1 while texture needs
	*    0 - 1, so we've got to map the values
	*/
	tex_position = VERTEX.xz / 2.0 + 0.5;
	float height = texture(noise, tex_position).x;
	VERTEX.y += height * height_scale;
}

void fragment() {
  NORMAL_MAP = texture(normalmap, tex_position).xyz;
}

//void light() {
	// Called for every pixel for every light affecting the material.
	// Uncomment to replace the default light processing function with this one.
//}

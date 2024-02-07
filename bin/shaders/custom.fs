#version 330

in vec2 fragCoord;
out vec4 fragColor;

uniform float time = 0;


vec3 customColor() {
	return vec3(0.8,0.5,0.8);
}

void main() {

	float u_time = time;

	// Core Code
	float r = abs(sin(u_time));
	float g = abs(sin(u_time*0.3));
	float b = abs(sin(u_time*0.7));
	fragColor = vec4(r,g,b, 1.0);

	// ShaderToy Specific Output Settings
	//fragColor = gl_FragColor;
}
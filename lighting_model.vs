#version 330 core
layout(location = 0) in vec3 aPos; // Vertex position
layout(location = 1) in vec3 aNormal; // Normal vector

out vec3 FragPos; // Pass position to fragment shader
out vec3 Normal; // Pass normal to fragment shader

uniform mat4 view; // View matrix
uniform mat4 projection; // Projection matrix

void main()
{
    FragPos = aPos; // Position is passed through
    Normal = aNormal; // Normal is passed through
    gl_Position = projection * view * vec4(aPos, 1.0); // Apply view and projection matrices
}

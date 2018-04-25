// Vertex shader
#version 150
#extension GL_ARB_explicit_attrib_location : require

layout(location = 0) in vec4 a_position;
layout(location = 1) in vec3 a_normal;

uniform mat4 u_mvp;
uniform mat4 u_mv;

out vec3 v_color;

void main()
{
    v_color = 0.5 * a_normal + 0.5;
    gl_Position = u_mvp * a_position;
}

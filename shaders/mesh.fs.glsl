#version 330 core

in vec3 v_Normal;
in vec2 v_UV;

uniform vec3 MeshColor;
uniform float Specular;

out vec4 Color;
out vec4 Normal;

void main(void)
{
        Color = vec4(MeshColor, 1);
        Normal = vec4(v_Normal, Specular);
}

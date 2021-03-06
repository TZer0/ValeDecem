#version 330 core

layout(location = 0)in vec3 Position;
layout(location = 1)in vec3 Normal;
layout(location = 2)in vec2 UV;

uniform mat4 Projection;
uniform mat4 View;
uniform mat4 Model;

out vec2 v_UV;

void main(){
    gl_Position = Projection * View * Model * vec4(Position, 1.f);
    v_UV = UV;
}

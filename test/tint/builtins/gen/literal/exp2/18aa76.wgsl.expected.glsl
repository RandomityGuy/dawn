//
// fragment_main
//
#version 310 es
precision highp float;
precision highp int;

void exp2_18aa76() {
  vec2 res = vec2(2.0f);
}
void main() {
  exp2_18aa76();
}
//
// compute_main
//
#version 310 es

void exp2_18aa76() {
  vec2 res = vec2(2.0f);
}
layout(local_size_x = 1, local_size_y = 1, local_size_z = 1) in;
void main() {
  exp2_18aa76();
}
//
// vertex_main
//
#version 310 es


struct VertexOutput {
  vec4 pos;
};

void exp2_18aa76() {
  vec2 res = vec2(2.0f);
}
VertexOutput vertex_main_inner() {
  VertexOutput v = VertexOutput(vec4(0.0f));
  v.pos = vec4(0.0f);
  exp2_18aa76();
  return v;
}
void main() {
  gl_Position = vertex_main_inner().pos;
  gl_Position.y = -(gl_Position.y);
  gl_Position.z = ((2.0f * gl_Position.z) - gl_Position.w);
  gl_PointSize = 1.0f;
}

cbuffer cbuffer_m : register(b0) {
  uint4 m[1];
};

matrix<float16_t, 2, 2> m_load(uint offset) {
  const uint scalar_offset = ((offset + 0u)) / 4;
  uint ubo_load = m[scalar_offset / 4][scalar_offset % 4];
  const uint scalar_offset_1 = ((offset + 4u)) / 4;
  uint ubo_load_1 = m[scalar_offset_1 / 4][scalar_offset_1 % 4];
  return matrix<float16_t, 2, 2>(vector<float16_t, 2>(float16_t(f16tof32(ubo_load & 0xFFFF)), float16_t(f16tof32(ubo_load >> 16))), vector<float16_t, 2>(float16_t(f16tof32(ubo_load_1 & 0xFFFF)), float16_t(f16tof32(ubo_load_1 >> 16))));
}

[numthreads(1, 1, 1)]
void f() {
  matrix<float16_t, 2, 2> l_m = m_load(0u);
  uint ubo_load_2 = m[0].y;
  vector<float16_t, 2> l_m_1 = vector<float16_t, 2>(float16_t(f16tof32(ubo_load_2 & 0xFFFF)), float16_t(f16tof32(ubo_load_2 >> 16)));
  return;
}

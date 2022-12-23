uniform float uTime;

void main() {
  float amp = 1.;
  float freq = 0.4;
  float time = uTime * 0.0008;

  float noiseValueX = snoise(-position * freq + time) * amp;
  float noiseValueY = snoise(position * freq + time) * amp;
  float noiseValueZ = snoise(position * freq + time) * amp;
  noiseValueZ += snoise(position * freq * 3. + time) * amp * 0.2;

  vec3 pos = vec3(position.x + noiseValueX, position.y + noiseValueY, position.z + noiseValueZ);

  gl_Position = projectionMatrix * modelViewMatrix * vec4(pos, 1.0);
  gl_PointSize =  2.0;
}
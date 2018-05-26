#include <cmath>

/**
 *
 * Getting the Volume of the field of view cone from the
 * Field of View angle (rad), assuming a visible depth of "depth" (here set to a
 * dummy value of 3, but we'll ask Anshul about what we should put later).
 */
float getVolumeFOV(float fov) {
  float depth = 3.0;
  float sin_term = sin(fov / 2);
  float ret = 3.14159 * pow(h, 3) * pow(sin_term, 2) / 3.0;
  return ret;
}

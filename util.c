#include <cmath>


void rotateAboutAxis(Point point, int axis, float angle) {
  switch (axis) {
    case 0: //About x-axis
      point.y = (point.y * math.cos(angle) - point.z * math.sin(angle));
      point.z = (point.y * math.sin(angle) + point.z * math.cos(angle));
      break;
    case 1: //About y-axis
      point.x = (point.x * math.cos(angle) + point.z * math.sin(angle));
      point.z = (-point.x * math.sin(angle) + point.z * math.cos(angle));
      break;
    case 2: //About z-axis
      point.x = (point.x * math.cos(angle) - point.y * math.sin(angle));
      point.y = (point.x * math.sin(angle) + point.y * math.cos(angle));
      break;
  }
  return;
}

void translate(Point p, int x, int y, int z) {
  p.x += x;
  p.y += y;
  p.z += z;
  return;
}

/* We approximate the field of view of the camera
 * as a cone coming from the location of the camera
 * with the same orientation as the camera.
 * To determine if the point is in the FOV,
 * we translate the point so that it is evaluated
 * from the reference frame of the camera facing forwards
 * at the origin. */
bool isInFOV(Point point, Sensor sensor) {
  Point tempPoint;
  tempPoint.x = point.x;
  tempPoint.y = point.y;
  tempPoint.z = point.z;
  translate(tempPoint, -sensor.translation.x, -sensor.translation.y, -sensor.translation.z);
  rotateAboutAxis(tempPoint, 0, -sensor.rotation.x);
  rotateAboutAxis(tempPoint, 0, -sensor.rotation.y);
  rotateAboutAxis(tempPoint, 0, -sensor.rotation.z);
  // Now we have the coordinates of the point in the camera's ref frame
  //Assume that the z-axis points forward
  if (z < 0) { //Behind the camera
    return false;
  }

  // Now, all we really care about is the angle between the
  // point and the z-axis.
  float magnitude = math.sqrt(math.pow(tempPoint.x, 2) + math.pow(tempPoint.y, 2) + math.pow(tempPoint.z, 2));
  float pt_cos = ((float) tempPoint.z) / magnitude;

  //Note that we can just compare the cosines, as the FOV is probably less than 180 degrees
  float min_cos = math.cos(sensor.CameraParams.fov);
  if (pt_cos >= min_cos) {
    return true;
  }
  return false;

}

int numVoxelsSeen(Sensor* sensors, int num_cam) {
  float min_x = -50.0;
  float max_x = 50.0;
  float min_y = -50.0;
  float max_y = 50.0;
  float min_z = -50.0;
  float max_z = 50.0;
  int counter = 0;
  for (float i = min_x; i <= max_x; i += 1.0) {
    for (float j = min_x; j <= max_x; j += 1.0) {
        for (float k = min_x; k <= max_x; k += 1.0) {
          for (int l = 0; l < num_cam; l++) {
            Point p;
            p.x = i;
            p.y = j;
            p.z = k;
            if (isInFOV(p, sensors[l])) {
              counter++;
              break;
            }
          }
        }
      }
  }
  return counter;
}

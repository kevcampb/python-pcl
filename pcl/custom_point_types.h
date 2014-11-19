#include <pcl/point_types.h>
#include <pcl/point_cloud.h>

struct PointXYZITf {
  float x;
  float y;
  float z;
  uint8_t intensity;
  double timestamp;
  EIGEN_MAKE_ALIGNED_OPERATOR_NEW   // make sure our new allocators are aligned
} EIGEN_ALIGN16;                    // enforce SSE padding for correct memory alignment

struct PointXYZITd {
  double x;
  double y;
  double z;
  uint8_t intensity;
  double timestamp;
  EIGEN_MAKE_ALIGNED_OPERATOR_NEW   // make sure our new allocators are aligned
} EIGEN_ALIGN16;                    // enforce SSE padding for correct memory alignment

struct PointXYZFf {
  float x;
  float y;
  float z;
  float frequency;
  EIGEN_MAKE_ALIGNED_OPERATOR_NEW   // make sure our new allocators are aligned
} EIGEN_ALIGN16;                    // enforce SSE padding for correct memory alignment

POINT_CLOUD_REGISTER_POINT_STRUCT ( PointXYZITf,
                                    ( float, x, x )
                                    ( float, y, y )
                                    ( float, z, z )
                                    ( uint8_t, intensity, intensity )
                                    ( double, timestamp, timestamp )
                                  )

POINT_CLOUD_REGISTER_POINT_STRUCT ( PointXYZITd,
                                    ( double, x, x )
                                    ( double, y, y )
                                    ( double, z, z )
                                    ( uint8_t, intensity, intensity )
                                    ( double, timestamp, timestamp )
                                  )

POINT_CLOUD_REGISTER_POINT_STRUCT ( PointXYZFf,
                                    ( float, x, x )
                                    ( float, y, y )
                                    ( float, z, z )
                                    ( float, frequency, frequency )
                                  )

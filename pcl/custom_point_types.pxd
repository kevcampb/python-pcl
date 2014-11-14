cimport pcl_defs as cpp

cdef extern from "custom_point_types.h":
    cdef struct PointXYZITf:
        PointXYZITf()
        float x
        float y
        float z
        unsigned char intensity
        double timestamp
    cdef struct PointXYZITd:
        PointXYZITd()
        double x
        double y
        double z
        unsigned char intensity
        double timestamp

cdef extern from "indexing.hpp":
    PointXYZITf *getptr_XYZITf "getptr<PointXYZITf>"(
            cpp.PointCloud[PointXYZITf] *, size_t)
    PointXYZITd *getptr_XYZITd "getptr<PointXYZITd>"(
            cpp.PointCloud[PointXYZITd] *, size_t)

cdef extern from "pcl/io/pcd_io.h":
    int loadPCDFile_XYZITf "pcl::io::loadPCDFile<PointXYZITf>"(
            cpp.string file_name,
            cpp.PointCloud[PointXYZITf] &cloud) nogil except +
    int savePCDFile_XYZITf "pcl::io::savePCDFileBinaryCompressed<PointXYZITf>"(
            cpp.string file_name,
            cpp.PointCloud[PointXYZITf] &cloud) nogil except +
    int loadPCDFile_XYZITd "pcl::io::loadPCDFile<PointXYZITd>"(
            cpp.string file_name,
            cpp.PointCloud[PointXYZITd] &cloud) nogil except +
    int savePCDFile_XYZITd "pcl::io::savePCDFileBinaryCompressed<PointXYZITd>"(
            cpp.string file_name,
            cpp.PointCloud[PointXYZITd] &cloud) nogil except +

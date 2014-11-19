cimport pcl_defs as cpp

cdef extern from "pcl/point_types.h" namespace "pcl":
    cdef struct PointXYZRGBA:
        PointXYZRGBA()
        float x
        float y
        float z
        unsigned char b
        unsigned char g
        unsigned char r
        unsigned char a

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
    cdef struct PointXYZFf:
        PointXYZIF()
        float x
        float y
        float z
        float frequency

cdef extern from "indexing.hpp":
    PointXYZRGBA *getptr_XYZRGBA "getptr<pcl::PointXYZRGBA>"(
            cpp.PointCloud[PointXYZRGBA] *, size_t)
    PointXYZITf *getptr_XYZITf "getptr<PointXYZITf>"(
            cpp.PointCloud[PointXYZITf] *, size_t)
    PointXYZITd *getptr_XYZITd "getptr<PointXYZITd>"(
            cpp.PointCloud[PointXYZITd] *, size_t)
    PointXYZFf *getptr_XYZFf "getptr<PointXYZFf>"(
            cpp.PointCloud[PointXYZFf] *, size_t)

cdef extern from "pcl/io/pcd_io.h":
    int loadPCDFile_XYZRGBA "pcl::io::loadPCDFile<pcl::PointXYZRGBA>"(
            cpp.string file_name,
            cpp.PointCloud[PointXYZRGBA] &cloud) nogil except +
    int savePCDFile_XYZRGBA "pcl::io::savePCDFileBinaryCompressed<pcl::PointXYZRGBA>"(
            cpp.string file_name,
            cpp.PointCloud[PointXYZRGBA] &cloud) nogil except +
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
    int loadPCDFile_XYZFf "pcl::io::loadPCDFile<PointXYZFf>"(
            cpp.string file_name,
            cpp.PointCloud[PointXYZFf] &cloud) nogil except +
    int savePCDFile_XYZFf "pcl::io::savePCDFileBinaryCompressed<PointXYZFf>"(
            cpp.string file_name,
            cpp.PointCloud[PointXYZFf] &cloud) nogil except +

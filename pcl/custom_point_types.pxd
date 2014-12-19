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
        PointXYZFf()
        float x
        float y
        float z
        float frequency
    cdef struct PointXYZFd:
        PointXYZFd()
        double x
        double y
        double z
        double frequency
    cdef struct PointXYZCOVf:
        PointXYZCOVf()
        float x
        float y
        float z
        float cov_xx
        float cov_yy
        float cov_zz
        float cov_xy
        float cov_yz
        float cov_zx

cdef extern from "indexing.hpp":
    PointXYZRGBA *getptr_XYZRGBA "getptr<pcl::PointXYZRGBA>"(
            cpp.PointCloud[PointXYZRGBA] *, size_t)
    PointXYZITf *getptr_XYZITf "getptr<PointXYZITf>"(
            cpp.PointCloud[PointXYZITf] *, size_t)
    PointXYZITd *getptr_XYZITd "getptr<PointXYZITd>"(
            cpp.PointCloud[PointXYZITd] *, size_t)
    PointXYZFf *getptr_XYZFf "getptr<PointXYZFf>"(
            cpp.PointCloud[PointXYZFf] *, size_t)
    PointXYZFd *getptr_XYZFd "getptr<PointXYZFd>"(
            cpp.PointCloud[PointXYZFd] *, size_t)
    PointXYZCOVf *getptr_XYZCOVf "getptr<PointXYZCOVf>"(
            cpp.PointCloud[PointXYZCOVf] *, size_t)

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
    int loadPCDFile_XYZFd "pcl::io::loadPCDFile<PointXYZFd>"(
            cpp.string file_name,
            cpp.PointCloud[PointXYZFd] &cloud) nogil except +
    int savePCDFile_XYZFd "pcl::io::savePCDFileBinaryCompressed<PointXYZFd>"(
            cpp.string file_name,
            cpp.PointCloud[PointXYZFd] &cloud) nogil except +
    int loadPCDFile_XYZCOVf "pcl::io::loadPCDFile<PointXYZCOVf>"(
            cpp.string file_name,
            cpp.PointCloud[PointXYZCOVf] &cloud) nogil except +
    int savePCDFile_XYZCOVf "pcl::io::savePCDFileBinaryCompressed<PointXYZCOVf>"(
            cpp.string file_name,
            cpp.PointCloud[PointXYZCOVf] &cloud) nogil except +

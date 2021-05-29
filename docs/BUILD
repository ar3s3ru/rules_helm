load("@io_bazel_skydoc//stardoc:stardoc.bzl", "stardoc")
load("@bazel_skylib//:bzl_library.bzl", "bzl_library")

package(default_visibility = ["//visibility:public"])

bzl_library(
    name = "skylib_paths",
    srcs = ["@bazel_skylib//lib:paths.bzl"],
)

stardoc(
    name = "docs",
    out = "docs.md",
    input = "//helm:helm.bzl",
    deps = [
        ":skylib_paths",
    ],
)

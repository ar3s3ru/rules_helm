load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def helm_repositories():
    skylib_version = "0.8.0"
    http_archive(
        name = "bazel_skylib",
        type = "tar.gz",
        url = "https://github.com/bazelbuild/bazel-skylib/releases/download/{}/bazel-skylib.{}.tar.gz".format(skylib_version, skylib_version),
        sha256 = "2ef429f5d7ce7111263289644d233707dba35e39696377ebab8b0bc701f7818e",
    )

    http_archive(
        name = "helm",
        sha256 = "0a9c80b0f211791d6a9d36022abd0d6fd125139abe6d1dcf4c5bf3bc9dcec9c8",
        urls = ["https://get.helm.sh/helm-v3.6.0-linux-amd64.tar.gz"],
        build_file = "@com_github_tmc_rules_helm//:helm.BUILD",
    )

    http_archive(
        name = "helm_osx",
        sha256 = "7f6bcf15e5c828504dddbe733813a6d73e41abf28d649e7b9d698c4a77d412dd",
        urls = ["https://get.helm.sh/helm-v3.6.0-darwin-amd64.tar.gz"],
        build_file = "@com_github_tmc_rules_helm//:helm.BUILD",
    )

load("//build/kernel/kleaf:kernel.bzl", "kernel_module")

def rtl8723du_module(name, kernel_build, deps = None):
    kernel_module(
        name = name,
        srcs = ["//vendor/amlogic/realtek-drivers/8723du:rtl8723du_srcs"],
        makefile = ["//vendor/amlogic/realtek-drivers/8723du:Makefile"],
        deps = deps,
        outs = ["8723du.ko"],
        kernel_build = kernel_build,
    )

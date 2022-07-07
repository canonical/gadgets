import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gadgets/views/partition_view.dart';
import 'package:device_tree_lib/all.dart';

final partition = Partition(
    majorMinor: "253:0",
    blockSize: "4096 B",
    device: "/dev/dm-0",
    rawSize: "929.59 GiB",
    uuid: "N/A",
    size: "913.92 GiB (98.31%)",
    used: "765.78 GiB (83.8%)",
    label: "N/A",
    id: "/",
    fs: "ext4",
    mapped: "nvme1n1p3_crypt");

Widget nearlyFullPartition() =>
    PartitionView(partition: partition, isSelected: false);

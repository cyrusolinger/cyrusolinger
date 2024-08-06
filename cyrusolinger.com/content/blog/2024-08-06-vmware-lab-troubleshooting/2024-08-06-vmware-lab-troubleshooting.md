---
title: "Resolving Issues in VMware"
date: 2024-08-06
categories: vmware, networking, troubleshooting
---

## Introduction

In my recent journey into virtualization, I decided to explore VMware for the first time, having used other virtual machine managers in the past. This post documents an issue I encountered with the network adapter in VMware and the steps I took to resolve it.

## Installing VMware

I started by installing VMware on my system, setting up the virtual machine was a breeze because I used a lab file that was provided to me.

## Checking the IP Address

To make administration easier, I used `ssh` to manage my virtual machine. The first step is to check the IP address assigned to the VM using the `ip a` command, which provides details about network interfaces and their configurations.

## Encountering the Issue

After running `ip a`, I noticed that the expected IP address was not showing up under `eth` or `ens` interfaces, making it impossible to `ssh` into the VM. Instead, it was only showing the MAC address.

## Troubleshooting Steps

I performed several troubleshooting steps to resolve the issue:
- Rebooted the VM multiple times.
- Changed the VM Network connection settings between Bridged and NAT.
- Ensured the host machine was connected to a wired ethernet connection to limit variability as much as possible.

I also explored different network connection options in VMware (Switching between NAT and Bridged network connections):

{% image "./network-adapter.png", "Network Connection Options" %}

## Resolution: Faulty Network Adapter

After much trial and error, I determined that the network adapter in the VM was faulty. The resolution involved removing and re-adding the network adapter in the VMware Hardware Panel. This action successfully resolved the issue, and the IP address became visible, allowing for SSH access.

Here is where you can add or remove parts of the VM 'Hardware' for reference in VMWare:

{% image "./hardware.png", "VMware Hardware Settings" %}

## Documentation for the Community

To help others who might encounter similar issues, I created documentation detailing the steps and solutions in the course I am taking:

{% image "./article.png", "Resolved Issue" %}

## Conclusion

This experience was a reminder of the importance of thorough troubleshooting and documentation (VMWare your docs are outdated btw!). By sharing this solution, I hope to assist others in the community who may face similar challenges with VMware network adapters.

Big shoutout to Steven of MyDFIR for the guidance and assistance in resolving this!
//
//  main.swift
//  Perfect JSON API Example
//
//  Created by Jonathan Guthrie on 2016-09-26.
//	Copyright (C) 2015 PerfectlySoft, Inc.
//
//===----------------------------------------------------------------------===//
//
// This source file is part of the Perfect.org open source project
//
// Copyright (c) 2015 - 2016 PerfectlySoft Inc. and the Perfect project authors
// Licensed under Apache License v2.0
//
// See http://perfect.org/licensing.html for license information
//
//===----------------------------------------------------------------------===//
//

import PerfectLib

// List the contents of the home directory
#if os(Linux)
	let userRoot = "/home/"
#else
	let userRoot = "/Users/"
#endif

let userRootDir = Dir(userRoot)




print("The following user directories exist in \(userRootDir.path)")

do {
	try userRootDir.forEachEntry(closure: {
		n in
		print(n)
		if File(userRoot+n).isDir {
			let nextDir = Dir(userRoot+n)
			do {
				try nextDir.forEachEntry(closure: {
					m in
					print("    \(m)")
				})
			} catch {
				print(error)
			}
			return
		}
	})
} catch {
	print(error)
}

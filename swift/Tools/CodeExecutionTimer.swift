//
//  CodeExecutionTimer.swift
//  abavisg-lib
//
//  Created by Georgios Ampavis
//  Copyright © 2016 Georgios Ampavis. All rights reserved.
//

import Foundation

class CodeExecutionTimer {

	static var startTime: CFAbsoluteTime?
	static var endTime: CFAbsoluteTime?

	class func start() {
		startTime = CFAbsoluteTimeGetCurrent()
        print("=========== TASK STARTED ==============")
	}

	class func stop() -> CFAbsoluteTime {
		self.endTime = CFAbsoluteTimeGetCurrent()

		if let endTime = self.endTime {
            let duration:CFAbsoluteTime = endTime - self.startTime!
            print("The task took \(duration) seconds.")
            print("=========== TASK FINISHED ==============")
			return duration
		} else {
			return 0
		}
	}
}

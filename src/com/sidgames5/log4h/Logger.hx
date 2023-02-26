package com.sidgames5.log4h;

import haxe.exceptions.NotImplementedException;

class Logger {
	public static function info(text:Any) {
		Sys.stdout().writeString(Date.now().toString() + ": " + text + "\r\n");
	}

	public static function log(type:LogType, text:Any) {
		switch (type) {
			case INFO:
				info(text);
			case DEBUG:
				throw new NotImplementedException("This function is not implemented yet!");
			case WARN:
				throw new NotImplementedException("This function is not implemented yet!");
			case ERROR:
				throw new NotImplementedException("This function is not implemented yet!");
		}
	}

	public static function main() {
		return;
	}
}

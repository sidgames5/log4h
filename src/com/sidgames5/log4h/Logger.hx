package com.sidgames5.log4h;

import haxe.exceptions.NotImplementedException;

class Logger {
	public static function info(text:Any) {
		Console.println("[INFO] " + Date.now().toString() + ": " + text + "\r\n");
	}

	public static function debug(text:Any) {
		Console.debug("[DEBUG] " + Date.now().toString() + ": " + text + "\r\n");
	}

	public static function warn(text:Any) {}

	public static function error(text:Any) {}

	public static function log(type:LogType, text:Any) {
		switch (type) {
			case INFO:
				info(text);
			case DEBUG:
				debug(text);
			case WARN:
				warn(text);
			case ERROR:
				error(text);
		}
	}

	public static function main() {
		return;
	}
}

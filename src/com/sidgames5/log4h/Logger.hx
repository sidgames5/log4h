package com.sidgames5.log4h;

import haxe.exceptions.NotImplementedException;

class Logger {
	public static function info(text:Any) {
		Console.println("[INFO] " + Date.now().toString() + ": " + text);
	}

	public static function debug(text:Any) {
		Console.printlnFormatted("<#7f7f7f>[DEBUG] " + Date.now().toString() + ": " + text + "</>");
	}

	public static function warn(text:Any) {
		Console.printlnFormatted("<#ff7f00>[WARN] " + Date.now().toString() + ": " + text + "</>");
	}

	public static function error(text:Any) {
		Console.printlnFormatted("<#ffffff>[ERROR] " + Date.now().toString() + ": " + text + "</>");
	}

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

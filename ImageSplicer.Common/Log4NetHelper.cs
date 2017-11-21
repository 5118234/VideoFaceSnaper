﻿using System.Reflection;
using log4net;

namespace ImageSplicer.Common
{
    public class Log4NetHelper
    {
        public static log4net.ILog GetLog(string className)
        {
            if (className == null) return null;
            return log4net.LogManager.GetLogger(className);
        }

        private static ILog _log = null;
        /// <summary>
        /// 公开的日志对象
        /// </summary>
        public static ILog Instance
        {
            get
            {
                if (_log == null)
                {
                    _log = log4net.LogManager.GetLogger("DefineLoger");
                }
                return _log;
            }
        }
    }
}

package com.x.google.debug;

import com.x.google.common.Log;

public class CommonLogger extends SimpleLogger
{
  public void log(String paramString)
  {
    Log.log(null, paramString);
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.x.google.debug.CommonLogger
 * JD-Core Version:    0.6.2
 */
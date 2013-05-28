package com.google.glass.companion;

import android.bluetooth.BluetoothSocket;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

public class BluetoothSocketWrapper
{
  private final BluetoothSocket socket;

  public BluetoothSocketWrapper(BluetoothSocket paramBluetoothSocket)
  {
    this.socket = paramBluetoothSocket;
  }

  public void close()
    throws IOException
  {
    this.socket.close();
  }

  public void connect()
    throws IOException
  {
    this.socket.connect();
  }

  public InputStream getInputStream()
    throws IOException
  {
    return this.socket.getInputStream();
  }

  public OutputStream getOutputStream()
    throws IOException
  {
    return this.socket.getOutputStream();
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.glass.companion.BluetoothSocketWrapper
 * JD-Core Version:    0.6.2
 */
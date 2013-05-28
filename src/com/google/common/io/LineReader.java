package com.google.common.io;

import com.google.common.annotations.Beta;
import com.google.common.base.Preconditions;
import java.io.IOException;
import java.io.Reader;
import java.nio.CharBuffer;
import java.util.LinkedList;
import java.util.Queue;

@Beta
public final class LineReader
{
  private final char[] buf = new char[4096];
  private final CharBuffer cbuf = CharBuffer.wrap(this.buf);
  private final LineBuffer lineBuf = new LineBuffer()
  {
    protected void handleLine(String paramAnonymousString1, String paramAnonymousString2)
    {
      LineReader.this.lines.add(paramAnonymousString1);
    }
  };
  private final Queue<String> lines = new LinkedList();
  private final Readable readable;
  private final Reader reader;

  public LineReader(Readable paramReadable)
  {
    Preconditions.checkNotNull(paramReadable);
    this.readable = paramReadable;
    if ((paramReadable instanceof Reader));
    for (Reader localReader = (Reader)paramReadable; ; localReader = null)
    {
      this.reader = localReader;
      return;
    }
  }

  public String readLine()
    throws IOException
  {
    while (true)
    {
      if (this.lines.peek() == null)
      {
        this.cbuf.clear();
        if (this.reader == null)
          break label70;
      }
      label70: for (int i = this.reader.read(this.buf, 0, this.buf.length); i == -1; i = this.readable.read(this.cbuf))
      {
        this.lineBuf.finish();
        return (String)this.lines.poll();
      }
      this.lineBuf.add(this.buf, 0, i);
    }
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.common.io.LineReader
 * JD-Core Version:    0.6.2
 */
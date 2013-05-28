package com.google.common.io;

import com.google.common.annotations.Beta;
import com.google.common.base.Preconditions;
import java.io.Closeable;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.Reader;
import java.io.StringReader;
import java.io.Writer;
import java.nio.CharBuffer;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

@Beta
public final class CharStreams
{
  private static final int BUF_SIZE = 2048;

  public static Writer asWriter(Appendable paramAppendable)
  {
    if ((paramAppendable instanceof Writer))
      return (Writer)paramAppendable;
    return new AppendableWriter(paramAppendable);
  }

  // ERROR //
  public static <R extends Readable,  extends Closeable, W extends Appendable,  extends Closeable> long copy(InputSupplier<R> paramInputSupplier, OutputSupplier<W> paramOutputSupplier)
    throws IOException
  {
    // Byte code:
    //   0: iconst_1
    //   1: istore_2
    //   2: iconst_0
    //   3: istore_3
    //   4: aload_0
    //   5: invokeinterface 31 1 0
    //   10: checkcast 33	java/lang/Readable
    //   13: astore 4
    //   15: aload_1
    //   16: invokeinterface 38 1 0
    //   21: checkcast 40	java/lang/Appendable
    //   24: astore 7
    //   26: aload 4
    //   28: aload 7
    //   30: invokestatic 43	com/google/common/io/CharStreams:copy	(Ljava/lang/Readable;Ljava/lang/Appendable;)J
    //   33: lstore 11
    //   35: iconst_0
    //   36: iconst_1
    //   37: iadd
    //   38: istore_3
    //   39: aload 7
    //   41: checkcast 45	java/io/Closeable
    //   44: astore 13
    //   46: iload_3
    //   47: iload_2
    //   48: if_icmpge +40 -> 88
    //   51: iload_2
    //   52: istore 14
    //   54: aload 13
    //   56: iload 14
    //   58: invokestatic 51	com/google/common/io/Closeables:close	(Ljava/io/Closeable;Z)V
    //   61: iload_3
    //   62: iconst_1
    //   63: iadd
    //   64: istore 15
    //   66: aload 4
    //   68: checkcast 45	java/io/Closeable
    //   71: astore 16
    //   73: iload 15
    //   75: iconst_2
    //   76: if_icmpge +18 -> 94
    //   79: aload 16
    //   81: iload_2
    //   82: invokestatic 51	com/google/common/io/Closeables:close	(Ljava/io/Closeable;Z)V
    //   85: lload 11
    //   87: lreturn
    //   88: iconst_0
    //   89: istore 14
    //   91: goto -37 -> 54
    //   94: iconst_0
    //   95: istore_2
    //   96: goto -17 -> 79
    //   99: astore 8
    //   101: aload 7
    //   103: checkcast 45	java/io/Closeable
    //   106: astore 9
    //   108: iload_2
    //   109: ifge +43 -> 152
    //   112: iload_2
    //   113: istore 10
    //   115: aload 9
    //   117: iload 10
    //   119: invokestatic 51	com/google/common/io/Closeables:close	(Ljava/io/Closeable;Z)V
    //   122: iconst_0
    //   123: iconst_1
    //   124: iadd
    //   125: istore_3
    //   126: aload 8
    //   128: athrow
    //   129: astore 5
    //   131: aload 4
    //   133: checkcast 45	java/io/Closeable
    //   136: astore 6
    //   138: iload_3
    //   139: iconst_2
    //   140: if_icmpge +18 -> 158
    //   143: aload 6
    //   145: iload_2
    //   146: invokestatic 51	com/google/common/io/Closeables:close	(Ljava/io/Closeable;Z)V
    //   149: aload 5
    //   151: athrow
    //   152: iconst_0
    //   153: istore 10
    //   155: goto -40 -> 115
    //   158: iconst_0
    //   159: istore_2
    //   160: goto -17 -> 143
    //
    // Exception table:
    //   from	to	target	type
    //   26	35	99	finally
    //   15	26	129	finally
    //   39	46	129	finally
    //   54	61	129	finally
    //   101	108	129	finally
    //   115	122	129	finally
    //   126	129	129	finally
  }

  public static <R extends Readable,  extends Closeable> long copy(InputSupplier<R> paramInputSupplier, Appendable paramAppendable)
    throws IOException
  {
    Readable localReadable = (Readable)paramInputSupplier.getInput();
    try
    {
      long l = copy(localReadable, paramAppendable);
      Closeables.close((Closeable)localReadable, false);
      return l;
    }
    finally
    {
      Closeables.close((Closeable)localReadable, true);
    }
  }

  public static long copy(Readable paramReadable, Appendable paramAppendable)
    throws IOException
  {
    CharBuffer localCharBuffer = CharBuffer.allocate(2048);
    int i;
    for (long l = 0L; ; l += i)
    {
      i = paramReadable.read(localCharBuffer);
      if (i == -1)
        return l;
      localCharBuffer.flip();
      paramAppendable.append(localCharBuffer, 0, i);
    }
  }

  public static InputSupplier<Reader> join(Iterable<? extends InputSupplier<? extends Reader>> paramIterable)
  {
    return new InputSupplier()
    {
      public Reader getInput()
        throws IOException
      {
        return new MultiReader(this.val$suppliers.iterator());
      }
    };
  }

  public static InputSupplier<Reader> join(InputSupplier<? extends Reader>[] paramArrayOfInputSupplier)
  {
    return join(Arrays.asList(paramArrayOfInputSupplier));
  }

  public static InputSupplier<InputStreamReader> newReaderSupplier(InputSupplier<? extends InputStream> paramInputSupplier, final Charset paramCharset)
  {
    Preconditions.checkNotNull(paramInputSupplier);
    Preconditions.checkNotNull(paramCharset);
    return new InputSupplier()
    {
      public InputStreamReader getInput()
        throws IOException
      {
        return new InputStreamReader((InputStream)this.val$in.getInput(), paramCharset);
      }
    };
  }

  public static InputSupplier<StringReader> newReaderSupplier(String paramString)
  {
    Preconditions.checkNotNull(paramString);
    return new InputSupplier()
    {
      public StringReader getInput()
      {
        return new StringReader(this.val$value);
      }
    };
  }

  public static OutputSupplier<OutputStreamWriter> newWriterSupplier(OutputSupplier<? extends OutputStream> paramOutputSupplier, final Charset paramCharset)
  {
    Preconditions.checkNotNull(paramOutputSupplier);
    Preconditions.checkNotNull(paramCharset);
    return new OutputSupplier()
    {
      public OutputStreamWriter getOutput()
        throws IOException
      {
        return new OutputStreamWriter((OutputStream)this.val$out.getOutput(), paramCharset);
      }
    };
  }

  public static <R extends Readable,  extends Closeable> String readFirstLine(InputSupplier<R> paramInputSupplier)
    throws IOException
  {
    Readable localReadable = (Readable)paramInputSupplier.getInput();
    try
    {
      String str = new LineReader(localReadable).readLine();
      Closeables.close((Closeable)localReadable, false);
      return str;
    }
    finally
    {
      Closeables.close((Closeable)localReadable, true);
    }
  }

  public static <R extends Readable,  extends Closeable, T> T readLines(InputSupplier<R> paramInputSupplier, LineProcessor<T> paramLineProcessor)
    throws IOException
  {
    Readable localReadable = (Readable)paramInputSupplier.getInput();
    try
    {
      LineReader localLineReader = new LineReader(localReadable);
      boolean bool;
      do
      {
        String str = localLineReader.readLine();
        if (str == null)
          break;
        bool = paramLineProcessor.processLine(str);
      }
      while (bool);
      Closeables.close((Closeable)localReadable, false);
      return paramLineProcessor.getResult();
    }
    finally
    {
      Closeables.close((Closeable)localReadable, true);
    }
  }

  public static <R extends Readable,  extends Closeable> List<String> readLines(InputSupplier<R> paramInputSupplier)
    throws IOException
  {
    Readable localReadable = (Readable)paramInputSupplier.getInput();
    try
    {
      List localList = readLines(localReadable);
      Closeables.close((Closeable)localReadable, false);
      return localList;
    }
    finally
    {
      Closeables.close((Closeable)localReadable, true);
    }
  }

  public static List<String> readLines(Readable paramReadable)
    throws IOException
  {
    ArrayList localArrayList = new ArrayList();
    LineReader localLineReader = new LineReader(paramReadable);
    while (true)
    {
      String str = localLineReader.readLine();
      if (str == null)
        break;
      localArrayList.add(str);
    }
    return localArrayList;
  }

  public static void skipFully(Reader paramReader, long paramLong)
    throws IOException
  {
    while (paramLong > 0L)
    {
      long l = paramReader.skip(paramLong);
      if (l == 0L)
      {
        if (paramReader.read() == -1)
          throw new EOFException();
        paramLong -= 1L;
      }
      else
      {
        paramLong -= l;
      }
    }
  }

  public static <R extends Readable,  extends Closeable> String toString(InputSupplier<R> paramInputSupplier)
    throws IOException
  {
    return toStringBuilder(paramInputSupplier).toString();
  }

  public static String toString(Readable paramReadable)
    throws IOException
  {
    return toStringBuilder(paramReadable).toString();
  }

  private static <R extends Readable,  extends Closeable> StringBuilder toStringBuilder(InputSupplier<R> paramInputSupplier)
    throws IOException
  {
    Readable localReadable = (Readable)paramInputSupplier.getInput();
    try
    {
      StringBuilder localStringBuilder = toStringBuilder(localReadable);
      Closeables.close((Closeable)localReadable, false);
      return localStringBuilder;
    }
    finally
    {
      Closeables.close((Closeable)localReadable, true);
    }
  }

  private static StringBuilder toStringBuilder(Readable paramReadable)
    throws IOException
  {
    StringBuilder localStringBuilder = new StringBuilder();
    copy(paramReadable, localStringBuilder);
    return localStringBuilder;
  }

  public static <W extends Appendable,  extends Closeable> void write(CharSequence paramCharSequence, OutputSupplier<W> paramOutputSupplier)
    throws IOException
  {
    Preconditions.checkNotNull(paramCharSequence);
    Appendable localAppendable = (Appendable)paramOutputSupplier.getOutput();
    try
    {
      localAppendable.append(paramCharSequence);
      Closeables.close((Closeable)localAppendable, false);
      return;
    }
    finally
    {
      Closeables.close((Closeable)localAppendable, true);
    }
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.common.io.CharStreams
 * JD-Core Version:    0.6.2
 */
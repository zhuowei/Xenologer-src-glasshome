package com.google.glass.util;

import android.util.Log;
import com.google.protobuf.ByteString;
import java.io.File;
import java.io.IOException;
import java.io.OutputStream;
import java.util.concurrent.atomic.AtomicLong;

public class FileSaver
{
  private static final int COPY_SAVER_BUFFER_SIZE = 1048576;
  private static final long MOCK_MODIFIED_TIME_STEP_MS = 1000L;
  private static final String TAG = FileSaver.class.getSimpleName();
  private static FileSaver sharedInstance;
  private final File dir;
  private AtomicLong mockModifiedTimeForTest;

  public FileSaver(String paramString)
  {
    this.dir = new File(paramString);
    if (!this.dir.exists())
    {
      if (this.dir.mkdirs())
        Log.d(TAG, "Created directory: " + paramString);
    }
    else
      return;
    Log.e(TAG, "Error creating directory: " + paramString);
  }

  // ERROR //
  private static long copyWithChannels(File paramFile, java.io.FileOutputStream paramFileOutputStream)
    throws IOException
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_2
    //   2: new 79	java/io/FileInputStream
    //   5: dup
    //   6: aload_0
    //   7: invokespecial 82	java/io/FileInputStream:<init>	(Ljava/io/File;)V
    //   10: astore_3
    //   11: aload_3
    //   12: invokevirtual 86	java/io/FileInputStream:getChannel	()Ljava/nio/channels/FileChannel;
    //   15: astore 5
    //   17: aload_1
    //   18: invokevirtual 89	java/io/FileOutputStream:getChannel	()Ljava/nio/channels/FileChannel;
    //   21: aload 5
    //   23: lconst_0
    //   24: aload 5
    //   26: invokevirtual 95	java/nio/channels/FileChannel:size	()J
    //   29: invokevirtual 99	java/nio/channels/FileChannel:transferFrom	(Ljava/nio/channels/ReadableByteChannel;JJ)J
    //   32: lstore 6
    //   34: aload_3
    //   35: ifnull +7 -> 42
    //   38: aload_3
    //   39: invokevirtual 102	java/io/FileInputStream:close	()V
    //   42: lload 6
    //   44: lreturn
    //   45: astore 4
    //   47: aload_2
    //   48: ifnull +7 -> 55
    //   51: aload_2
    //   52: invokevirtual 102	java/io/FileInputStream:close	()V
    //   55: aload 4
    //   57: athrow
    //   58: astore 4
    //   60: aload_3
    //   61: astore_2
    //   62: goto -15 -> 47
    //
    // Exception table:
    //   from	to	target	type
    //   2	11	45	finally
    //   11	34	58	finally
  }

  public static FileSaver getSharedInstance()
  {
    return sharedInstance;
  }

  public static Saver newSaver(ByteString paramByteString)
  {
    return new Saver()
    {
      public long getEstimatedSizeBytes()
      {
        return this.val$content.size();
      }

      public void save(OutputStream paramAnonymousOutputStream)
        throws IOException
      {
        this.val$content.writeTo(paramAnonymousOutputStream);
      }
    };
  }

  public static Saver newSaver(File paramFile)
  {
    return new Saver()
    {
      public long getEstimatedSizeBytes()
      {
        return this.val$fileToSave.length();
      }

      // ERROR //
      public void save(OutputStream paramAnonymousOutputStream)
        throws IOException
      {
        // Byte code:
        //   0: lconst_0
        //   1: lstore_2
        //   2: aload_1
        //   3: instanceof 33
        //   6: ifeq +65 -> 71
        //   9: aload_0
        //   10: getfield 17	com/google/glass/util/FileSaver$3:val$fileToSave	Ljava/io/File;
        //   13: aload_1
        //   14: checkcast 33	java/io/FileOutputStream
        //   17: invokestatic 37	com/google/glass/util/FileSaver:access$000	(Ljava/io/File;Ljava/io/FileOutputStream;)J
        //   20: lstore_2
        //   21: new 39	java/lang/StringBuilder
        //   24: dup
        //   25: invokespecial 40	java/lang/StringBuilder:<init>	()V
        //   28: invokestatic 44	com/google/glass/util/FileSaver:access$100	()Ljava/lang/String;
        //   31: invokevirtual 48	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   34: ldc 50
        //   36: invokevirtual 48	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   39: invokevirtual 53	java/lang/StringBuilder:toString	()Ljava/lang/String;
        //   42: new 39	java/lang/StringBuilder
        //   45: dup
        //   46: invokespecial 40	java/lang/StringBuilder:<init>	()V
        //   49: ldc 55
        //   51: invokevirtual 48	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   54: lload_2
        //   55: invokevirtual 58	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
        //   58: ldc 60
        //   60: invokevirtual 48	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   63: invokevirtual 53	java/lang/StringBuilder:toString	()Ljava/lang/String;
        //   66: invokestatic 66	android/util/Log:v	(Ljava/lang/String;Ljava/lang/String;)I
        //   69: pop
        //   70: return
        //   71: aconst_null
        //   72: astore 4
        //   74: new 68	java/io/FileInputStream
        //   77: dup
        //   78: aload_0
        //   79: getfield 17	com/google/glass/util/FileSaver$3:val$fileToSave	Ljava/io/File;
        //   82: invokespecial 70	java/io/FileInputStream:<init>	(Ljava/io/File;)V
        //   85: astore 5
        //   87: ldc 71
        //   89: newarray byte
        //   91: astore 7
        //   93: aload 5
        //   95: aload 7
        //   97: iconst_0
        //   98: ldc 71
        //   100: invokevirtual 77	java/io/InputStream:read	([BII)I
        //   103: istore 8
        //   105: iload 8
        //   107: iconst_m1
        //   108: if_icmpeq +21 -> 129
        //   111: aload_1
        //   112: aload 7
        //   114: iconst_0
        //   115: iload 8
        //   117: invokevirtual 83	java/io/OutputStream:write	([BII)V
        //   120: lload_2
        //   121: iload 8
        //   123: i2l
        //   124: ladd
        //   125: lstore_2
        //   126: goto -33 -> 93
        //   129: aload 5
        //   131: ifnull -110 -> 21
        //   134: aload 5
        //   136: invokevirtual 86	java/io/InputStream:close	()V
        //   139: goto -118 -> 21
        //   142: astore 6
        //   144: aload 4
        //   146: ifnull +8 -> 154
        //   149: aload 4
        //   151: invokevirtual 86	java/io/InputStream:close	()V
        //   154: aload 6
        //   156: athrow
        //   157: astore 6
        //   159: aload 5
        //   161: astore 4
        //   163: goto -19 -> 144
        //
        // Exception table:
        //   from	to	target	type
        //   74	87	142	finally
        //   87	93	157	finally
        //   93	105	157	finally
        //   111	120	157	finally
      }
    };
  }

  public static Saver newSaver(byte[] paramArrayOfByte)
  {
    return new Saver()
    {
      public long getEstimatedSizeBytes()
      {
        return this.val$content.length;
      }

      public void save(OutputStream paramAnonymousOutputStream)
        throws IOException
      {
        paramAnonymousOutputStream.write(this.val$content);
      }
    };
  }

  public static void setSharedInstance(FileSaver paramFileSaver)
  {
    sharedInstance = paramFileSaver;
  }

  public void disableMockModifiedTimeForTest()
  {
    this.mockModifiedTimeForTest = null;
  }

  public void enableMockModifiedTimeForTest()
  {
    this.mockModifiedTimeForTest = new AtomicLong(0L);
  }

  public long getModifiedTime()
  {
    long l = System.currentTimeMillis();
    if (this.mockModifiedTimeForTest != null)
      l = this.mockModifiedTimeForTest.getAndAdd(1000L);
    return l;
  }

  public String getPath(String paramString)
  {
    return this.dir.getAbsolutePath() + File.separator + paramString;
  }

  // ERROR //
  public boolean write(Saver paramSaver, String paramString)
  {
    // Byte code:
    //   0: new 35	java/io/File
    //   3: dup
    //   4: aload_2
    //   5: invokespecial 37	java/io/File:<init>	(Ljava/lang/String;)V
    //   8: astore_3
    //   9: aconst_null
    //   10: astore 4
    //   12: aload_0
    //   13: invokevirtual 156	com/google/glass/util/FileSaver:getModifiedTime	()J
    //   16: lstore 5
    //   18: new 88	java/io/FileOutputStream
    //   21: dup
    //   22: aload_3
    //   23: invokespecial 157	java/io/FileOutputStream:<init>	(Ljava/io/File;)V
    //   26: astore 7
    //   28: aload_1
    //   29: aload 7
    //   31: invokeinterface 163 2 0
    //   36: aload_3
    //   37: lload 5
    //   39: invokevirtual 167	java/io/File:setLastModified	(J)Z
    //   42: pop
    //   43: getstatic 29	com/google/glass/util/FileSaver:TAG	Ljava/lang/String;
    //   46: new 48	java/lang/StringBuilder
    //   49: dup
    //   50: invokespecial 49	java/lang/StringBuilder:<init>	()V
    //   53: ldc 169
    //   55: invokevirtual 55	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   58: aload_3
    //   59: invokevirtual 149	java/io/File:getAbsolutePath	()Ljava/lang/String;
    //   62: invokevirtual 55	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   65: ldc 171
    //   67: invokevirtual 55	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   70: lload 5
    //   72: invokevirtual 174	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   75: invokevirtual 58	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   78: invokestatic 177	android/util/Log:v	(Ljava/lang/String;Ljava/lang/String;)I
    //   81: pop
    //   82: iconst_1
    //   83: istore 13
    //   85: aload 7
    //   87: ifnull +8 -> 95
    //   90: aload 7
    //   92: invokevirtual 178	java/io/FileOutputStream:close	()V
    //   95: iload 13
    //   97: ifne +8 -> 105
    //   100: aload_3
    //   101: invokevirtual 181	java/io/File:delete	()Z
    //   104: pop
    //   105: iload 13
    //   107: ireturn
    //   108: astore 19
    //   110: getstatic 29	com/google/glass/util/FileSaver:TAG	Ljava/lang/String;
    //   113: ldc 183
    //   115: aload 19
    //   117: invokestatic 186	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   120: pop
    //   121: iconst_0
    //   122: istore 13
    //   124: goto -29 -> 95
    //   127: astore 8
    //   129: getstatic 29	com/google/glass/util/FileSaver:TAG	Ljava/lang/String;
    //   132: ldc 188
    //   134: aload 8
    //   136: invokestatic 186	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   139: pop
    //   140: iconst_0
    //   141: istore 13
    //   143: aload 4
    //   145: ifnull -50 -> 95
    //   148: aload 4
    //   150: invokevirtual 178	java/io/FileOutputStream:close	()V
    //   153: iconst_0
    //   154: istore 13
    //   156: goto -61 -> 95
    //   159: astore 14
    //   161: getstatic 29	com/google/glass/util/FileSaver:TAG	Ljava/lang/String;
    //   164: ldc 183
    //   166: aload 14
    //   168: invokestatic 186	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   171: pop
    //   172: iconst_0
    //   173: istore 13
    //   175: goto -80 -> 95
    //   178: astore 9
    //   180: aload 4
    //   182: ifnull +8 -> 190
    //   185: aload 4
    //   187: invokevirtual 178	java/io/FileOutputStream:close	()V
    //   190: aload 9
    //   192: athrow
    //   193: astore 10
    //   195: getstatic 29	com/google/glass/util/FileSaver:TAG	Ljava/lang/String;
    //   198: ldc 183
    //   200: aload 10
    //   202: invokestatic 186	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   205: pop
    //   206: goto -16 -> 190
    //   209: astore 9
    //   211: aload 7
    //   213: astore 4
    //   215: goto -35 -> 180
    //   218: astore 8
    //   220: aload 7
    //   222: astore 4
    //   224: goto -95 -> 129
    //
    // Exception table:
    //   from	to	target	type
    //   90	95	108	java/io/IOException
    //   18	28	127	java/io/IOException
    //   148	153	159	java/io/IOException
    //   18	28	178	finally
    //   129	140	178	finally
    //   185	190	193	java/io/IOException
    //   28	82	209	finally
    //   28	82	218	java/io/IOException
  }

  public static abstract interface Saver
  {
    public abstract long getEstimatedSizeBytes();

    public abstract void save(OutputStream paramOutputStream)
      throws IOException;
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.glass.util.FileSaver
 * JD-Core Version:    0.6.2
 */
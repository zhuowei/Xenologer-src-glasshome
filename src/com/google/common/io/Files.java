package com.google.common.io;

import com.google.common.annotations.Beta;
import com.google.common.base.Joiner;
import com.google.common.base.Preconditions;
import com.google.common.base.Splitter;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.Closeable;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.RandomAccessFile;
import java.nio.MappedByteBuffer;
import java.nio.channels.FileChannel;
import java.nio.channels.FileChannel.MapMode;
import java.nio.charset.Charset;
import java.security.MessageDigest;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.zip.Checksum;

@Beta
public final class Files
{
  private static final int TEMP_DIR_ATTEMPTS = 10000;

  public static void append(CharSequence paramCharSequence, File paramFile, Charset paramCharset)
    throws IOException
  {
    write(paramCharSequence, paramFile, paramCharset, true);
  }

  public static void copy(InputSupplier<? extends InputStream> paramInputSupplier, File paramFile)
    throws IOException
  {
    ByteStreams.copy(paramInputSupplier, newOutputStreamSupplier(paramFile));
  }

  public static <R extends Readable,  extends Closeable> void copy(InputSupplier<R> paramInputSupplier, File paramFile, Charset paramCharset)
    throws IOException
  {
    CharStreams.copy(paramInputSupplier, newWriterSupplier(paramFile, paramCharset));
  }

  public static void copy(File paramFile, OutputSupplier<? extends OutputStream> paramOutputSupplier)
    throws IOException
  {
    ByteStreams.copy(newInputStreamSupplier(paramFile), paramOutputSupplier);
  }

  public static void copy(File paramFile1, File paramFile2)
    throws IOException
  {
    if (!paramFile1.equals(paramFile2));
    for (boolean bool = true; ; bool = false)
    {
      Preconditions.checkArgument(bool, "Source %s and destination %s must be different", new Object[] { paramFile1, paramFile2 });
      copy(newInputStreamSupplier(paramFile1), paramFile2);
      return;
    }
  }

  public static void copy(File paramFile, OutputStream paramOutputStream)
    throws IOException
  {
    ByteStreams.copy(newInputStreamSupplier(paramFile), paramOutputStream);
  }

  public static <W extends Appendable,  extends Closeable> void copy(File paramFile, Charset paramCharset, OutputSupplier<W> paramOutputSupplier)
    throws IOException
  {
    CharStreams.copy(newReaderSupplier(paramFile, paramCharset), paramOutputSupplier);
  }

  public static void copy(File paramFile, Charset paramCharset, Appendable paramAppendable)
    throws IOException
  {
    CharStreams.copy(newReaderSupplier(paramFile, paramCharset), paramAppendable);
  }

  public static void createParentDirs(File paramFile)
    throws IOException
  {
    File localFile = paramFile.getCanonicalFile().getParentFile();
    if (localFile == null);
    do
    {
      return;
      localFile.mkdirs();
    }
    while (localFile.isDirectory());
    throw new IOException("Unable to create parent directories of " + paramFile);
  }

  public static File createTempDir()
  {
    File localFile1 = new File(System.getProperty("java.io.tmpdir"));
    String str = System.currentTimeMillis() + "-";
    for (int i = 0; i < 10000; i++)
    {
      File localFile2 = new File(localFile1, str + i);
      if (localFile2.mkdir())
        return localFile2;
    }
    throw new IllegalStateException("Failed to create directory within 10000 attempts (tried " + str + "0 to " + str + 9999 + ')');
  }

  public static boolean equal(File paramFile1, File paramFile2)
    throws IOException
  {
    if ((paramFile1 == paramFile2) || (paramFile1.equals(paramFile2)))
      return true;
    long l1 = paramFile1.length();
    long l2 = paramFile2.length();
    if ((l1 != 0L) && (l2 != 0L) && (l1 != l2))
      return false;
    return ByteStreams.equal(newInputStreamSupplier(paramFile1), newInputStreamSupplier(paramFile2));
  }

  public static long getChecksum(File paramFile, Checksum paramChecksum)
    throws IOException
  {
    return ByteStreams.getChecksum(newInputStreamSupplier(paramFile), paramChecksum);
  }

  public static byte[] getDigest(File paramFile, MessageDigest paramMessageDigest)
    throws IOException
  {
    return ByteStreams.getDigest(newInputStreamSupplier(paramFile), paramMessageDigest);
  }

  public static String getFileExtension(String paramString)
  {
    Preconditions.checkNotNull(paramString);
    int i = paramString.lastIndexOf('.');
    if (i == -1)
      return "";
    return paramString.substring(i + 1);
  }

  public static MappedByteBuffer map(File paramFile)
    throws IOException
  {
    return map(paramFile, FileChannel.MapMode.READ_ONLY);
  }

  public static MappedByteBuffer map(File paramFile, FileChannel.MapMode paramMapMode)
    throws IOException
  {
    if (!paramFile.exists())
      throw new FileNotFoundException(paramFile.toString());
    return map(paramFile, paramMapMode, paramFile.length());
  }

  public static MappedByteBuffer map(File paramFile, FileChannel.MapMode paramMapMode, long paramLong)
    throws FileNotFoundException, IOException
  {
    String str;
    if (paramMapMode == FileChannel.MapMode.READ_ONLY)
      str = "r";
    while (true)
    {
      RandomAccessFile localRandomAccessFile = new RandomAccessFile(paramFile, str);
      try
      {
        MappedByteBuffer localMappedByteBuffer = map(localRandomAccessFile, paramMapMode, paramLong);
        return localMappedByteBuffer;
        str = "rw";
      }
      finally
      {
        Closeables.close(localRandomAccessFile, true);
      }
    }
  }

  private static MappedByteBuffer map(RandomAccessFile paramRandomAccessFile, FileChannel.MapMode paramMapMode, long paramLong)
    throws IOException
  {
    FileChannel localFileChannel = paramRandomAccessFile.getChannel();
    try
    {
      MappedByteBuffer localMappedByteBuffer = localFileChannel.map(paramMapMode, 0L, paramLong);
      Closeables.close(localFileChannel, false);
      return localMappedByteBuffer;
    }
    finally
    {
      Closeables.close(localFileChannel, true);
    }
  }

  public static void move(File paramFile1, File paramFile2)
    throws IOException
  {
    Preconditions.checkNotNull(paramFile2);
    if (!paramFile1.equals(paramFile2));
    for (boolean bool = true; ; bool = false)
    {
      Preconditions.checkArgument(bool, "Source %s and destination %s must be different", new Object[] { paramFile1, paramFile2 });
      if (paramFile1.renameTo(paramFile2))
        return;
      copy(paramFile1, paramFile2);
      if (paramFile1.delete())
        return;
      if (paramFile2.delete())
        break;
      throw new IOException("Unable to delete " + paramFile2);
    }
    throw new IOException("Unable to delete " + paramFile1);
  }

  public static InputSupplier<FileInputStream> newInputStreamSupplier(File paramFile)
  {
    Preconditions.checkNotNull(paramFile);
    return new InputSupplier()
    {
      public FileInputStream getInput()
        throws IOException
      {
        return new FileInputStream(this.val$file);
      }
    };
  }

  public static OutputSupplier<FileOutputStream> newOutputStreamSupplier(File paramFile)
  {
    return newOutputStreamSupplier(paramFile, false);
  }

  public static OutputSupplier<FileOutputStream> newOutputStreamSupplier(File paramFile, final boolean paramBoolean)
  {
    Preconditions.checkNotNull(paramFile);
    return new OutputSupplier()
    {
      public FileOutputStream getOutput()
        throws IOException
      {
        return new FileOutputStream(this.val$file, paramBoolean);
      }
    };
  }

  public static BufferedReader newReader(File paramFile, Charset paramCharset)
    throws FileNotFoundException
  {
    return new BufferedReader(new InputStreamReader(new FileInputStream(paramFile), paramCharset));
  }

  public static InputSupplier<InputStreamReader> newReaderSupplier(File paramFile, Charset paramCharset)
  {
    return CharStreams.newReaderSupplier(newInputStreamSupplier(paramFile), paramCharset);
  }

  public static BufferedWriter newWriter(File paramFile, Charset paramCharset)
    throws FileNotFoundException
  {
    return new BufferedWriter(new OutputStreamWriter(new FileOutputStream(paramFile), paramCharset));
  }

  public static OutputSupplier<OutputStreamWriter> newWriterSupplier(File paramFile, Charset paramCharset)
  {
    return newWriterSupplier(paramFile, paramCharset, false);
  }

  public static OutputSupplier<OutputStreamWriter> newWriterSupplier(File paramFile, Charset paramCharset, boolean paramBoolean)
  {
    return CharStreams.newWriterSupplier(newOutputStreamSupplier(paramFile, paramBoolean), paramCharset);
  }

  public static <T> T readBytes(File paramFile, ByteProcessor<T> paramByteProcessor)
    throws IOException
  {
    return ByteStreams.readBytes(newInputStreamSupplier(paramFile), paramByteProcessor);
  }

  public static String readFirstLine(File paramFile, Charset paramCharset)
    throws IOException
  {
    return CharStreams.readFirstLine(newReaderSupplier(paramFile, paramCharset));
  }

  public static <T> T readLines(File paramFile, Charset paramCharset, LineProcessor<T> paramLineProcessor)
    throws IOException
  {
    return CharStreams.readLines(newReaderSupplier(paramFile, paramCharset), paramLineProcessor);
  }

  public static List<String> readLines(File paramFile, Charset paramCharset)
    throws IOException
  {
    return CharStreams.readLines(newReaderSupplier(paramFile, paramCharset));
  }

  public static String simplifyPath(String paramString)
  {
    String str1;
    if (paramString.length() == 0)
      str1 = ".";
    do
    {
      return str1;
      Iterable localIterable = Splitter.on('/').omitEmptyStrings().split(paramString);
      ArrayList localArrayList = new ArrayList();
      Iterator localIterator = localIterable.iterator();
      while (localIterator.hasNext())
      {
        String str2 = (String)localIterator.next();
        if (!str2.equals("."))
          if (str2.equals(".."))
          {
            if ((localArrayList.size() > 0) && (!((String)localArrayList.get(-1 + localArrayList.size())).equals("..")))
              localArrayList.remove(-1 + localArrayList.size());
            else
              localArrayList.add("..");
          }
          else
            localArrayList.add(str2);
      }
      str1 = Joiner.on('/').join(localArrayList);
      if (paramString.charAt(0) == '/');
      for (str1 = "/" + str1; str1.startsWith("/../"); str1 = str1.substring(3));
      if (str1.equals("/.."))
        return "/";
    }
    while (!"".equals(str1));
    return ".";
  }

  public static byte[] toByteArray(File paramFile)
    throws IOException
  {
    if (paramFile.length() <= 2147483647L);
    for (boolean bool = true; ; bool = false)
    {
      Preconditions.checkArgument(bool);
      if (paramFile.length() != 0L)
        break;
      return ByteStreams.toByteArray(newInputStreamSupplier(paramFile));
    }
    byte[] arrayOfByte = new byte[(int)paramFile.length()];
    FileInputStream localFileInputStream = new FileInputStream(paramFile);
    try
    {
      ByteStreams.readFully(localFileInputStream, arrayOfByte);
      Closeables.close(localFileInputStream, false);
      return arrayOfByte;
    }
    finally
    {
      Closeables.close(localFileInputStream, true);
    }
  }

  public static String toString(File paramFile, Charset paramCharset)
    throws IOException
  {
    return new String(toByteArray(paramFile), paramCharset.name());
  }

  public static void touch(File paramFile)
    throws IOException
  {
    if ((!paramFile.createNewFile()) && (!paramFile.setLastModified(System.currentTimeMillis())))
      throw new IOException("Unable to update modification time of " + paramFile);
  }

  public static void write(CharSequence paramCharSequence, File paramFile, Charset paramCharset)
    throws IOException
  {
    write(paramCharSequence, paramFile, paramCharset, false);
  }

  private static void write(CharSequence paramCharSequence, File paramFile, Charset paramCharset, boolean paramBoolean)
    throws IOException
  {
    CharStreams.write(paramCharSequence, newWriterSupplier(paramFile, paramCharset, paramBoolean));
  }

  public static void write(byte[] paramArrayOfByte, File paramFile)
    throws IOException
  {
    ByteStreams.write(paramArrayOfByte, newOutputStreamSupplier(paramFile));
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.common.io.Files
 * JD-Core Version:    0.6.2
 */
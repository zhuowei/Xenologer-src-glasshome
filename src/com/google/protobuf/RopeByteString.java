package com.google.protobuf;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import java.nio.ByteBuffer;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Deque;
import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;

class RopeByteString extends ByteString
{
  private static final int[] minLengthByDepth;
  private int hash = 0;
  private final ByteString left;
  private final int leftLength;
  private final ByteString right;
  private final int totalLength;
  private final int treeDepth;

  static
  {
    ArrayList localArrayList = new ArrayList();
    int i = 1;
    int m;
    for (int j = 1; j > 0; j = m)
    {
      localArrayList.add(Integer.valueOf(j));
      m = i + j;
      i = j;
    }
    localArrayList.add(Integer.valueOf(2147483647));
    minLengthByDepth = new int[localArrayList.size()];
    for (int k = 0; k < minLengthByDepth.length; k++)
      minLengthByDepth[k] = ((Integer)localArrayList.get(k)).intValue();
  }

  private RopeByteString(ByteString paramByteString1, ByteString paramByteString2)
  {
    this.left = paramByteString1;
    this.right = paramByteString2;
    this.leftLength = paramByteString1.size();
    this.totalLength = (this.leftLength + paramByteString2.size());
    this.treeDepth = (1 + Math.max(paramByteString1.getTreeDepth(), paramByteString2.getTreeDepth()));
  }

  static ByteString concatenate(ByteString paramByteString1, ByteString paramByteString2)
  {
    if ((paramByteString1 instanceof RopeByteString));
    for (RopeByteString localRopeByteString1 = (RopeByteString)paramByteString1; paramByteString2.size() == 0; localRopeByteString1 = null)
      return paramByteString1;
    if (paramByteString1.size() == 0)
      return paramByteString2;
    int i = paramByteString1.size() + paramByteString2.size();
    if (i < 128)
      return concatenateBytes(paramByteString1, paramByteString2);
    if ((localRopeByteString1 != null) && (localRopeByteString1.right.size() + paramByteString2.size() < 128))
    {
      LiteralByteString localLiteralByteString = concatenateBytes(localRopeByteString1.right, paramByteString2);
      return new RopeByteString(localRopeByteString1.left, localLiteralByteString);
    }
    if ((localRopeByteString1 != null) && (localRopeByteString1.left.getTreeDepth() > localRopeByteString1.right.getTreeDepth()) && (localRopeByteString1.getTreeDepth() > paramByteString2.getTreeDepth()))
    {
      RopeByteString localRopeByteString2 = new RopeByteString(localRopeByteString1.right, paramByteString2);
      return new RopeByteString(localRopeByteString1.left, localRopeByteString2);
    }
    int j = 1 + Math.max(paramByteString1.getTreeDepth(), paramByteString2.getTreeDepth());
    if (i >= minLengthByDepth[j])
      return new RopeByteString(paramByteString1, paramByteString2);
    return new Balancer(null).balance(paramByteString1, paramByteString2);
  }

  private static LiteralByteString concatenateBytes(ByteString paramByteString1, ByteString paramByteString2)
  {
    int i = paramByteString1.size();
    int j = paramByteString2.size();
    byte[] arrayOfByte = new byte[i + j];
    paramByteString1.copyTo(arrayOfByte, 0, 0, i);
    paramByteString2.copyTo(arrayOfByte, 0, i, j);
    return new LiteralByteString(arrayOfByte);
  }

  private boolean equalsFragments(ByteString paramByteString)
  {
    int i = 0;
    PieceIterator localPieceIterator1 = new PieceIterator(this, null);
    LiteralByteString localLiteralByteString1 = (LiteralByteString)localPieceIterator1.next();
    int j = 0;
    PieceIterator localPieceIterator2 = new PieceIterator(paramByteString, null);
    LiteralByteString localLiteralByteString2 = (LiteralByteString)localPieceIterator2.next();
    int k = 0;
    while (true)
    {
      int m = localLiteralByteString1.size() - i;
      int n = localLiteralByteString2.size() - j;
      int i1 = Math.min(m, n);
      if (i == 0);
      for (boolean bool = localLiteralByteString1.equalsRange(localLiteralByteString2, j, i1); !bool; bool = localLiteralByteString2.equalsRange(localLiteralByteString1, i, i1))
        return false;
      k += i1;
      if (k >= this.totalLength)
      {
        if (k == this.totalLength)
          return true;
        throw new IllegalStateException();
      }
      if (i1 == m)
      {
        i = 0;
        localLiteralByteString1 = (LiteralByteString)localPieceIterator1.next();
      }
      while (true)
      {
        if (i1 != n)
          break label207;
        localLiteralByteString2 = (LiteralByteString)localPieceIterator2.next();
        j = 0;
        break;
        i += i1;
      }
      label207: j += i1;
    }
  }

  static RopeByteString newInstanceForTest(ByteString paramByteString1, ByteString paramByteString2)
  {
    return new RopeByteString(paramByteString1, paramByteString2);
  }

  public ByteBuffer asReadOnlyByteBuffer()
  {
    return ByteBuffer.wrap(toByteArray()).asReadOnlyBuffer();
  }

  public List<ByteBuffer> asReadOnlyByteBufferList()
  {
    ArrayList localArrayList = new ArrayList();
    PieceIterator localPieceIterator = new PieceIterator(this, null);
    while (localPieceIterator.hasNext())
      localArrayList.add(localPieceIterator.next().asReadOnlyByteBuffer());
    return localArrayList;
  }

  public byte byteAt(int paramInt)
  {
    if (paramInt < 0)
      throw new ArrayIndexOutOfBoundsException("Index < 0: " + paramInt);
    if (paramInt > this.totalLength)
      throw new ArrayIndexOutOfBoundsException("Index > length: " + paramInt + ", " + this.totalLength);
    if (paramInt < this.leftLength)
      return this.left.byteAt(paramInt);
    return this.right.byteAt(paramInt - this.leftLength);
  }

  public void copyTo(ByteBuffer paramByteBuffer)
  {
    this.left.copyTo(paramByteBuffer);
    this.right.copyTo(paramByteBuffer);
  }

  protected void copyToInternal(byte[] paramArrayOfByte, int paramInt1, int paramInt2, int paramInt3)
  {
    if (paramInt1 + paramInt3 <= this.leftLength)
    {
      this.left.copyToInternal(paramArrayOfByte, paramInt1, paramInt2, paramInt3);
      return;
    }
    if (paramInt1 >= this.leftLength)
    {
      this.right.copyToInternal(paramArrayOfByte, paramInt1 - this.leftLength, paramInt2, paramInt3);
      return;
    }
    int i = this.leftLength - paramInt1;
    this.left.copyToInternal(paramArrayOfByte, paramInt1, paramInt2, i);
    this.right.copyToInternal(paramArrayOfByte, 0, paramInt2 + i, paramInt3 - i);
  }

  public boolean equals(Object paramObject)
  {
    if (paramObject == this);
    ByteString localByteString;
    do
    {
      return true;
      if (!(paramObject instanceof ByteString))
        return false;
      localByteString = (ByteString)paramObject;
      if (this.totalLength != localByteString.size())
        return false;
    }
    while (this.totalLength == 0);
    if (this.hash != 0)
    {
      int i = localByteString.peekCachedHashCode();
      if ((i != 0) && (this.hash != i))
        return false;
    }
    return equalsFragments(localByteString);
  }

  protected int getTreeDepth()
  {
    return this.treeDepth;
  }

  public int hashCode()
  {
    int i = this.hash;
    if (i == 0)
    {
      i = partialHash(this.totalLength, 0, this.totalLength);
      if (i == 0)
        i = 1;
      this.hash = i;
    }
    return i;
  }

  protected boolean isBalanced()
  {
    return this.totalLength >= minLengthByDepth[this.treeDepth];
  }

  public boolean isValidUtf8()
  {
    int i = this.left.partialIsValidUtf8(0, 0, this.leftLength);
    int j = this.right.partialIsValidUtf8(i, 0, this.right.size());
    boolean bool = false;
    if (j == 0)
      bool = true;
    return bool;
  }

  public ByteString.ByteIterator iterator()
  {
    return new RopeByteIterator(null);
  }

  public CodedInputStream newCodedInput()
  {
    return CodedInputStream.newInstance(new RopeInputStream());
  }

  public InputStream newInput()
  {
    return new RopeInputStream();
  }

  protected int partialHash(int paramInt1, int paramInt2, int paramInt3)
  {
    if (paramInt2 + paramInt3 <= this.leftLength)
      return this.left.partialHash(paramInt1, paramInt2, paramInt3);
    if (paramInt2 >= this.leftLength)
      return this.right.partialHash(paramInt1, paramInt2 - this.leftLength, paramInt3);
    int i = this.leftLength - paramInt2;
    int j = this.left.partialHash(paramInt1, paramInt2, i);
    return this.right.partialHash(j, 0, paramInt3 - i);
  }

  protected int partialIsValidUtf8(int paramInt1, int paramInt2, int paramInt3)
  {
    if (paramInt2 + paramInt3 <= this.leftLength)
      return this.left.partialIsValidUtf8(paramInt1, paramInt2, paramInt3);
    if (paramInt2 >= this.leftLength)
      return this.right.partialIsValidUtf8(paramInt1, paramInt2 - this.leftLength, paramInt3);
    int i = this.leftLength - paramInt2;
    int j = this.left.partialIsValidUtf8(paramInt1, paramInt2, i);
    return this.right.partialIsValidUtf8(j, 0, paramInt3 - i);
  }

  protected int peekCachedHashCode()
  {
    return this.hash;
  }

  public int size()
  {
    return this.totalLength;
  }

  public ByteString substring(int paramInt1, int paramInt2)
  {
    if (paramInt1 < 0)
      throw new IndexOutOfBoundsException("Beginning index: " + paramInt1 + " < 0");
    if (paramInt2 > this.totalLength)
      throw new IndexOutOfBoundsException("End index: " + paramInt2 + " > " + this.totalLength);
    int i = paramInt2 - paramInt1;
    if (i < 0)
      throw new IndexOutOfBoundsException("Beginning index larger than ending index: " + paramInt1 + ", " + paramInt2);
    if (i == 0)
      return ByteString.EMPTY;
    if (i == this.totalLength)
      return this;
    if (paramInt2 <= this.leftLength)
      return this.left.substring(paramInt1, paramInt2);
    if (paramInt1 >= this.leftLength)
      return this.right.substring(paramInt1 - this.leftLength, paramInt2 - this.leftLength);
    return new RopeByteString(this.left.substring(paramInt1), this.right.substring(0, paramInt2 - this.leftLength));
  }

  public String toString(String paramString)
    throws UnsupportedEncodingException
  {
    return new String(toByteArray(), paramString);
  }

  public void writeTo(OutputStream paramOutputStream)
    throws IOException
  {
    this.left.writeTo(paramOutputStream);
    this.right.writeTo(paramOutputStream);
  }

  private static class Balancer
  {
    private final Deque<ByteString> prefixesStack = new ArrayDeque(RopeByteString.minLengthByDepth.length);

    private ByteString balance(ByteString paramByteString1, ByteString paramByteString2)
    {
      doBalance(paramByteString1);
      doBalance(paramByteString2);
      for (Object localObject = (ByteString)this.prefixesStack.pop(); !this.prefixesStack.isEmpty(); localObject = new RopeByteString((ByteString)this.prefixesStack.pop(), (ByteString)localObject, null));
      return localObject;
    }

    private void doBalance(ByteString paramByteString)
    {
      if (paramByteString.isBalanced())
      {
        insert(paramByteString);
        return;
      }
      if ((paramByteString instanceof RopeByteString))
      {
        RopeByteString localRopeByteString = (RopeByteString)paramByteString;
        doBalance(localRopeByteString.left);
        doBalance(localRopeByteString.right);
        return;
      }
      throw new IllegalArgumentException("Has a new type of ByteString been created? Found " + paramByteString.getClass());
    }

    private int getDepthBinForLength(int paramInt)
    {
      int i = Arrays.binarySearch(RopeByteString.minLengthByDepth, paramInt);
      if (i < 0)
        i = -1 + -(i + 1);
      return i;
    }

    private void insert(ByteString paramByteString)
    {
      int i = getDepthBinForLength(paramByteString.size());
      int j = RopeByteString.minLengthByDepth[(i + 1)];
      if ((this.prefixesStack.isEmpty()) || (((ByteString)this.prefixesStack.peek()).size() >= j))
      {
        this.prefixesStack.push(paramByteString);
        return;
      }
      int k = RopeByteString.minLengthByDepth[i];
      for (Object localObject = (ByteString)this.prefixesStack.pop(); (!this.prefixesStack.isEmpty()) && (((ByteString)this.prefixesStack.peek()).size() < k); localObject = new RopeByteString((ByteString)this.prefixesStack.pop(), (ByteString)localObject, null));
      for (RopeByteString localRopeByteString = new RopeByteString((ByteString)localObject, paramByteString, null); !this.prefixesStack.isEmpty(); localRopeByteString = new RopeByteString((ByteString)this.prefixesStack.pop(), localRopeByteString, null))
      {
        int m = getDepthBinForLength(localRopeByteString.size());
        int n = RopeByteString.minLengthByDepth[(m + 1)];
        if (((ByteString)this.prefixesStack.peek()).size() >= n)
          break;
      }
      this.prefixesStack.push(localRopeByteString);
    }
  }

  private static class PieceIterator
    implements Iterator<LiteralByteString>
  {
    private final Deque<RopeByteString> breadCrumbs = new ArrayDeque(RopeByteString.minLengthByDepth.length);
    private LiteralByteString next = getLeafByLeft(paramByteString);

    private PieceIterator(ByteString paramByteString)
    {
    }

    private LiteralByteString getLeafByLeft(ByteString paramByteString)
    {
      RopeByteString localRopeByteString;
      for (ByteString localByteString = paramByteString; (localByteString instanceof RopeByteString); localByteString = localRopeByteString.left)
      {
        localRopeByteString = (RopeByteString)localByteString;
        this.breadCrumbs.push(localRopeByteString);
      }
      return (LiteralByteString)localByteString;
    }

    private LiteralByteString getNextNonEmptyLeaf()
    {
      LiteralByteString localLiteralByteString;
      do
      {
        if (this.breadCrumbs.isEmpty())
          return null;
        localLiteralByteString = getLeafByLeft(((RopeByteString)this.breadCrumbs.pop()).right);
      }
      while (localLiteralByteString.isEmpty());
      return localLiteralByteString;
    }

    public boolean hasNext()
    {
      return this.next != null;
    }

    public LiteralByteString next()
    {
      if (this.next == null)
        throw new NoSuchElementException();
      LiteralByteString localLiteralByteString = this.next;
      this.next = getNextNonEmptyLeaf();
      return localLiteralByteString;
    }

    public void remove()
    {
      throw new UnsupportedOperationException();
    }
  }

  private class RopeByteIterator
    implements ByteString.ByteIterator
  {
    private ByteString.ByteIterator bytes = this.pieces.next().iterator();
    int bytesRemaining = RopeByteString.this.size();
    private final RopeByteString.PieceIterator pieces = new RopeByteString.PieceIterator(RopeByteString.this, null);

    private RopeByteIterator()
    {
    }

    public boolean hasNext()
    {
      return this.bytesRemaining > 0;
    }

    public Byte next()
    {
      return Byte.valueOf(nextByte());
    }

    public byte nextByte()
    {
      if (!this.bytes.hasNext())
        this.bytes = this.pieces.next().iterator();
      this.bytesRemaining = (-1 + this.bytesRemaining);
      return this.bytes.nextByte();
    }

    public void remove()
    {
      throw new UnsupportedOperationException();
    }
  }

  private class RopeInputStream extends InputStream
  {
    private LiteralByteString currentPiece;
    private int currentPieceIndex;
    private int currentPieceOffsetInRope;
    private int currentPieceSize;
    private int mark;
    private RopeByteString.PieceIterator pieceIterator;

    public RopeInputStream()
    {
      initialize();
    }

    private void advanceIfCurrentPieceFullyRead()
    {
      if ((this.currentPiece != null) && (this.currentPieceIndex == this.currentPieceSize))
      {
        this.currentPieceOffsetInRope += this.currentPieceSize;
        this.currentPieceIndex = 0;
        if (this.pieceIterator.hasNext())
        {
          this.currentPiece = this.pieceIterator.next();
          this.currentPieceSize = this.currentPiece.size();
        }
      }
      else
      {
        return;
      }
      this.currentPiece = null;
      this.currentPieceSize = 0;
    }

    private void initialize()
    {
      this.pieceIterator = new RopeByteString.PieceIterator(RopeByteString.this, null);
      this.currentPiece = this.pieceIterator.next();
      this.currentPieceSize = this.currentPiece.size();
      this.currentPieceIndex = 0;
      this.currentPieceOffsetInRope = 0;
    }

    private int readSkipInternal(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
    {
      int i = paramInt2;
      while (i > 0)
      {
        advanceIfCurrentPieceFullyRead();
        if (this.currentPiece == null)
        {
          if (i != paramInt2)
            break;
          return -1;
        }
        int j = Math.min(this.currentPieceSize - this.currentPieceIndex, i);
        if (paramArrayOfByte != null)
        {
          this.currentPiece.copyTo(paramArrayOfByte, this.currentPieceIndex, paramInt1, j);
          paramInt1 += j;
        }
        this.currentPieceIndex = (j + this.currentPieceIndex);
        i -= j;
      }
      return paramInt2 - i;
    }

    public int available()
      throws IOException
    {
      int i = this.currentPieceOffsetInRope + this.currentPieceIndex;
      return RopeByteString.this.size() - i;
    }

    public void mark(int paramInt)
    {
      this.mark = (this.currentPieceOffsetInRope + this.currentPieceIndex);
    }

    public boolean markSupported()
    {
      return true;
    }

    public int read()
      throws IOException
    {
      advanceIfCurrentPieceFullyRead();
      if (this.currentPiece == null)
        return -1;
      LiteralByteString localLiteralByteString = this.currentPiece;
      int i = this.currentPieceIndex;
      this.currentPieceIndex = (i + 1);
      return 0xFF & localLiteralByteString.byteAt(i);
    }

    public int read(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
    {
      if (paramArrayOfByte == null)
        throw new NullPointerException();
      if ((paramInt1 < 0) || (paramInt2 < 0) || (paramInt2 > paramArrayOfByte.length - paramInt1))
        throw new IndexOutOfBoundsException();
      return readSkipInternal(paramArrayOfByte, paramInt1, paramInt2);
    }

    public void reset()
    {
      try
      {
        initialize();
        readSkipInternal(null, 0, this.mark);
        return;
      }
      finally
      {
        localObject = finally;
        throw localObject;
      }
    }

    public long skip(long paramLong)
    {
      if (paramLong < 0L)
        throw new IndexOutOfBoundsException();
      if (paramLong > 2147483647L)
        paramLong = 2147483647L;
      return readSkipInternal(null, 0, (int)paramLong);
    }
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.protobuf.RopeByteString
 * JD-Core Version:    0.6.2
 */
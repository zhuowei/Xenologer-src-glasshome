package com.google.common.util.concurrent;

import com.google.common.annotations.Beta;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.concurrent.atomic.AtomicLongFieldUpdater;

@Beta
public class AtomicDouble extends Number
  implements Serializable
{
  private static final long serialVersionUID;
  private static final AtomicLongFieldUpdater<AtomicDouble> updater = AtomicLongFieldUpdater.newUpdater(AtomicDouble.class, "value");
  private volatile transient long value;

  public AtomicDouble()
  {
  }

  public AtomicDouble(double paramDouble)
  {
    this.value = Double.doubleToRawLongBits(paramDouble);
  }

  private void readObject(ObjectInputStream paramObjectInputStream)
    throws IOException, ClassNotFoundException
  {
    paramObjectInputStream.defaultReadObject();
    set(paramObjectInputStream.readDouble());
  }

  private void writeObject(ObjectOutputStream paramObjectOutputStream)
    throws IOException
  {
    paramObjectOutputStream.defaultWriteObject();
    paramObjectOutputStream.writeDouble(get());
  }

  public final double addAndGet(double paramDouble)
  {
    long l1;
    double d;
    long l2;
    do
    {
      l1 = this.value;
      d = paramDouble + Double.longBitsToDouble(l1);
      l2 = Double.doubleToRawLongBits(d);
    }
    while (!updater.compareAndSet(this, l1, l2));
    return d;
  }

  public final boolean compareAndSet(double paramDouble1, double paramDouble2)
  {
    return updater.compareAndSet(this, Double.doubleToRawLongBits(paramDouble1), Double.doubleToRawLongBits(paramDouble2));
  }

  public double doubleValue()
  {
    return get();
  }

  public float floatValue()
  {
    return (float)get();
  }

  public final double get()
  {
    return Double.longBitsToDouble(this.value);
  }

  public final double getAndAdd(double paramDouble)
  {
    long l1;
    double d;
    long l2;
    do
    {
      l1 = this.value;
      d = Double.longBitsToDouble(l1);
      l2 = Double.doubleToRawLongBits(d + paramDouble);
    }
    while (!updater.compareAndSet(this, l1, l2));
    return d;
  }

  public final double getAndSet(double paramDouble)
  {
    long l = Double.doubleToRawLongBits(paramDouble);
    return Double.longBitsToDouble(updater.getAndSet(this, l));
  }

  public int intValue()
  {
    return (int)get();
  }

  public final void lazySet(double paramDouble)
  {
    set(paramDouble);
  }

  public long longValue()
  {
    return ()get();
  }

  public final void set(double paramDouble)
  {
    this.value = Double.doubleToRawLongBits(paramDouble);
  }

  public String toString()
  {
    return Double.toString(get());
  }

  public final boolean weakCompareAndSet(double paramDouble1, double paramDouble2)
  {
    return updater.weakCompareAndSet(this, Double.doubleToRawLongBits(paramDouble1), Double.doubleToRawLongBits(paramDouble2));
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.common.util.concurrent.AtomicDouble
 * JD-Core Version:    0.6.2
 */
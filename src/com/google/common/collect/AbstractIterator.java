package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Preconditions;
import java.util.NoSuchElementException;

@GwtCompatible
public abstract class AbstractIterator<T> extends UnmodifiableIterator<T>
{
  private T next;
  private State state = State.NOT_READY;

  private boolean tryToComputeNext()
  {
    this.state = State.FAILED;
    this.next = computeNext();
    if (this.state != State.DONE)
    {
      this.state = State.READY;
      return true;
    }
    return false;
  }

  protected abstract T computeNext();

  protected final T endOfData()
  {
    this.state = State.DONE;
    return null;
  }

  public final boolean hasNext()
  {
    if (this.state != State.FAILED);
    for (boolean bool1 = true; ; bool1 = false)
    {
      Preconditions.checkState(bool1);
      int i = 1.$SwitchMap$com$google$common$collect$AbstractIterator$State[this.state.ordinal()];
      boolean bool2 = false;
      switch (i)
      {
      default:
        bool2 = tryToComputeNext();
      case 1:
        return bool2;
      case 2:
      }
    }
    return true;
  }

  public final T next()
  {
    if (!hasNext())
      throw new NoSuchElementException();
    this.state = State.NOT_READY;
    return this.next;
  }

  public final T peek()
  {
    if (!hasNext())
      throw new NoSuchElementException();
    return this.next;
  }

  private static enum State
  {
    static
    {
      NOT_READY = new State("NOT_READY", 1);
      DONE = new State("DONE", 2);
      FAILED = new State("FAILED", 3);
      State[] arrayOfState = new State[4];
      arrayOfState[0] = READY;
      arrayOfState[1] = NOT_READY;
      arrayOfState[2] = DONE;
      arrayOfState[3] = FAILED;
    }
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.common.collect.AbstractIterator
 * JD-Core Version:    0.6.2
 */
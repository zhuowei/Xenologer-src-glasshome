package com.google.protobuf;

import java.util.AbstractList;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

public class RepeatedFieldBuilder<MType extends GeneratedMessage, BType extends GeneratedMessage.Builder, IType extends MessageOrBuilder>
  implements GeneratedMessage.BuilderParent
{
  private List<SingleFieldBuilder<MType, BType, IType>> builders;
  private BuilderExternalList<MType, BType, IType> externalBuilderList;
  private MessageExternalList<MType, BType, IType> externalMessageList;
  private MessageOrBuilderExternalList<MType, BType, IType> externalMessageOrBuilderList;
  private boolean isClean;
  private boolean isMessagesListMutable;
  private List<MType> messages;
  private GeneratedMessage.BuilderParent parent;

  public RepeatedFieldBuilder(List<MType> paramList, boolean paramBoolean1, GeneratedMessage.BuilderParent paramBuilderParent, boolean paramBoolean2)
  {
    this.messages = paramList;
    this.isMessagesListMutable = paramBoolean1;
    this.parent = paramBuilderParent;
    this.isClean = paramBoolean2;
  }

  private void ensureBuilders()
  {
    if (this.builders == null)
    {
      this.builders = new ArrayList(this.messages.size());
      for (int i = 0; i < this.messages.size(); i++)
        this.builders.add(null);
    }
  }

  private void ensureMutableMessageList()
  {
    if (!this.isMessagesListMutable)
    {
      this.messages = new ArrayList(this.messages);
      this.isMessagesListMutable = true;
    }
  }

  private MType getMessage(int paramInt, boolean paramBoolean)
  {
    if (this.builders == null)
      return (GeneratedMessage)this.messages.get(paramInt);
    SingleFieldBuilder localSingleFieldBuilder = (SingleFieldBuilder)this.builders.get(paramInt);
    if (localSingleFieldBuilder == null)
      return (GeneratedMessage)this.messages.get(paramInt);
    if (paramBoolean)
      return localSingleFieldBuilder.build();
    return localSingleFieldBuilder.getMessage();
  }

  private void incrementModCounts()
  {
    if (this.externalMessageList != null)
      this.externalMessageList.incrementModCount();
    if (this.externalBuilderList != null)
      this.externalBuilderList.incrementModCount();
    if (this.externalMessageOrBuilderList != null)
      this.externalMessageOrBuilderList.incrementModCount();
  }

  private void onChanged()
  {
    if ((this.isClean) && (this.parent != null))
    {
      this.parent.markDirty();
      this.isClean = false;
    }
  }

  public RepeatedFieldBuilder<MType, BType, IType> addAllMessages(Iterable<? extends MType> paramIterable)
  {
    Iterator localIterator1 = paramIterable.iterator();
    while (localIterator1.hasNext())
      if ((GeneratedMessage)localIterator1.next() == null)
        throw new NullPointerException();
    if ((paramIterable instanceof Collection))
    {
      if (((Collection)paramIterable).size() == 0)
        return this;
      ensureMutableMessageList();
      Iterator localIterator3 = paramIterable.iterator();
      while (localIterator3.hasNext())
        addMessage((GeneratedMessage)localIterator3.next());
    }
    ensureMutableMessageList();
    Iterator localIterator2 = paramIterable.iterator();
    while (localIterator2.hasNext())
      addMessage((GeneratedMessage)localIterator2.next());
    onChanged();
    incrementModCounts();
    return this;
  }

  public BType addBuilder(int paramInt, MType paramMType)
  {
    ensureMutableMessageList();
    ensureBuilders();
    SingleFieldBuilder localSingleFieldBuilder = new SingleFieldBuilder(paramMType, this, this.isClean);
    this.messages.add(paramInt, null);
    this.builders.add(paramInt, localSingleFieldBuilder);
    onChanged();
    incrementModCounts();
    return localSingleFieldBuilder.getBuilder();
  }

  public BType addBuilder(MType paramMType)
  {
    ensureMutableMessageList();
    ensureBuilders();
    SingleFieldBuilder localSingleFieldBuilder = new SingleFieldBuilder(paramMType, this, this.isClean);
    this.messages.add(null);
    this.builders.add(localSingleFieldBuilder);
    onChanged();
    incrementModCounts();
    return localSingleFieldBuilder.getBuilder();
  }

  public RepeatedFieldBuilder<MType, BType, IType> addMessage(int paramInt, MType paramMType)
  {
    if (paramMType == null)
      throw new NullPointerException();
    ensureMutableMessageList();
    this.messages.add(paramInt, paramMType);
    if (this.builders != null)
      this.builders.add(paramInt, null);
    onChanged();
    incrementModCounts();
    return this;
  }

  public RepeatedFieldBuilder<MType, BType, IType> addMessage(MType paramMType)
  {
    if (paramMType == null)
      throw new NullPointerException();
    ensureMutableMessageList();
    this.messages.add(paramMType);
    if (this.builders != null)
      this.builders.add(null);
    onChanged();
    incrementModCounts();
    return this;
  }

  public List<MType> build()
  {
    this.isClean = true;
    if ((!this.isMessagesListMutable) && (this.builders == null))
      return this.messages;
    int i = 1;
    if (!this.isMessagesListMutable)
      for (int k = 0; ; k++)
        if (k < this.messages.size())
        {
          Message localMessage = (Message)this.messages.get(k);
          SingleFieldBuilder localSingleFieldBuilder = (SingleFieldBuilder)this.builders.get(k);
          if ((localSingleFieldBuilder != null) && (localSingleFieldBuilder.build() != localMessage))
            i = 0;
        }
        else
        {
          if (i == 0)
            break;
          return this.messages;
        }
    ensureMutableMessageList();
    for (int j = 0; j < this.messages.size(); j++)
      this.messages.set(j, getMessage(j, true));
    this.messages = Collections.unmodifiableList(this.messages);
    this.isMessagesListMutable = false;
    return this.messages;
  }

  public void clear()
  {
    this.messages = Collections.emptyList();
    this.isMessagesListMutable = false;
    if (this.builders != null)
    {
      Iterator localIterator = this.builders.iterator();
      while (localIterator.hasNext())
      {
        SingleFieldBuilder localSingleFieldBuilder = (SingleFieldBuilder)localIterator.next();
        if (localSingleFieldBuilder != null)
          localSingleFieldBuilder.dispose();
      }
      this.builders = null;
    }
    onChanged();
    incrementModCounts();
  }

  public void dispose()
  {
    this.parent = null;
  }

  public BType getBuilder(int paramInt)
  {
    ensureBuilders();
    SingleFieldBuilder localSingleFieldBuilder = (SingleFieldBuilder)this.builders.get(paramInt);
    if (localSingleFieldBuilder == null)
    {
      localSingleFieldBuilder = new SingleFieldBuilder((GeneratedMessage)this.messages.get(paramInt), this, this.isClean);
      this.builders.set(paramInt, localSingleFieldBuilder);
    }
    return localSingleFieldBuilder.getBuilder();
  }

  public List<BType> getBuilderList()
  {
    if (this.externalBuilderList == null)
      this.externalBuilderList = new BuilderExternalList(this);
    return this.externalBuilderList;
  }

  public int getCount()
  {
    return this.messages.size();
  }

  public MType getMessage(int paramInt)
  {
    return getMessage(paramInt, false);
  }

  public List<MType> getMessageList()
  {
    if (this.externalMessageList == null)
      this.externalMessageList = new MessageExternalList(this);
    return this.externalMessageList;
  }

  public IType getMessageOrBuilder(int paramInt)
  {
    if (this.builders == null)
      return (MessageOrBuilder)this.messages.get(paramInt);
    SingleFieldBuilder localSingleFieldBuilder = (SingleFieldBuilder)this.builders.get(paramInt);
    if (localSingleFieldBuilder == null)
      return (MessageOrBuilder)this.messages.get(paramInt);
    return localSingleFieldBuilder.getMessageOrBuilder();
  }

  public List<IType> getMessageOrBuilderList()
  {
    if (this.externalMessageOrBuilderList == null)
      this.externalMessageOrBuilderList = new MessageOrBuilderExternalList(this);
    return this.externalMessageOrBuilderList;
  }

  public boolean isEmpty()
  {
    return this.messages.isEmpty();
  }

  public void markDirty()
  {
    onChanged();
  }

  public void remove(int paramInt)
  {
    ensureMutableMessageList();
    this.messages.remove(paramInt);
    if (this.builders != null)
    {
      SingleFieldBuilder localSingleFieldBuilder = (SingleFieldBuilder)this.builders.remove(paramInt);
      if (localSingleFieldBuilder != null)
        localSingleFieldBuilder.dispose();
    }
    onChanged();
    incrementModCounts();
  }

  public RepeatedFieldBuilder<MType, BType, IType> setMessage(int paramInt, MType paramMType)
  {
    if (paramMType == null)
      throw new NullPointerException();
    ensureMutableMessageList();
    this.messages.set(paramInt, paramMType);
    if (this.builders != null)
    {
      SingleFieldBuilder localSingleFieldBuilder = (SingleFieldBuilder)this.builders.set(paramInt, null);
      if (localSingleFieldBuilder != null)
        localSingleFieldBuilder.dispose();
    }
    onChanged();
    incrementModCounts();
    return this;
  }

  private static class BuilderExternalList<MType extends GeneratedMessage, BType extends GeneratedMessage.Builder, IType extends MessageOrBuilder> extends AbstractList<BType>
    implements List<BType>
  {
    RepeatedFieldBuilder<MType, BType, IType> builder;

    BuilderExternalList(RepeatedFieldBuilder<MType, BType, IType> paramRepeatedFieldBuilder)
    {
      this.builder = paramRepeatedFieldBuilder;
    }

    public BType get(int paramInt)
    {
      return this.builder.getBuilder(paramInt);
    }

    void incrementModCount()
    {
      this.modCount = (1 + this.modCount);
    }

    public int size()
    {
      return this.builder.getCount();
    }
  }

  private static class MessageExternalList<MType extends GeneratedMessage, BType extends GeneratedMessage.Builder, IType extends MessageOrBuilder> extends AbstractList<MType>
    implements List<MType>
  {
    RepeatedFieldBuilder<MType, BType, IType> builder;

    MessageExternalList(RepeatedFieldBuilder<MType, BType, IType> paramRepeatedFieldBuilder)
    {
      this.builder = paramRepeatedFieldBuilder;
    }

    public MType get(int paramInt)
    {
      return this.builder.getMessage(paramInt);
    }

    void incrementModCount()
    {
      this.modCount = (1 + this.modCount);
    }

    public int size()
    {
      return this.builder.getCount();
    }
  }

  private static class MessageOrBuilderExternalList<MType extends GeneratedMessage, BType extends GeneratedMessage.Builder, IType extends MessageOrBuilder> extends AbstractList<IType>
    implements List<IType>
  {
    RepeatedFieldBuilder<MType, BType, IType> builder;

    MessageOrBuilderExternalList(RepeatedFieldBuilder<MType, BType, IType> paramRepeatedFieldBuilder)
    {
      this.builder = paramRepeatedFieldBuilder;
    }

    public IType get(int paramInt)
    {
      return this.builder.getMessageOrBuilder(paramInt);
    }

    void incrementModCount()
    {
      this.modCount = (1 + this.modCount);
    }

    public int size()
    {
      return this.builder.getCount();
    }
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.protobuf.RepeatedFieldBuilder
 * JD-Core Version:    0.6.2
 */
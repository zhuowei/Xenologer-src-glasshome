package com.google.common.eventbus;

import com.google.common.annotations.Beta;
import com.google.common.annotations.VisibleForTesting;
import com.google.common.base.Supplier;
import com.google.common.base.Throwables;
import com.google.common.cache.CacheBuilder;
import com.google.common.cache.CacheLoader;
import com.google.common.cache.LoadingCache;
import com.google.common.collect.Lists;
import com.google.common.collect.Multimap;
import com.google.common.collect.Multimaps;
import com.google.common.collect.SetMultimap;
import com.google.common.collect.Sets;
import java.lang.reflect.InvocationTargetException;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.CopyOnWriteArraySet;
import java.util.concurrent.ExecutionException;
import java.util.logging.Level;
import java.util.logging.Logger;

@Beta
public class EventBus
{
  private final ThreadLocal<ConcurrentLinkedQueue<EventWithHandler>> eventsToDispatch = new ThreadLocal()
  {
    protected ConcurrentLinkedQueue<EventBus.EventWithHandler> initialValue()
    {
      return new ConcurrentLinkedQueue();
    }
  };
  private final HandlerFindingStrategy finder = new AnnotatedHandlerFinder();
  private LoadingCache<Class<?>, Set<Class<?>>> flattenHierarchyCache = CacheBuilder.newBuilder().weakKeys().build(new CacheLoader()
  {
    public Set<Class<?>> load(Class<?> paramAnonymousClass)
      throws Exception
    {
      LinkedList localLinkedList = Lists.newLinkedList();
      HashSet localHashSet = Sets.newHashSet();
      localLinkedList.add(paramAnonymousClass);
      while (!localLinkedList.isEmpty())
      {
        Class localClass1 = (Class)localLinkedList.remove(0);
        localHashSet.add(localClass1);
        Class localClass2 = localClass1.getSuperclass();
        if (localClass2 != null)
          localLinkedList.add(localClass2);
        Class[] arrayOfClass = localClass1.getInterfaces();
        int i = arrayOfClass.length;
        for (int j = 0; j < i; j++)
          localLinkedList.add(arrayOfClass[j]);
      }
      return localHashSet;
    }
  });
  private final SetMultimap<Class<?>, EventHandler> handlersByType = Multimaps.newSetMultimap(new ConcurrentHashMap(), new Supplier()
  {
    public Set<EventHandler> get()
    {
      return new CopyOnWriteArraySet();
    }
  });
  private final ThreadLocal<Boolean> isDispatching = new ThreadLocal()
  {
    protected Boolean initialValue()
    {
      return Boolean.valueOf(false);
    }
  };
  private final Logger logger;

  public EventBus()
  {
    this("default");
  }

  public EventBus(String paramString)
  {
    this.logger = Logger.getLogger(EventBus.class.getName() + "." + paramString);
  }

  protected void dispatch(Object paramObject, EventHandler paramEventHandler)
  {
    try
    {
      paramEventHandler.handleEvent(paramObject);
      return;
    }
    catch (InvocationTargetException localInvocationTargetException)
    {
      this.logger.log(Level.SEVERE, "Could not dispatch event: " + paramObject + " to handler " + paramEventHandler, localInvocationTargetException);
    }
  }

  protected void dispatchQueuedEvents()
  {
    if (((Boolean)this.isDispatching.get()).booleanValue())
      return;
    this.isDispatching.set(Boolean.valueOf(true));
    try
    {
      while (true)
      {
        EventWithHandler localEventWithHandler = (EventWithHandler)((ConcurrentLinkedQueue)this.eventsToDispatch.get()).poll();
        if (localEventWithHandler == null)
          return;
        dispatch(localEventWithHandler.event, localEventWithHandler.handler);
      }
    }
    finally
    {
      this.isDispatching.set(Boolean.valueOf(false));
    }
  }

  protected void enqueueEvent(Object paramObject, EventHandler paramEventHandler)
  {
    ((ConcurrentLinkedQueue)this.eventsToDispatch.get()).offer(new EventWithHandler(paramObject, paramEventHandler));
  }

  @VisibleForTesting
  Set<Class<?>> flattenHierarchy(Class<?> paramClass)
  {
    try
    {
      Set localSet = (Set)this.flattenHierarchyCache.get(paramClass);
      return localSet;
    }
    catch (ExecutionException localExecutionException)
    {
      throw Throwables.propagate(localExecutionException.getCause());
    }
  }

  Set<EventHandler> getHandlersForEventType(Class<?> paramClass)
  {
    return this.handlersByType.get(paramClass);
  }

  protected Set<EventHandler> newHandlerSet()
  {
    return new CopyOnWriteArraySet();
  }

  public void post(Object paramObject)
  {
    Set localSet1 = flattenHierarchy(paramObject.getClass());
    int i = 0;
    Iterator localIterator1 = localSet1.iterator();
    while (localIterator1.hasNext())
    {
      Set localSet2 = getHandlersForEventType((Class)localIterator1.next());
      if ((localSet2 != null) && (!localSet2.isEmpty()))
      {
        i = 1;
        Iterator localIterator2 = localSet2.iterator();
        while (localIterator2.hasNext())
          enqueueEvent(paramObject, (EventHandler)localIterator2.next());
      }
    }
    if ((i == 0) && (!(paramObject instanceof DeadEvent)))
      post(new DeadEvent(this, paramObject));
    dispatchQueuedEvents();
  }

  public void register(Object paramObject)
  {
    this.handlersByType.putAll(this.finder.findAllHandlers(paramObject));
  }

  public void unregister(Object paramObject)
  {
    Iterator localIterator = this.finder.findAllHandlers(paramObject).asMap().entrySet().iterator();
    while (localIterator.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)localIterator.next();
      Set localSet = getHandlersForEventType((Class)localEntry.getKey());
      Collection localCollection = (Collection)localEntry.getValue();
      if ((localSet == null) || (!localSet.containsAll((Collection)localEntry.getValue())))
        throw new IllegalArgumentException("missing event handler for an annotated method. Is " + paramObject + " registered?");
      localSet.removeAll(localCollection);
    }
  }

  static class EventWithHandler
  {
    final Object event;
    final EventHandler handler;

    public EventWithHandler(Object paramObject, EventHandler paramEventHandler)
    {
      this.event = paramObject;
      this.handler = paramEventHandler;
    }
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.common.eventbus.EventBus
 * JD-Core Version:    0.6.2
 */
package com.google.common.util.concurrent;

import com.google.common.annotations.Beta;
import java.util.concurrent.ScheduledExecutorService;

@Beta
public abstract interface ListeningScheduledExecutorService extends ScheduledExecutorService, ListeningExecutorService
{
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.common.util.concurrent.ListeningScheduledExecutorService
 * JD-Core Version:    0.6.2
 */
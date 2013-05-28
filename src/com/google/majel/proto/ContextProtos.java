package com.google.majel.proto;

import com.google.protobuf.micro.CodedInputStreamMicro;
import com.google.protobuf.micro.CodedOutputStreamMicro;
import com.google.protobuf.micro.InvalidProtocolBufferMicroException;
import com.google.protobuf.micro.MessageMicro;
import java.io.IOException;

public final class ContextProtos
{
  public static final class ActionContext extends MessageMicro
  {
    public static final int ACTION_FIELD_NUMBER = 1;
    private ActionV2Protos.ActionV2 action_ = null;
    private int cachedSize = -1;
    private boolean hasAction;

    public static ActionContext parseFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
      throws IOException
    {
      return new ActionContext().mergeFrom(paramCodedInputStreamMicro);
    }

    public static ActionContext parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferMicroException
    {
      return (ActionContext)new ActionContext().mergeFrom(paramArrayOfByte);
    }

    public final ActionContext clear()
    {
      clearAction();
      this.cachedSize = -1;
      return this;
    }

    public ActionContext clearAction()
    {
      this.hasAction = false;
      this.action_ = null;
      return this;
    }

    public ActionV2Protos.ActionV2 getAction()
    {
      return this.action_;
    }

    public int getCachedSize()
    {
      if (this.cachedSize < 0)
        getSerializedSize();
      return this.cachedSize;
    }

    public int getSerializedSize()
    {
      boolean bool = hasAction();
      int i = 0;
      if (bool)
        i = 0 + CodedOutputStreamMicro.computeMessageSize(1, getAction());
      this.cachedSize = i;
      return i;
    }

    public boolean hasAction()
    {
      return this.hasAction;
    }

    public final boolean isInitialized()
    {
      return true;
    }

    public ActionContext mergeFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
      throws IOException
    {
      while (true)
      {
        int i = paramCodedInputStreamMicro.readTag();
        switch (i)
        {
        default:
          if (parseUnknownField(paramCodedInputStreamMicro, i))
            continue;
        case 0:
          return this;
        case 10:
        }
        ActionV2Protos.ActionV2 localActionV2 = new ActionV2Protos.ActionV2();
        paramCodedInputStreamMicro.readMessage(localActionV2);
        setAction(localActionV2);
      }
    }

    public ActionContext setAction(ActionV2Protos.ActionV2 paramActionV2)
    {
      if (paramActionV2 == null)
        throw new NullPointerException();
      this.hasAction = true;
      this.action_ = paramActionV2;
      return this;
    }

    public void writeTo(CodedOutputStreamMicro paramCodedOutputStreamMicro)
      throws IOException
    {
      if (hasAction())
        paramCodedOutputStreamMicro.writeMessage(1, getAction());
    }
  }

  public static final class Context extends MessageMicro
  {
    public static final int ACTION_CONTEXT_FIELD_NUMBER = 2;
    public static final int TEXTUAL_CONTEXT_FIELD_NUMBER = 1;
    private ContextProtos.ActionContext actionContext_ = null;
    private int cachedSize = -1;
    private boolean hasActionContext;
    private boolean hasTextualContext;
    private String textualContext_ = "";

    public static Context parseFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
      throws IOException
    {
      return new Context().mergeFrom(paramCodedInputStreamMicro);
    }

    public static Context parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferMicroException
    {
      return (Context)new Context().mergeFrom(paramArrayOfByte);
    }

    public final Context clear()
    {
      clearTextualContext();
      clearActionContext();
      this.cachedSize = -1;
      return this;
    }

    public Context clearActionContext()
    {
      this.hasActionContext = false;
      this.actionContext_ = null;
      return this;
    }

    public Context clearTextualContext()
    {
      this.hasTextualContext = false;
      this.textualContext_ = "";
      return this;
    }

    public ContextProtos.ActionContext getActionContext()
    {
      return this.actionContext_;
    }

    public int getCachedSize()
    {
      if (this.cachedSize < 0)
        getSerializedSize();
      return this.cachedSize;
    }

    public int getSerializedSize()
    {
      boolean bool = hasTextualContext();
      int i = 0;
      if (bool)
        i = 0 + CodedOutputStreamMicro.computeStringSize(1, getTextualContext());
      if (hasActionContext())
        i += CodedOutputStreamMicro.computeMessageSize(2, getActionContext());
      this.cachedSize = i;
      return i;
    }

    public String getTextualContext()
    {
      return this.textualContext_;
    }

    public boolean hasActionContext()
    {
      return this.hasActionContext;
    }

    public boolean hasTextualContext()
    {
      return this.hasTextualContext;
    }

    public final boolean isInitialized()
    {
      return true;
    }

    public Context mergeFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
      throws IOException
    {
      while (true)
      {
        int i = paramCodedInputStreamMicro.readTag();
        switch (i)
        {
        default:
          if (parseUnknownField(paramCodedInputStreamMicro, i))
            continue;
        case 0:
          return this;
        case 10:
          setTextualContext(paramCodedInputStreamMicro.readString());
          break;
        case 18:
        }
        ContextProtos.ActionContext localActionContext = new ContextProtos.ActionContext();
        paramCodedInputStreamMicro.readMessage(localActionContext);
        setActionContext(localActionContext);
      }
    }

    public Context setActionContext(ContextProtos.ActionContext paramActionContext)
    {
      if (paramActionContext == null)
        throw new NullPointerException();
      this.hasActionContext = true;
      this.actionContext_ = paramActionContext;
      return this;
    }

    public Context setTextualContext(String paramString)
    {
      this.hasTextualContext = true;
      this.textualContext_ = paramString;
      return this;
    }

    public void writeTo(CodedOutputStreamMicro paramCodedOutputStreamMicro)
      throws IOException
    {
      if (hasTextualContext())
        paramCodedOutputStreamMicro.writeString(1, getTextualContext());
      if (hasActionContext())
        paramCodedOutputStreamMicro.writeMessage(2, getActionContext());
    }
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.majel.proto.ContextProtos
 * JD-Core Version:    0.6.2
 */
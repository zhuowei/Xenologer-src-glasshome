package com.google.majel.proto;

import com.google.protobuf.micro.CodedInputStreamMicro;
import com.google.protobuf.micro.CodedOutputStreamMicro;
import com.google.protobuf.micro.InvalidProtocolBufferMicroException;
import com.google.protobuf.micro.MessageMicro;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

public final class ActionProtos
{
  public static final class Contact extends MessageMicro
  {
    public static final int DIGIT_FIELD_NUMBER = 2;
    public static final int EMAIL_FIELD_NUMBER = 3;
    public static final int NAME_FIELD_NUMBER = 1;
    private int cachedSize = -1;
    private List<Integer> digit_ = Collections.emptyList();
    private String email_ = "";
    private boolean hasEmail;
    private boolean hasName;
    private String name_ = "";

    public static Contact parseFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
      throws IOException
    {
      return new Contact().mergeFrom(paramCodedInputStreamMicro);
    }

    public static Contact parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferMicroException
    {
      return (Contact)new Contact().mergeFrom(paramArrayOfByte);
    }

    public Contact addDigit(int paramInt)
    {
      if (this.digit_.isEmpty())
        this.digit_ = new ArrayList();
      this.digit_.add(Integer.valueOf(paramInt));
      return this;
    }

    public final Contact clear()
    {
      clearName();
      clearDigit();
      clearEmail();
      this.cachedSize = -1;
      return this;
    }

    public Contact clearDigit()
    {
      this.digit_ = Collections.emptyList();
      return this;
    }

    public Contact clearEmail()
    {
      this.hasEmail = false;
      this.email_ = "";
      return this;
    }

    public Contact clearName()
    {
      this.hasName = false;
      this.name_ = "";
      return this;
    }

    public int getCachedSize()
    {
      if (this.cachedSize < 0)
        getSerializedSize();
      return this.cachedSize;
    }

    public int getDigit(int paramInt)
    {
      return ((Integer)this.digit_.get(paramInt)).intValue();
    }

    public int getDigitCount()
    {
      return this.digit_.size();
    }

    public List<Integer> getDigitList()
    {
      return this.digit_;
    }

    public String getEmail()
    {
      return this.email_;
    }

    public String getName()
    {
      return this.name_;
    }

    public int getSerializedSize()
    {
      boolean bool = hasName();
      int i = 0;
      if (bool)
        i = 0 + CodedOutputStreamMicro.computeStringSize(1, getName());
      int j = 0;
      Iterator localIterator = getDigitList().iterator();
      while (localIterator.hasNext())
        j += CodedOutputStreamMicro.computeInt32SizeNoTag(((Integer)localIterator.next()).intValue());
      int k = i + j + 1 * getDigitList().size();
      if (hasEmail())
        k += CodedOutputStreamMicro.computeStringSize(3, getEmail());
      this.cachedSize = k;
      return k;
    }

    public boolean hasEmail()
    {
      return this.hasEmail;
    }

    public boolean hasName()
    {
      return this.hasName;
    }

    public final boolean isInitialized()
    {
      return true;
    }

    public Contact mergeFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
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
          setName(paramCodedInputStreamMicro.readString());
          break;
        case 16:
          addDigit(paramCodedInputStreamMicro.readInt32());
          break;
        case 26:
        }
        setEmail(paramCodedInputStreamMicro.readString());
      }
    }

    public Contact setDigit(int paramInt1, int paramInt2)
    {
      this.digit_.set(paramInt1, Integer.valueOf(paramInt2));
      return this;
    }

    public Contact setEmail(String paramString)
    {
      this.hasEmail = true;
      this.email_ = paramString;
      return this;
    }

    public Contact setName(String paramString)
    {
      this.hasName = true;
      this.name_ = paramString;
      return this;
    }

    public void writeTo(CodedOutputStreamMicro paramCodedOutputStreamMicro)
      throws IOException
    {
      if (hasName())
        paramCodedOutputStreamMicro.writeString(1, getName());
      Iterator localIterator = getDigitList().iterator();
      while (localIterator.hasNext())
        paramCodedOutputStreamMicro.writeInt32(2, ((Integer)localIterator.next()).intValue());
      if (hasEmail())
        paramCodedOutputStreamMicro.writeString(3, getEmail());
    }
  }

  public static final class Email extends MessageMicro
  {
    public static final int BODY_FIELD_NUMBER = 5;
    public static final int CC_FIELD_NUMBER = 3;
    public static final int SUBJECT_FIELD_NUMBER = 4;
    public static final int TO_FIELD_NUMBER = 2;
    private String body_ = "";
    private int cachedSize = -1;
    private List<ActionProtos.Contact> cc_ = Collections.emptyList();
    private boolean hasBody;
    private boolean hasSubject;
    private String subject_ = "";
    private List<ActionProtos.Contact> to_ = Collections.emptyList();

    public static Email parseFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
      throws IOException
    {
      return new Email().mergeFrom(paramCodedInputStreamMicro);
    }

    public static Email parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferMicroException
    {
      return (Email)new Email().mergeFrom(paramArrayOfByte);
    }

    public Email addCc(ActionProtos.Contact paramContact)
    {
      if (paramContact == null)
        throw new NullPointerException();
      if (this.cc_.isEmpty())
        this.cc_ = new ArrayList();
      this.cc_.add(paramContact);
      return this;
    }

    public Email addTo(ActionProtos.Contact paramContact)
    {
      if (paramContact == null)
        throw new NullPointerException();
      if (this.to_.isEmpty())
        this.to_ = new ArrayList();
      this.to_.add(paramContact);
      return this;
    }

    public final Email clear()
    {
      clearTo();
      clearCc();
      clearSubject();
      clearBody();
      this.cachedSize = -1;
      return this;
    }

    public Email clearBody()
    {
      this.hasBody = false;
      this.body_ = "";
      return this;
    }

    public Email clearCc()
    {
      this.cc_ = Collections.emptyList();
      return this;
    }

    public Email clearSubject()
    {
      this.hasSubject = false;
      this.subject_ = "";
      return this;
    }

    public Email clearTo()
    {
      this.to_ = Collections.emptyList();
      return this;
    }

    public String getBody()
    {
      return this.body_;
    }

    public int getCachedSize()
    {
      if (this.cachedSize < 0)
        getSerializedSize();
      return this.cachedSize;
    }

    public ActionProtos.Contact getCc(int paramInt)
    {
      return (ActionProtos.Contact)this.cc_.get(paramInt);
    }

    public int getCcCount()
    {
      return this.cc_.size();
    }

    public List<ActionProtos.Contact> getCcList()
    {
      return this.cc_;
    }

    public int getSerializedSize()
    {
      int i = 0;
      Iterator localIterator1 = getToList().iterator();
      while (localIterator1.hasNext())
        i += CodedOutputStreamMicro.computeMessageSize(2, (ActionProtos.Contact)localIterator1.next());
      Iterator localIterator2 = getCcList().iterator();
      while (localIterator2.hasNext())
        i += CodedOutputStreamMicro.computeMessageSize(3, (ActionProtos.Contact)localIterator2.next());
      if (hasSubject())
        i += CodedOutputStreamMicro.computeStringSize(4, getSubject());
      if (hasBody())
        i += CodedOutputStreamMicro.computeStringSize(5, getBody());
      this.cachedSize = i;
      return i;
    }

    public String getSubject()
    {
      return this.subject_;
    }

    public ActionProtos.Contact getTo(int paramInt)
    {
      return (ActionProtos.Contact)this.to_.get(paramInt);
    }

    public int getToCount()
    {
      return this.to_.size();
    }

    public List<ActionProtos.Contact> getToList()
    {
      return this.to_;
    }

    public boolean hasBody()
    {
      return this.hasBody;
    }

    public boolean hasSubject()
    {
      return this.hasSubject;
    }

    public final boolean isInitialized()
    {
      return true;
    }

    public Email mergeFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
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
        case 18:
          ActionProtos.Contact localContact2 = new ActionProtos.Contact();
          paramCodedInputStreamMicro.readMessage(localContact2);
          addTo(localContact2);
          break;
        case 26:
          ActionProtos.Contact localContact1 = new ActionProtos.Contact();
          paramCodedInputStreamMicro.readMessage(localContact1);
          addCc(localContact1);
          break;
        case 34:
          setSubject(paramCodedInputStreamMicro.readString());
          break;
        case 42:
        }
        setBody(paramCodedInputStreamMicro.readString());
      }
    }

    public Email setBody(String paramString)
    {
      this.hasBody = true;
      this.body_ = paramString;
      return this;
    }

    public Email setCc(int paramInt, ActionProtos.Contact paramContact)
    {
      if (paramContact == null)
        throw new NullPointerException();
      this.cc_.set(paramInt, paramContact);
      return this;
    }

    public Email setSubject(String paramString)
    {
      this.hasSubject = true;
      this.subject_ = paramString;
      return this;
    }

    public Email setTo(int paramInt, ActionProtos.Contact paramContact)
    {
      if (paramContact == null)
        throw new NullPointerException();
      this.to_.set(paramInt, paramContact);
      return this;
    }

    public void writeTo(CodedOutputStreamMicro paramCodedOutputStreamMicro)
      throws IOException
    {
      Iterator localIterator1 = getToList().iterator();
      while (localIterator1.hasNext())
        paramCodedOutputStreamMicro.writeMessage(2, (ActionProtos.Contact)localIterator1.next());
      Iterator localIterator2 = getCcList().iterator();
      while (localIterator2.hasNext())
        paramCodedOutputStreamMicro.writeMessage(3, (ActionProtos.Contact)localIterator2.next());
      if (hasSubject())
        paramCodedOutputStreamMicro.writeString(4, getSubject());
      if (hasBody())
        paramCodedOutputStreamMicro.writeString(5, getBody());
    }
  }

  public static final class IdentifyAudio extends MessageMicro
  {
    private int cachedSize = -1;

    public static IdentifyAudio parseFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
      throws IOException
    {
      return new IdentifyAudio().mergeFrom(paramCodedInputStreamMicro);
    }

    public static IdentifyAudio parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferMicroException
    {
      return (IdentifyAudio)new IdentifyAudio().mergeFrom(paramArrayOfByte);
    }

    public final IdentifyAudio clear()
    {
      this.cachedSize = -1;
      return this;
    }

    public int getCachedSize()
    {
      if (this.cachedSize < 0)
        getSerializedSize();
      return this.cachedSize;
    }

    public int getSerializedSize()
    {
      this.cachedSize = 0;
      return 0;
    }

    public final boolean isInitialized()
    {
      return true;
    }

    public IdentifyAudio mergeFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
      throws IOException
    {
      int i;
      do
      {
        i = paramCodedInputStreamMicro.readTag();
        switch (i)
        {
        default:
        case 0:
        }
      }
      while (parseUnknownField(paramCodedInputStreamMicro, i));
      return this;
    }

    public void writeTo(CodedOutputStreamMicro paramCodedOutputStreamMicro)
    {
    }
  }

  public static final class Navigate extends MessageMicro
  {
    public static final int DESTINATION_FIELD_NUMBER = 1;
    private int cachedSize = -1;
    private LatLngProtos.LatLng destination_ = null;
    private boolean hasDestination;

    public static Navigate parseFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
      throws IOException
    {
      return new Navigate().mergeFrom(paramCodedInputStreamMicro);
    }

    public static Navigate parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferMicroException
    {
      return (Navigate)new Navigate().mergeFrom(paramArrayOfByte);
    }

    public final Navigate clear()
    {
      clearDestination();
      this.cachedSize = -1;
      return this;
    }

    public Navigate clearDestination()
    {
      this.hasDestination = false;
      this.destination_ = null;
      return this;
    }

    public int getCachedSize()
    {
      if (this.cachedSize < 0)
        getSerializedSize();
      return this.cachedSize;
    }

    public LatLngProtos.LatLng getDestination()
    {
      return this.destination_;
    }

    public int getSerializedSize()
    {
      boolean bool = hasDestination();
      int i = 0;
      if (bool)
        i = 0 + CodedOutputStreamMicro.computeMessageSize(1, getDestination());
      this.cachedSize = i;
      return i;
    }

    public boolean hasDestination()
    {
      return this.hasDestination;
    }

    public final boolean isInitialized()
    {
      return true;
    }

    public Navigate mergeFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
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
        LatLngProtos.LatLng localLatLng = new LatLngProtos.LatLng();
        paramCodedInputStreamMicro.readMessage(localLatLng);
        setDestination(localLatLng);
      }
    }

    public Navigate setDestination(LatLngProtos.LatLng paramLatLng)
    {
      if (paramLatLng == null)
        throw new NullPointerException();
      this.hasDestination = true;
      this.destination_ = paramLatLng;
      return this;
    }

    public void writeTo(CodedOutputStreamMicro paramCodedOutputStreamMicro)
      throws IOException
    {
      if (hasDestination())
        paramCodedOutputStreamMicro.writeMessage(1, getDestination());
    }
  }

  public static final class Phone extends MessageMicro
  {
    public static final int CONTACT_FIELD_NUMBER = 1;
    private int cachedSize = -1;
    private List<ActionProtos.Contact> contact_ = Collections.emptyList();

    public static Phone parseFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
      throws IOException
    {
      return new Phone().mergeFrom(paramCodedInputStreamMicro);
    }

    public static Phone parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferMicroException
    {
      return (Phone)new Phone().mergeFrom(paramArrayOfByte);
    }

    public Phone addContact(ActionProtos.Contact paramContact)
    {
      if (paramContact == null)
        throw new NullPointerException();
      if (this.contact_.isEmpty())
        this.contact_ = new ArrayList();
      this.contact_.add(paramContact);
      return this;
    }

    public final Phone clear()
    {
      clearContact();
      this.cachedSize = -1;
      return this;
    }

    public Phone clearContact()
    {
      this.contact_ = Collections.emptyList();
      return this;
    }

    public int getCachedSize()
    {
      if (this.cachedSize < 0)
        getSerializedSize();
      return this.cachedSize;
    }

    public ActionProtos.Contact getContact(int paramInt)
    {
      return (ActionProtos.Contact)this.contact_.get(paramInt);
    }

    public int getContactCount()
    {
      return this.contact_.size();
    }

    public List<ActionProtos.Contact> getContactList()
    {
      return this.contact_;
    }

    public int getSerializedSize()
    {
      int i = 0;
      Iterator localIterator = getContactList().iterator();
      while (localIterator.hasNext())
        i += CodedOutputStreamMicro.computeMessageSize(1, (ActionProtos.Contact)localIterator.next());
      this.cachedSize = i;
      return i;
    }

    public final boolean isInitialized()
    {
      return true;
    }

    public Phone mergeFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
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
        ActionProtos.Contact localContact = new ActionProtos.Contact();
        paramCodedInputStreamMicro.readMessage(localContact);
        addContact(localContact);
      }
    }

    public Phone setContact(int paramInt, ActionProtos.Contact paramContact)
    {
      if (paramContact == null)
        throw new NullPointerException();
      this.contact_.set(paramInt, paramContact);
      return this;
    }

    public void writeTo(CodedOutputStreamMicro paramCodedOutputStreamMicro)
      throws IOException
    {
      Iterator localIterator = getContactList().iterator();
      while (localIterator.hasNext())
        paramCodedOutputStreamMicro.writeMessage(1, (ActionProtos.Contact)localIterator.next());
    }
  }

  public static final class Sms extends MessageMicro
  {
    public static final int CONTACT_FIELD_NUMBER = 1;
    public static final int MESSAGE_CONTENT_FIELD_NUMBER = 2;
    private int cachedSize = -1;
    private List<ActionProtos.Contact> contact_ = Collections.emptyList();
    private boolean hasMessageContent;
    private String messageContent_ = "";

    public static Sms parseFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
      throws IOException
    {
      return new Sms().mergeFrom(paramCodedInputStreamMicro);
    }

    public static Sms parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferMicroException
    {
      return (Sms)new Sms().mergeFrom(paramArrayOfByte);
    }

    public Sms addContact(ActionProtos.Contact paramContact)
    {
      if (paramContact == null)
        throw new NullPointerException();
      if (this.contact_.isEmpty())
        this.contact_ = new ArrayList();
      this.contact_.add(paramContact);
      return this;
    }

    public final Sms clear()
    {
      clearContact();
      clearMessageContent();
      this.cachedSize = -1;
      return this;
    }

    public Sms clearContact()
    {
      this.contact_ = Collections.emptyList();
      return this;
    }

    public Sms clearMessageContent()
    {
      this.hasMessageContent = false;
      this.messageContent_ = "";
      return this;
    }

    public int getCachedSize()
    {
      if (this.cachedSize < 0)
        getSerializedSize();
      return this.cachedSize;
    }

    public ActionProtos.Contact getContact(int paramInt)
    {
      return (ActionProtos.Contact)this.contact_.get(paramInt);
    }

    public int getContactCount()
    {
      return this.contact_.size();
    }

    public List<ActionProtos.Contact> getContactList()
    {
      return this.contact_;
    }

    public String getMessageContent()
    {
      return this.messageContent_;
    }

    public int getSerializedSize()
    {
      int i = 0;
      Iterator localIterator = getContactList().iterator();
      while (localIterator.hasNext())
        i += CodedOutputStreamMicro.computeMessageSize(1, (ActionProtos.Contact)localIterator.next());
      if (hasMessageContent())
        i += CodedOutputStreamMicro.computeStringSize(2, getMessageContent());
      this.cachedSize = i;
      return i;
    }

    public boolean hasMessageContent()
    {
      return this.hasMessageContent;
    }

    public final boolean isInitialized()
    {
      return true;
    }

    public Sms mergeFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
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
          ActionProtos.Contact localContact = new ActionProtos.Contact();
          paramCodedInputStreamMicro.readMessage(localContact);
          addContact(localContact);
          break;
        case 18:
        }
        setMessageContent(paramCodedInputStreamMicro.readString());
      }
    }

    public Sms setContact(int paramInt, ActionProtos.Contact paramContact)
    {
      if (paramContact == null)
        throw new NullPointerException();
      this.contact_.set(paramInt, paramContact);
      return this;
    }

    public Sms setMessageContent(String paramString)
    {
      this.hasMessageContent = true;
      this.messageContent_ = paramString;
      return this;
    }

    public void writeTo(CodedOutputStreamMicro paramCodedOutputStreamMicro)
      throws IOException
    {
      Iterator localIterator = getContactList().iterator();
      while (localIterator.hasNext())
        paramCodedOutputStreamMicro.writeMessage(1, (ActionProtos.Contact)localIterator.next());
      if (hasMessageContent())
        paramCodedOutputStreamMicro.writeString(2, getMessageContent());
    }
  }

  public static final class TvControl extends MessageMicro
  {
    public static final int ACTION_CHANGE_CHANNEL = 0;
    public static final int ACTION_FIELD_NUMBER = 1;
    public static final int ACTION_LOWER_VOLUME = 2;
    public static final int ACTION_RAISE_VOLUME = 1;
    public static final int CHANNEL_FIELD_NUMBER = 2;
    private int action_ = 0;
    private int cachedSize = -1;
    private int channel_ = 0;
    private boolean hasAction;
    private boolean hasChannel;

    public static TvControl parseFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
      throws IOException
    {
      return new TvControl().mergeFrom(paramCodedInputStreamMicro);
    }

    public static TvControl parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferMicroException
    {
      return (TvControl)new TvControl().mergeFrom(paramArrayOfByte);
    }

    public final TvControl clear()
    {
      clearAction();
      clearChannel();
      this.cachedSize = -1;
      return this;
    }

    public TvControl clearAction()
    {
      this.hasAction = false;
      this.action_ = 0;
      return this;
    }

    public TvControl clearChannel()
    {
      this.hasChannel = false;
      this.channel_ = 0;
      return this;
    }

    public int getAction()
    {
      return this.action_;
    }

    public int getCachedSize()
    {
      if (this.cachedSize < 0)
        getSerializedSize();
      return this.cachedSize;
    }

    public int getChannel()
    {
      return this.channel_;
    }

    public int getSerializedSize()
    {
      boolean bool = hasAction();
      int i = 0;
      if (bool)
        i = 0 + CodedOutputStreamMicro.computeInt32Size(1, getAction());
      if (hasChannel())
        i += CodedOutputStreamMicro.computeInt32Size(2, getChannel());
      this.cachedSize = i;
      return i;
    }

    public boolean hasAction()
    {
      return this.hasAction;
    }

    public boolean hasChannel()
    {
      return this.hasChannel;
    }

    public final boolean isInitialized()
    {
      return true;
    }

    public TvControl mergeFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
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
        case 8:
          setAction(paramCodedInputStreamMicro.readInt32());
          break;
        case 16:
        }
        setChannel(paramCodedInputStreamMicro.readInt32());
      }
    }

    public TvControl setAction(int paramInt)
    {
      this.hasAction = true;
      this.action_ = paramInt;
      return this;
    }

    public TvControl setChannel(int paramInt)
    {
      this.hasChannel = true;
      this.channel_ = paramInt;
      return this;
    }

    public void writeTo(CodedOutputStreamMicro paramCodedOutputStreamMicro)
      throws IOException
    {
      if (hasAction())
        paramCodedOutputStreamMicro.writeInt32(1, getAction());
      if (hasChannel())
        paramCodedOutputStreamMicro.writeInt32(2, getChannel());
    }
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.majel.proto.ActionProtos
 * JD-Core Version:    0.6.2
 */
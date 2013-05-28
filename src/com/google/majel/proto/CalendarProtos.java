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

public final class CalendarProtos
{
  public static final class CalendarDateTime extends MessageMicro
  {
    public static final int DATE_FIELD_NUMBER = 3;
    public static final int DATE_UNSPECIFIED_FIELD_NUMBER = 4;
    public static final int OFFSET_MS_FIELD_NUMBER = 2;
    public static final int TIME_FIELD_NUMBER = 5;
    public static final int TIME_MS_FIELD_NUMBER = 1;
    public static final int TIME_UNSPECIFIED_FIELD_NUMBER = 6;
    private int cachedSize = -1;
    private boolean dateUnspecified_ = false;
    private ActionDateTimeProtos.ActionDate date_ = null;
    private boolean hasDate;
    private boolean hasDateUnspecified;
    private boolean hasOffsetMs;
    private boolean hasTime;
    private boolean hasTimeMs;
    private boolean hasTimeUnspecified;
    private int offsetMs_ = 0;
    private long timeMs_ = 0L;
    private boolean timeUnspecified_ = false;
    private ActionDateTimeProtos.ActionTime time_ = null;

    public static CalendarDateTime parseFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
      throws IOException
    {
      return new CalendarDateTime().mergeFrom(paramCodedInputStreamMicro);
    }

    public static CalendarDateTime parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferMicroException
    {
      return (CalendarDateTime)new CalendarDateTime().mergeFrom(paramArrayOfByte);
    }

    public final CalendarDateTime clear()
    {
      clearTimeMs();
      clearOffsetMs();
      clearDate();
      clearDateUnspecified();
      clearTime();
      clearTimeUnspecified();
      this.cachedSize = -1;
      return this;
    }

    public CalendarDateTime clearDate()
    {
      this.hasDate = false;
      this.date_ = null;
      return this;
    }

    public CalendarDateTime clearDateUnspecified()
    {
      this.hasDateUnspecified = false;
      this.dateUnspecified_ = false;
      return this;
    }

    public CalendarDateTime clearOffsetMs()
    {
      this.hasOffsetMs = false;
      this.offsetMs_ = 0;
      return this;
    }

    public CalendarDateTime clearTime()
    {
      this.hasTime = false;
      this.time_ = null;
      return this;
    }

    public CalendarDateTime clearTimeMs()
    {
      this.hasTimeMs = false;
      this.timeMs_ = 0L;
      return this;
    }

    public CalendarDateTime clearTimeUnspecified()
    {
      this.hasTimeUnspecified = false;
      this.timeUnspecified_ = false;
      return this;
    }

    public int getCachedSize()
    {
      if (this.cachedSize < 0)
        getSerializedSize();
      return this.cachedSize;
    }

    public ActionDateTimeProtos.ActionDate getDate()
    {
      return this.date_;
    }

    public boolean getDateUnspecified()
    {
      return this.dateUnspecified_;
    }

    public int getOffsetMs()
    {
      return this.offsetMs_;
    }

    public int getSerializedSize()
    {
      boolean bool = hasTimeMs();
      int i = 0;
      if (bool)
        i = 0 + CodedOutputStreamMicro.computeInt64Size(1, getTimeMs());
      if (hasOffsetMs())
        i += CodedOutputStreamMicro.computeInt32Size(2, getOffsetMs());
      if (hasDate())
        i += CodedOutputStreamMicro.computeMessageSize(3, getDate());
      if (hasDateUnspecified())
        i += CodedOutputStreamMicro.computeBoolSize(4, getDateUnspecified());
      if (hasTime())
        i += CodedOutputStreamMicro.computeMessageSize(5, getTime());
      if (hasTimeUnspecified())
        i += CodedOutputStreamMicro.computeBoolSize(6, getTimeUnspecified());
      this.cachedSize = i;
      return i;
    }

    public ActionDateTimeProtos.ActionTime getTime()
    {
      return this.time_;
    }

    public long getTimeMs()
    {
      return this.timeMs_;
    }

    public boolean getTimeUnspecified()
    {
      return this.timeUnspecified_;
    }

    public boolean hasDate()
    {
      return this.hasDate;
    }

    public boolean hasDateUnspecified()
    {
      return this.hasDateUnspecified;
    }

    public boolean hasOffsetMs()
    {
      return this.hasOffsetMs;
    }

    public boolean hasTime()
    {
      return this.hasTime;
    }

    public boolean hasTimeMs()
    {
      return this.hasTimeMs;
    }

    public boolean hasTimeUnspecified()
    {
      return this.hasTimeUnspecified;
    }

    public final boolean isInitialized()
    {
      return true;
    }

    public CalendarDateTime mergeFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
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
          setTimeMs(paramCodedInputStreamMicro.readInt64());
          break;
        case 16:
          setOffsetMs(paramCodedInputStreamMicro.readInt32());
          break;
        case 26:
          ActionDateTimeProtos.ActionDate localActionDate = new ActionDateTimeProtos.ActionDate();
          paramCodedInputStreamMicro.readMessage(localActionDate);
          setDate(localActionDate);
          break;
        case 32:
          setDateUnspecified(paramCodedInputStreamMicro.readBool());
          break;
        case 42:
          ActionDateTimeProtos.ActionTime localActionTime = new ActionDateTimeProtos.ActionTime();
          paramCodedInputStreamMicro.readMessage(localActionTime);
          setTime(localActionTime);
          break;
        case 48:
        }
        setTimeUnspecified(paramCodedInputStreamMicro.readBool());
      }
    }

    public CalendarDateTime setDate(ActionDateTimeProtos.ActionDate paramActionDate)
    {
      if (paramActionDate == null)
        throw new NullPointerException();
      this.hasDate = true;
      this.date_ = paramActionDate;
      return this;
    }

    public CalendarDateTime setDateUnspecified(boolean paramBoolean)
    {
      this.hasDateUnspecified = true;
      this.dateUnspecified_ = paramBoolean;
      return this;
    }

    public CalendarDateTime setOffsetMs(int paramInt)
    {
      this.hasOffsetMs = true;
      this.offsetMs_ = paramInt;
      return this;
    }

    public CalendarDateTime setTime(ActionDateTimeProtos.ActionTime paramActionTime)
    {
      if (paramActionTime == null)
        throw new NullPointerException();
      this.hasTime = true;
      this.time_ = paramActionTime;
      return this;
    }

    public CalendarDateTime setTimeMs(long paramLong)
    {
      this.hasTimeMs = true;
      this.timeMs_ = paramLong;
      return this;
    }

    public CalendarDateTime setTimeUnspecified(boolean paramBoolean)
    {
      this.hasTimeUnspecified = true;
      this.timeUnspecified_ = paramBoolean;
      return this;
    }

    public void writeTo(CodedOutputStreamMicro paramCodedOutputStreamMicro)
      throws IOException
    {
      if (hasTimeMs())
        paramCodedOutputStreamMicro.writeInt64(1, getTimeMs());
      if (hasOffsetMs())
        paramCodedOutputStreamMicro.writeInt32(2, getOffsetMs());
      if (hasDate())
        paramCodedOutputStreamMicro.writeMessage(3, getDate());
      if (hasDateUnspecified())
        paramCodedOutputStreamMicro.writeBool(4, getDateUnspecified());
      if (hasTime())
        paramCodedOutputStreamMicro.writeMessage(5, getTime());
      if (hasTimeUnspecified())
        paramCodedOutputStreamMicro.writeBool(6, getTimeUnspecified());
    }
  }

  public static final class CalendarEvent extends MessageMicro
  {
    public static final int ATTENDEE_FIELD_NUMBER = 7;
    public static final int DESCRIPTION_FIELD_NUMBER = 3;
    public static final int END_TIME_FIELD_NUMBER = 6;
    public static final int HTML_LINK_FIELD_NUMBER = 1;
    public static final int IS_ALL_DAY_FIELD_NUMBER = 9;
    public static final int LOCATION_FIELD_NUMBER = 4;
    public static final int OTHER_ATTENDEES_EXCLUDED_FIELD_NUMBER = 8;
    public static final int REMINDER_FIELD_NUMBER = 10;
    public static final int START_TIME_FIELD_NUMBER = 5;
    public static final int SUMMARY_FIELD_NUMBER = 2;
    private List<Attendee> attendee_ = Collections.emptyList();
    private int cachedSize = -1;
    private String description_ = "";
    private CalendarProtos.CalendarDateTime endTime_ = null;
    private boolean hasDescription;
    private boolean hasEndTime;
    private boolean hasHtmlLink;
    private boolean hasIsAllDay;
    private boolean hasLocation;
    private boolean hasOtherAttendeesExcluded;
    private boolean hasStartTime;
    private boolean hasSummary;
    private String htmlLink_ = "";
    private boolean isAllDay_ = false;
    private String location_ = "";
    private boolean otherAttendeesExcluded_ = false;
    private List<Reminder> reminder_ = Collections.emptyList();
    private CalendarProtos.CalendarDateTime startTime_ = null;
    private String summary_ = "";

    public static CalendarEvent parseFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
      throws IOException
    {
      return new CalendarEvent().mergeFrom(paramCodedInputStreamMicro);
    }

    public static CalendarEvent parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferMicroException
    {
      return (CalendarEvent)new CalendarEvent().mergeFrom(paramArrayOfByte);
    }

    public CalendarEvent addAttendee(Attendee paramAttendee)
    {
      if (paramAttendee == null)
        throw new NullPointerException();
      if (this.attendee_.isEmpty())
        this.attendee_ = new ArrayList();
      this.attendee_.add(paramAttendee);
      return this;
    }

    public CalendarEvent addReminder(Reminder paramReminder)
    {
      if (paramReminder == null)
        throw new NullPointerException();
      if (this.reminder_.isEmpty())
        this.reminder_ = new ArrayList();
      this.reminder_.add(paramReminder);
      return this;
    }

    public final CalendarEvent clear()
    {
      clearHtmlLink();
      clearSummary();
      clearDescription();
      clearLocation();
      clearStartTime();
      clearEndTime();
      clearIsAllDay();
      clearAttendee();
      clearOtherAttendeesExcluded();
      clearReminder();
      this.cachedSize = -1;
      return this;
    }

    public CalendarEvent clearAttendee()
    {
      this.attendee_ = Collections.emptyList();
      return this;
    }

    public CalendarEvent clearDescription()
    {
      this.hasDescription = false;
      this.description_ = "";
      return this;
    }

    public CalendarEvent clearEndTime()
    {
      this.hasEndTime = false;
      this.endTime_ = null;
      return this;
    }

    public CalendarEvent clearHtmlLink()
    {
      this.hasHtmlLink = false;
      this.htmlLink_ = "";
      return this;
    }

    public CalendarEvent clearIsAllDay()
    {
      this.hasIsAllDay = false;
      this.isAllDay_ = false;
      return this;
    }

    public CalendarEvent clearLocation()
    {
      this.hasLocation = false;
      this.location_ = "";
      return this;
    }

    public CalendarEvent clearOtherAttendeesExcluded()
    {
      this.hasOtherAttendeesExcluded = false;
      this.otherAttendeesExcluded_ = false;
      return this;
    }

    public CalendarEvent clearReminder()
    {
      this.reminder_ = Collections.emptyList();
      return this;
    }

    public CalendarEvent clearStartTime()
    {
      this.hasStartTime = false;
      this.startTime_ = null;
      return this;
    }

    public CalendarEvent clearSummary()
    {
      this.hasSummary = false;
      this.summary_ = "";
      return this;
    }

    public Attendee getAttendee(int paramInt)
    {
      return (Attendee)this.attendee_.get(paramInt);
    }

    public int getAttendeeCount()
    {
      return this.attendee_.size();
    }

    public List<Attendee> getAttendeeList()
    {
      return this.attendee_;
    }

    public int getCachedSize()
    {
      if (this.cachedSize < 0)
        getSerializedSize();
      return this.cachedSize;
    }

    public String getDescription()
    {
      return this.description_;
    }

    public CalendarProtos.CalendarDateTime getEndTime()
    {
      return this.endTime_;
    }

    public String getHtmlLink()
    {
      return this.htmlLink_;
    }

    public boolean getIsAllDay()
    {
      return this.isAllDay_;
    }

    public String getLocation()
    {
      return this.location_;
    }

    public boolean getOtherAttendeesExcluded()
    {
      return this.otherAttendeesExcluded_;
    }

    public Reminder getReminder(int paramInt)
    {
      return (Reminder)this.reminder_.get(paramInt);
    }

    public int getReminderCount()
    {
      return this.reminder_.size();
    }

    public List<Reminder> getReminderList()
    {
      return this.reminder_;
    }

    public int getSerializedSize()
    {
      boolean bool = hasHtmlLink();
      int i = 0;
      if (bool)
        i = 0 + CodedOutputStreamMicro.computeStringSize(1, getHtmlLink());
      if (hasSummary())
        i += CodedOutputStreamMicro.computeStringSize(2, getSummary());
      if (hasDescription())
        i += CodedOutputStreamMicro.computeStringSize(3, getDescription());
      if (hasLocation())
        i += CodedOutputStreamMicro.computeStringSize(4, getLocation());
      if (hasStartTime())
        i += CodedOutputStreamMicro.computeMessageSize(5, getStartTime());
      if (hasEndTime())
        i += CodedOutputStreamMicro.computeMessageSize(6, getEndTime());
      Iterator localIterator1 = getAttendeeList().iterator();
      while (localIterator1.hasNext())
        i += CodedOutputStreamMicro.computeMessageSize(7, (Attendee)localIterator1.next());
      if (hasOtherAttendeesExcluded())
        i += CodedOutputStreamMicro.computeBoolSize(8, getOtherAttendeesExcluded());
      if (hasIsAllDay())
        i += CodedOutputStreamMicro.computeBoolSize(9, getIsAllDay());
      Iterator localIterator2 = getReminderList().iterator();
      while (localIterator2.hasNext())
        i += CodedOutputStreamMicro.computeMessageSize(10, (Reminder)localIterator2.next());
      this.cachedSize = i;
      return i;
    }

    public CalendarProtos.CalendarDateTime getStartTime()
    {
      return this.startTime_;
    }

    public String getSummary()
    {
      return this.summary_;
    }

    public boolean hasDescription()
    {
      return this.hasDescription;
    }

    public boolean hasEndTime()
    {
      return this.hasEndTime;
    }

    public boolean hasHtmlLink()
    {
      return this.hasHtmlLink;
    }

    public boolean hasIsAllDay()
    {
      return this.hasIsAllDay;
    }

    public boolean hasLocation()
    {
      return this.hasLocation;
    }

    public boolean hasOtherAttendeesExcluded()
    {
      return this.hasOtherAttendeesExcluded;
    }

    public boolean hasStartTime()
    {
      return this.hasStartTime;
    }

    public boolean hasSummary()
    {
      return this.hasSummary;
    }

    public final boolean isInitialized()
    {
      return true;
    }

    public CalendarEvent mergeFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
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
          setHtmlLink(paramCodedInputStreamMicro.readString());
          break;
        case 18:
          setSummary(paramCodedInputStreamMicro.readString());
          break;
        case 26:
          setDescription(paramCodedInputStreamMicro.readString());
          break;
        case 34:
          setLocation(paramCodedInputStreamMicro.readString());
          break;
        case 42:
          CalendarProtos.CalendarDateTime localCalendarDateTime2 = new CalendarProtos.CalendarDateTime();
          paramCodedInputStreamMicro.readMessage(localCalendarDateTime2);
          setStartTime(localCalendarDateTime2);
          break;
        case 50:
          CalendarProtos.CalendarDateTime localCalendarDateTime1 = new CalendarProtos.CalendarDateTime();
          paramCodedInputStreamMicro.readMessage(localCalendarDateTime1);
          setEndTime(localCalendarDateTime1);
          break;
        case 58:
          Attendee localAttendee = new Attendee();
          paramCodedInputStreamMicro.readMessage(localAttendee);
          addAttendee(localAttendee);
          break;
        case 64:
          setOtherAttendeesExcluded(paramCodedInputStreamMicro.readBool());
          break;
        case 72:
          setIsAllDay(paramCodedInputStreamMicro.readBool());
          break;
        case 82:
        }
        Reminder localReminder = new Reminder();
        paramCodedInputStreamMicro.readMessage(localReminder);
        addReminder(localReminder);
      }
    }

    public CalendarEvent setAttendee(int paramInt, Attendee paramAttendee)
    {
      if (paramAttendee == null)
        throw new NullPointerException();
      this.attendee_.set(paramInt, paramAttendee);
      return this;
    }

    public CalendarEvent setDescription(String paramString)
    {
      this.hasDescription = true;
      this.description_ = paramString;
      return this;
    }

    public CalendarEvent setEndTime(CalendarProtos.CalendarDateTime paramCalendarDateTime)
    {
      if (paramCalendarDateTime == null)
        throw new NullPointerException();
      this.hasEndTime = true;
      this.endTime_ = paramCalendarDateTime;
      return this;
    }

    public CalendarEvent setHtmlLink(String paramString)
    {
      this.hasHtmlLink = true;
      this.htmlLink_ = paramString;
      return this;
    }

    public CalendarEvent setIsAllDay(boolean paramBoolean)
    {
      this.hasIsAllDay = true;
      this.isAllDay_ = paramBoolean;
      return this;
    }

    public CalendarEvent setLocation(String paramString)
    {
      this.hasLocation = true;
      this.location_ = paramString;
      return this;
    }

    public CalendarEvent setOtherAttendeesExcluded(boolean paramBoolean)
    {
      this.hasOtherAttendeesExcluded = true;
      this.otherAttendeesExcluded_ = paramBoolean;
      return this;
    }

    public CalendarEvent setReminder(int paramInt, Reminder paramReminder)
    {
      if (paramReminder == null)
        throw new NullPointerException();
      this.reminder_.set(paramInt, paramReminder);
      return this;
    }

    public CalendarEvent setStartTime(CalendarProtos.CalendarDateTime paramCalendarDateTime)
    {
      if (paramCalendarDateTime == null)
        throw new NullPointerException();
      this.hasStartTime = true;
      this.startTime_ = paramCalendarDateTime;
      return this;
    }

    public CalendarEvent setSummary(String paramString)
    {
      this.hasSummary = true;
      this.summary_ = paramString;
      return this;
    }

    public void writeTo(CodedOutputStreamMicro paramCodedOutputStreamMicro)
      throws IOException
    {
      if (hasHtmlLink())
        paramCodedOutputStreamMicro.writeString(1, getHtmlLink());
      if (hasSummary())
        paramCodedOutputStreamMicro.writeString(2, getSummary());
      if (hasDescription())
        paramCodedOutputStreamMicro.writeString(3, getDescription());
      if (hasLocation())
        paramCodedOutputStreamMicro.writeString(4, getLocation());
      if (hasStartTime())
        paramCodedOutputStreamMicro.writeMessage(5, getStartTime());
      if (hasEndTime())
        paramCodedOutputStreamMicro.writeMessage(6, getEndTime());
      Iterator localIterator1 = getAttendeeList().iterator();
      while (localIterator1.hasNext())
        paramCodedOutputStreamMicro.writeMessage(7, (Attendee)localIterator1.next());
      if (hasOtherAttendeesExcluded())
        paramCodedOutputStreamMicro.writeBool(8, getOtherAttendeesExcluded());
      if (hasIsAllDay())
        paramCodedOutputStreamMicro.writeBool(9, getIsAllDay());
      Iterator localIterator2 = getReminderList().iterator();
      while (localIterator2.hasNext())
        paramCodedOutputStreamMicro.writeMessage(10, (Reminder)localIterator2.next());
    }

    public static final class Attendee extends MessageMicro
    {
      public static final int DISPLAY_NAME_FIELD_NUMBER = 2;
      public static final int EMAIL_FIELD_NUMBER = 1;
      public static final int OPTIONAL_ATTENDEE_FIELD_NUMBER = 4;
      public static final int RESOURCE_FIELD_NUMBER = 3;
      public static final int RESPONSE_COMMENT_FIELD_NUMBER = 6;
      public static final int RESPONSE_STATUS_ACCEPTED = 3;
      public static final int RESPONSE_STATUS_DECLINED = 1;
      public static final int RESPONSE_STATUS_FIELD_NUMBER = 5;
      public static final int RESPONSE_STATUS_NEEDS_ACTION = 0;
      public static final int RESPONSE_STATUS_TENTATIVE = 2;
      private int cachedSize = -1;
      private String displayName_ = "";
      private String email_ = "";
      private boolean hasDisplayName;
      private boolean hasEmail;
      private boolean hasOptionalAttendee;
      private boolean hasResource;
      private boolean hasResponseComment;
      private boolean hasResponseStatus;
      private boolean optionalAttendee_ = false;
      private boolean resource_ = false;
      private String responseComment_ = "";
      private int responseStatus_ = 0;

      public final Attendee clear()
      {
        clearEmail();
        clearDisplayName();
        clearResource();
        clearOptionalAttendee();
        clearResponseStatus();
        clearResponseComment();
        this.cachedSize = -1;
        return this;
      }

      public Attendee clearDisplayName()
      {
        this.hasDisplayName = false;
        this.displayName_ = "";
        return this;
      }

      public Attendee clearEmail()
      {
        this.hasEmail = false;
        this.email_ = "";
        return this;
      }

      public Attendee clearOptionalAttendee()
      {
        this.hasOptionalAttendee = false;
        this.optionalAttendee_ = false;
        return this;
      }

      public Attendee clearResource()
      {
        this.hasResource = false;
        this.resource_ = false;
        return this;
      }

      public Attendee clearResponseComment()
      {
        this.hasResponseComment = false;
        this.responseComment_ = "";
        return this;
      }

      public Attendee clearResponseStatus()
      {
        this.hasResponseStatus = false;
        this.responseStatus_ = 0;
        return this;
      }

      public int getCachedSize()
      {
        if (this.cachedSize < 0)
          getSerializedSize();
        return this.cachedSize;
      }

      public String getDisplayName()
      {
        return this.displayName_;
      }

      public String getEmail()
      {
        return this.email_;
      }

      public boolean getOptionalAttendee()
      {
        return this.optionalAttendee_;
      }

      public boolean getResource()
      {
        return this.resource_;
      }

      public String getResponseComment()
      {
        return this.responseComment_;
      }

      public int getResponseStatus()
      {
        return this.responseStatus_;
      }

      public int getSerializedSize()
      {
        boolean bool = hasEmail();
        int i = 0;
        if (bool)
          i = 0 + CodedOutputStreamMicro.computeStringSize(1, getEmail());
        if (hasDisplayName())
          i += CodedOutputStreamMicro.computeStringSize(2, getDisplayName());
        if (hasResource())
          i += CodedOutputStreamMicro.computeBoolSize(3, getResource());
        if (hasOptionalAttendee())
          i += CodedOutputStreamMicro.computeBoolSize(4, getOptionalAttendee());
        if (hasResponseStatus())
          i += CodedOutputStreamMicro.computeInt32Size(5, getResponseStatus());
        if (hasResponseComment())
          i += CodedOutputStreamMicro.computeStringSize(6, getResponseComment());
        this.cachedSize = i;
        return i;
      }

      public boolean hasDisplayName()
      {
        return this.hasDisplayName;
      }

      public boolean hasEmail()
      {
        return this.hasEmail;
      }

      public boolean hasOptionalAttendee()
      {
        return this.hasOptionalAttendee;
      }

      public boolean hasResource()
      {
        return this.hasResource;
      }

      public boolean hasResponseComment()
      {
        return this.hasResponseComment;
      }

      public boolean hasResponseStatus()
      {
        return this.hasResponseStatus;
      }

      public final boolean isInitialized()
      {
        return true;
      }

      public Attendee mergeFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
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
            setEmail(paramCodedInputStreamMicro.readString());
            break;
          case 18:
            setDisplayName(paramCodedInputStreamMicro.readString());
            break;
          case 24:
            setResource(paramCodedInputStreamMicro.readBool());
            break;
          case 32:
            setOptionalAttendee(paramCodedInputStreamMicro.readBool());
            break;
          case 40:
            setResponseStatus(paramCodedInputStreamMicro.readInt32());
            break;
          case 50:
          }
          setResponseComment(paramCodedInputStreamMicro.readString());
        }
      }

      public Attendee parseFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
        throws IOException
      {
        return new Attendee().mergeFrom(paramCodedInputStreamMicro);
      }

      public Attendee parseFrom(byte[] paramArrayOfByte)
        throws InvalidProtocolBufferMicroException
      {
        return (Attendee)new Attendee().mergeFrom(paramArrayOfByte);
      }

      public Attendee setDisplayName(String paramString)
      {
        this.hasDisplayName = true;
        this.displayName_ = paramString;
        return this;
      }

      public Attendee setEmail(String paramString)
      {
        this.hasEmail = true;
        this.email_ = paramString;
        return this;
      }

      public Attendee setOptionalAttendee(boolean paramBoolean)
      {
        this.hasOptionalAttendee = true;
        this.optionalAttendee_ = paramBoolean;
        return this;
      }

      public Attendee setResource(boolean paramBoolean)
      {
        this.hasResource = true;
        this.resource_ = paramBoolean;
        return this;
      }

      public Attendee setResponseComment(String paramString)
      {
        this.hasResponseComment = true;
        this.responseComment_ = paramString;
        return this;
      }

      public Attendee setResponseStatus(int paramInt)
      {
        this.hasResponseStatus = true;
        this.responseStatus_ = paramInt;
        return this;
      }

      public void writeTo(CodedOutputStreamMicro paramCodedOutputStreamMicro)
        throws IOException
      {
        if (hasEmail())
          paramCodedOutputStreamMicro.writeString(1, getEmail());
        if (hasDisplayName())
          paramCodedOutputStreamMicro.writeString(2, getDisplayName());
        if (hasResource())
          paramCodedOutputStreamMicro.writeBool(3, getResource());
        if (hasOptionalAttendee())
          paramCodedOutputStreamMicro.writeBool(4, getOptionalAttendee());
        if (hasResponseStatus())
          paramCodedOutputStreamMicro.writeInt32(5, getResponseStatus());
        if (hasResponseComment())
          paramCodedOutputStreamMicro.writeString(6, getResponseComment());
      }
    }

    public static final class Reminder extends MessageMicro
    {
      public static final int METHOD_ALARM = 4;
      public static final int METHOD_ALERT = 1;
      public static final int METHOD_DEFAULT = 0;
      public static final int METHOD_EMAIL = 2;
      public static final int METHOD_FIELD_NUMBER = 2;
      public static final int METHOD_SMS = 3;
      public static final int MINUTES_FIELD_NUMBER = 1;
      private int cachedSize = -1;
      private boolean hasMethod;
      private boolean hasMinutes;
      private int method_ = 0;
      private int minutes_ = 0;

      public final Reminder clear()
      {
        clearMinutes();
        clearMethod();
        this.cachedSize = -1;
        return this;
      }

      public Reminder clearMethod()
      {
        this.hasMethod = false;
        this.method_ = 0;
        return this;
      }

      public Reminder clearMinutes()
      {
        this.hasMinutes = false;
        this.minutes_ = 0;
        return this;
      }

      public int getCachedSize()
      {
        if (this.cachedSize < 0)
          getSerializedSize();
        return this.cachedSize;
      }

      public int getMethod()
      {
        return this.method_;
      }

      public int getMinutes()
      {
        return this.minutes_;
      }

      public int getSerializedSize()
      {
        boolean bool = hasMinutes();
        int i = 0;
        if (bool)
          i = 0 + CodedOutputStreamMicro.computeInt32Size(1, getMinutes());
        if (hasMethod())
          i += CodedOutputStreamMicro.computeInt32Size(2, getMethod());
        this.cachedSize = i;
        return i;
      }

      public boolean hasMethod()
      {
        return this.hasMethod;
      }

      public boolean hasMinutes()
      {
        return this.hasMinutes;
      }

      public final boolean isInitialized()
      {
        return true;
      }

      public Reminder mergeFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
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
            setMinutes(paramCodedInputStreamMicro.readInt32());
            break;
          case 16:
          }
          setMethod(paramCodedInputStreamMicro.readInt32());
        }
      }

      public Reminder parseFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
        throws IOException
      {
        return new Reminder().mergeFrom(paramCodedInputStreamMicro);
      }

      public Reminder parseFrom(byte[] paramArrayOfByte)
        throws InvalidProtocolBufferMicroException
      {
        return (Reminder)new Reminder().mergeFrom(paramArrayOfByte);
      }

      public Reminder setMethod(int paramInt)
      {
        this.hasMethod = true;
        this.method_ = paramInt;
        return this;
      }

      public Reminder setMinutes(int paramInt)
      {
        this.hasMinutes = true;
        this.minutes_ = paramInt;
        return this;
      }

      public void writeTo(CodedOutputStreamMicro paramCodedOutputStreamMicro)
        throws IOException
      {
        if (hasMinutes())
          paramCodedOutputStreamMicro.writeInt32(1, getMinutes());
        if (hasMethod())
          paramCodedOutputStreamMicro.writeInt32(2, getMethod());
      }
    }
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.majel.proto.CalendarProtos
 * JD-Core Version:    0.6.2
 */
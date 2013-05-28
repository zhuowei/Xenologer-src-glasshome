package com.google.majel.proto;

import com.google.protobuf.micro.ByteStringMicro;
import com.google.protobuf.micro.CodedInputStreamMicro;
import com.google.protobuf.micro.CodedOutputStreamMicro;
import com.google.protobuf.micro.InvalidProtocolBufferMicroException;
import com.google.protobuf.micro.MessageMicro;
import com.google.wireless.voicesearch.proto.EmbeddedAction.EmbeddedActionContact;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

public final class ActionV2Protos
{
  public static final class AbsoluteTimeTrigger extends MessageMicro
  {
    public static final int SYMBOLIC_TIME_AFTERNOON = 1;
    public static final int SYMBOLIC_TIME_EVENING = 2;
    public static final int SYMBOLIC_TIME_FIELD_NUMBER = 2;
    public static final int SYMBOLIC_TIME_MORNING = 0;
    public static final int SYMBOLIC_TIME_NIGHT = 3;
    public static final int SYMBOLIC_TIME_TIME_UNSPECIFIED = 4;
    public static final int SYMBOLIC_TIME_WEEKEND = 5;
    public static final int TIME_MS_FIELD_NUMBER = 1;
    private int cachedSize = -1;
    private boolean hasSymbolicTime;
    private boolean hasTimeMs;
    private int symbolicTime_ = 0;
    private long timeMs_ = 0L;

    public static AbsoluteTimeTrigger parseFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
      throws IOException
    {
      return new AbsoluteTimeTrigger().mergeFrom(paramCodedInputStreamMicro);
    }

    public static AbsoluteTimeTrigger parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferMicroException
    {
      return (AbsoluteTimeTrigger)new AbsoluteTimeTrigger().mergeFrom(paramArrayOfByte);
    }

    public final AbsoluteTimeTrigger clear()
    {
      clearTimeMs();
      clearSymbolicTime();
      this.cachedSize = -1;
      return this;
    }

    public AbsoluteTimeTrigger clearSymbolicTime()
    {
      this.hasSymbolicTime = false;
      this.symbolicTime_ = 0;
      return this;
    }

    public AbsoluteTimeTrigger clearTimeMs()
    {
      this.hasTimeMs = false;
      this.timeMs_ = 0L;
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
      boolean bool = hasTimeMs();
      int i = 0;
      if (bool)
        i = 0 + CodedOutputStreamMicro.computeInt64Size(1, getTimeMs());
      if (hasSymbolicTime())
        i += CodedOutputStreamMicro.computeInt32Size(2, getSymbolicTime());
      this.cachedSize = i;
      return i;
    }

    public int getSymbolicTime()
    {
      return this.symbolicTime_;
    }

    public long getTimeMs()
    {
      return this.timeMs_;
    }

    public boolean hasSymbolicTime()
    {
      return this.hasSymbolicTime;
    }

    public boolean hasTimeMs()
    {
      return this.hasTimeMs;
    }

    public final boolean isInitialized()
    {
      return true;
    }

    public AbsoluteTimeTrigger mergeFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
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
        }
        setSymbolicTime(paramCodedInputStreamMicro.readInt32());
      }
    }

    public AbsoluteTimeTrigger setSymbolicTime(int paramInt)
    {
      this.hasSymbolicTime = true;
      this.symbolicTime_ = paramInt;
      return this;
    }

    public AbsoluteTimeTrigger setTimeMs(long paramLong)
    {
      this.hasTimeMs = true;
      this.timeMs_ = paramLong;
      return this;
    }

    public void writeTo(CodedOutputStreamMicro paramCodedOutputStreamMicro)
      throws IOException
    {
      if (hasTimeMs())
        paramCodedOutputStreamMicro.writeInt64(1, getTimeMs());
      if (hasSymbolicTime())
        paramCodedOutputStreamMicro.writeInt32(2, getSymbolicTime());
    }
  }

  public static final class ActionContact extends MessageMicro
  {
    public static final int ADDRESS_FIELD_NUMBER = 5;
    public static final int EMAIL_FIELD_NUMBER = 3;
    public static final int EMBEDDED_ACTION_CONTACT_EXTENSION_FIELD_NUMBER = 39006806;
    public static final int NAME_FIELD_NUMBER = 1;
    public static final int PARSED_NAME_FIELD_NUMBER = 4;
    public static final int PHONE_FIELD_NUMBER = 2;
    public static final int RELATIONSHIP_FIELD_NUMBER = 6;
    private List<ActionV2Protos.ContactPostalAddress> address_ = Collections.emptyList();
    private int cachedSize = -1;
    private List<ActionV2Protos.ContactEmail> email_ = Collections.emptyList();
    private EmbeddedAction.EmbeddedActionContact embeddedActionContactExtension_ = null;
    private boolean hasEmbeddedActionContactExtension;
    private boolean hasName;
    private boolean hasParsedName;
    private boolean hasRelationship;
    private String name_ = "";
    private String parsedName_ = "";
    private List<ActionV2Protos.ContactPhoneNumber> phone_ = Collections.emptyList();
    private String relationship_ = "";

    public static ActionContact parseFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
      throws IOException
    {
      return new ActionContact().mergeFrom(paramCodedInputStreamMicro);
    }

    public static ActionContact parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferMicroException
    {
      return (ActionContact)new ActionContact().mergeFrom(paramArrayOfByte);
    }

    public ActionContact addAddress(ActionV2Protos.ContactPostalAddress paramContactPostalAddress)
    {
      if (paramContactPostalAddress == null)
        throw new NullPointerException();
      if (this.address_.isEmpty())
        this.address_ = new ArrayList();
      this.address_.add(paramContactPostalAddress);
      return this;
    }

    public ActionContact addEmail(ActionV2Protos.ContactEmail paramContactEmail)
    {
      if (paramContactEmail == null)
        throw new NullPointerException();
      if (this.email_.isEmpty())
        this.email_ = new ArrayList();
      this.email_.add(paramContactEmail);
      return this;
    }

    public ActionContact addPhone(ActionV2Protos.ContactPhoneNumber paramContactPhoneNumber)
    {
      if (paramContactPhoneNumber == null)
        throw new NullPointerException();
      if (this.phone_.isEmpty())
        this.phone_ = new ArrayList();
      this.phone_.add(paramContactPhoneNumber);
      return this;
    }

    public final ActionContact clear()
    {
      clearName();
      clearPhone();
      clearEmail();
      clearAddress();
      clearRelationship();
      clearParsedName();
      clearEmbeddedActionContactExtension();
      this.cachedSize = -1;
      return this;
    }

    public ActionContact clearAddress()
    {
      this.address_ = Collections.emptyList();
      return this;
    }

    public ActionContact clearEmail()
    {
      this.email_ = Collections.emptyList();
      return this;
    }

    public ActionContact clearEmbeddedActionContactExtension()
    {
      this.hasEmbeddedActionContactExtension = false;
      this.embeddedActionContactExtension_ = null;
      return this;
    }

    public ActionContact clearName()
    {
      this.hasName = false;
      this.name_ = "";
      return this;
    }

    public ActionContact clearParsedName()
    {
      this.hasParsedName = false;
      this.parsedName_ = "";
      return this;
    }

    public ActionContact clearPhone()
    {
      this.phone_ = Collections.emptyList();
      return this;
    }

    public ActionContact clearRelationship()
    {
      this.hasRelationship = false;
      this.relationship_ = "";
      return this;
    }

    public ActionV2Protos.ContactPostalAddress getAddress(int paramInt)
    {
      return (ActionV2Protos.ContactPostalAddress)this.address_.get(paramInt);
    }

    public int getAddressCount()
    {
      return this.address_.size();
    }

    public List<ActionV2Protos.ContactPostalAddress> getAddressList()
    {
      return this.address_;
    }

    public int getCachedSize()
    {
      if (this.cachedSize < 0)
        getSerializedSize();
      return this.cachedSize;
    }

    public ActionV2Protos.ContactEmail getEmail(int paramInt)
    {
      return (ActionV2Protos.ContactEmail)this.email_.get(paramInt);
    }

    public int getEmailCount()
    {
      return this.email_.size();
    }

    public List<ActionV2Protos.ContactEmail> getEmailList()
    {
      return this.email_;
    }

    public EmbeddedAction.EmbeddedActionContact getEmbeddedActionContactExtension()
    {
      return this.embeddedActionContactExtension_;
    }

    public String getName()
    {
      return this.name_;
    }

    public String getParsedName()
    {
      return this.parsedName_;
    }

    public ActionV2Protos.ContactPhoneNumber getPhone(int paramInt)
    {
      return (ActionV2Protos.ContactPhoneNumber)this.phone_.get(paramInt);
    }

    public int getPhoneCount()
    {
      return this.phone_.size();
    }

    public List<ActionV2Protos.ContactPhoneNumber> getPhoneList()
    {
      return this.phone_;
    }

    public String getRelationship()
    {
      return this.relationship_;
    }

    public int getSerializedSize()
    {
      boolean bool = hasName();
      int i = 0;
      if (bool)
        i = 0 + CodedOutputStreamMicro.computeStringSize(1, getName());
      Iterator localIterator1 = getPhoneList().iterator();
      while (localIterator1.hasNext())
        i += CodedOutputStreamMicro.computeMessageSize(2, (ActionV2Protos.ContactPhoneNumber)localIterator1.next());
      Iterator localIterator2 = getEmailList().iterator();
      while (localIterator2.hasNext())
        i += CodedOutputStreamMicro.computeMessageSize(3, (ActionV2Protos.ContactEmail)localIterator2.next());
      if (hasParsedName())
        i += CodedOutputStreamMicro.computeStringSize(4, getParsedName());
      Iterator localIterator3 = getAddressList().iterator();
      while (localIterator3.hasNext())
        i += CodedOutputStreamMicro.computeMessageSize(5, (ActionV2Protos.ContactPostalAddress)localIterator3.next());
      if (hasRelationship())
        i += CodedOutputStreamMicro.computeStringSize(6, getRelationship());
      if (hasEmbeddedActionContactExtension())
        i += CodedOutputStreamMicro.computeMessageSize(39006806, getEmbeddedActionContactExtension());
      this.cachedSize = i;
      return i;
    }

    public boolean hasEmbeddedActionContactExtension()
    {
      return this.hasEmbeddedActionContactExtension;
    }

    public boolean hasName()
    {
      return this.hasName;
    }

    public boolean hasParsedName()
    {
      return this.hasParsedName;
    }

    public boolean hasRelationship()
    {
      return this.hasRelationship;
    }

    public final boolean isInitialized()
    {
      return true;
    }

    public ActionContact mergeFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
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
        case 18:
          ActionV2Protos.ContactPhoneNumber localContactPhoneNumber = new ActionV2Protos.ContactPhoneNumber();
          paramCodedInputStreamMicro.readMessage(localContactPhoneNumber);
          addPhone(localContactPhoneNumber);
          break;
        case 26:
          ActionV2Protos.ContactEmail localContactEmail = new ActionV2Protos.ContactEmail();
          paramCodedInputStreamMicro.readMessage(localContactEmail);
          addEmail(localContactEmail);
          break;
        case 34:
          setParsedName(paramCodedInputStreamMicro.readString());
          break;
        case 42:
          ActionV2Protos.ContactPostalAddress localContactPostalAddress = new ActionV2Protos.ContactPostalAddress();
          paramCodedInputStreamMicro.readMessage(localContactPostalAddress);
          addAddress(localContactPostalAddress);
          break;
        case 50:
          setRelationship(paramCodedInputStreamMicro.readString());
          break;
        case 312054450:
        }
        EmbeddedAction.EmbeddedActionContact localEmbeddedActionContact = new EmbeddedAction.EmbeddedActionContact();
        paramCodedInputStreamMicro.readMessage(localEmbeddedActionContact);
        setEmbeddedActionContactExtension(localEmbeddedActionContact);
      }
    }

    public ActionContact setAddress(int paramInt, ActionV2Protos.ContactPostalAddress paramContactPostalAddress)
    {
      if (paramContactPostalAddress == null)
        throw new NullPointerException();
      this.address_.set(paramInt, paramContactPostalAddress);
      return this;
    }

    public ActionContact setEmail(int paramInt, ActionV2Protos.ContactEmail paramContactEmail)
    {
      if (paramContactEmail == null)
        throw new NullPointerException();
      this.email_.set(paramInt, paramContactEmail);
      return this;
    }

    public ActionContact setEmbeddedActionContactExtension(EmbeddedAction.EmbeddedActionContact paramEmbeddedActionContact)
    {
      if (paramEmbeddedActionContact == null)
        throw new NullPointerException();
      this.hasEmbeddedActionContactExtension = true;
      this.embeddedActionContactExtension_ = paramEmbeddedActionContact;
      return this;
    }

    public ActionContact setName(String paramString)
    {
      this.hasName = true;
      this.name_ = paramString;
      return this;
    }

    public ActionContact setParsedName(String paramString)
    {
      this.hasParsedName = true;
      this.parsedName_ = paramString;
      return this;
    }

    public ActionContact setPhone(int paramInt, ActionV2Protos.ContactPhoneNumber paramContactPhoneNumber)
    {
      if (paramContactPhoneNumber == null)
        throw new NullPointerException();
      this.phone_.set(paramInt, paramContactPhoneNumber);
      return this;
    }

    public ActionContact setRelationship(String paramString)
    {
      this.hasRelationship = true;
      this.relationship_ = paramString;
      return this;
    }

    public void writeTo(CodedOutputStreamMicro paramCodedOutputStreamMicro)
      throws IOException
    {
      if (hasName())
        paramCodedOutputStreamMicro.writeString(1, getName());
      Iterator localIterator1 = getPhoneList().iterator();
      while (localIterator1.hasNext())
        paramCodedOutputStreamMicro.writeMessage(2, (ActionV2Protos.ContactPhoneNumber)localIterator1.next());
      Iterator localIterator2 = getEmailList().iterator();
      while (localIterator2.hasNext())
        paramCodedOutputStreamMicro.writeMessage(3, (ActionV2Protos.ContactEmail)localIterator2.next());
      if (hasParsedName())
        paramCodedOutputStreamMicro.writeString(4, getParsedName());
      Iterator localIterator3 = getAddressList().iterator();
      while (localIterator3.hasNext())
        paramCodedOutputStreamMicro.writeMessage(5, (ActionV2Protos.ContactPostalAddress)localIterator3.next());
      if (hasRelationship())
        paramCodedOutputStreamMicro.writeString(6, getRelationship());
      if (hasEmbeddedActionContactExtension())
        paramCodedOutputStreamMicro.writeMessage(39006806, getEmbeddedActionContactExtension());
    }
  }

  public static final class ActionContactGroup extends MessageMicro
  {
    public static final int CONTACT_FIELD_NUMBER = 1;
    private int cachedSize = -1;
    private List<ActionV2Protos.ActionContact> contact_ = Collections.emptyList();

    public static ActionContactGroup parseFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
      throws IOException
    {
      return new ActionContactGroup().mergeFrom(paramCodedInputStreamMicro);
    }

    public static ActionContactGroup parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferMicroException
    {
      return (ActionContactGroup)new ActionContactGroup().mergeFrom(paramArrayOfByte);
    }

    public ActionContactGroup addContact(ActionV2Protos.ActionContact paramActionContact)
    {
      if (paramActionContact == null)
        throw new NullPointerException();
      if (this.contact_.isEmpty())
        this.contact_ = new ArrayList();
      this.contact_.add(paramActionContact);
      return this;
    }

    public final ActionContactGroup clear()
    {
      clearContact();
      this.cachedSize = -1;
      return this;
    }

    public ActionContactGroup clearContact()
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

    public ActionV2Protos.ActionContact getContact(int paramInt)
    {
      return (ActionV2Protos.ActionContact)this.contact_.get(paramInt);
    }

    public int getContactCount()
    {
      return this.contact_.size();
    }

    public List<ActionV2Protos.ActionContact> getContactList()
    {
      return this.contact_;
    }

    public int getSerializedSize()
    {
      int i = 0;
      Iterator localIterator = getContactList().iterator();
      while (localIterator.hasNext())
        i += CodedOutputStreamMicro.computeMessageSize(1, (ActionV2Protos.ActionContact)localIterator.next());
      this.cachedSize = i;
      return i;
    }

    public final boolean isInitialized()
    {
      return true;
    }

    public ActionContactGroup mergeFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
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
        ActionV2Protos.ActionContact localActionContact = new ActionV2Protos.ActionContact();
        paramCodedInputStreamMicro.readMessage(localActionContact);
        addContact(localActionContact);
      }
    }

    public ActionContactGroup setContact(int paramInt, ActionV2Protos.ActionContact paramActionContact)
    {
      if (paramActionContact == null)
        throw new NullPointerException();
      this.contact_.set(paramInt, paramActionContact);
      return this;
    }

    public void writeTo(CodedOutputStreamMicro paramCodedOutputStreamMicro)
      throws IOException
    {
      Iterator localIterator = getContactList().iterator();
      while (localIterator.hasNext())
        paramCodedOutputStreamMicro.writeMessage(1, (ActionV2Protos.ActionContact)localIterator.next());
    }
  }

  public static final class ActionV2 extends MessageMicro
  {
    public static final int ACTION_V2_EXTENSION_FIELD_NUMBER = 37527727;
    public static final int ADD_CALENDAR_EVENT_ACTION_EXTENSION_FIELD_NUMBER = 25411286;
    public static final int ADD_REMINDER_ACTION_EXTENSION_FIELD_NUMBER = 42139248;
    public static final int AT_HOME_POWER_CONTROL_ACTION_EXTENSION_FIELD_NUMBER = 28948765;
    public static final int CALL_BUSINESS_ACTION_EXTENSION_FIELD_NUMBER = 26342976;
    public static final int DIRECTIONS_ACTION_EXTENSION_FIELD_NUMBER = 25329224;
    public static final int EMAIL_ACTION_EXTENSION_FIELD_NUMBER = 26187827;
    public static final int EXECUTE_FIELD_NUMBER = 1;
    public static final int FOCUSED_FIELD_NAME_FIELD_NUMBER = 2;
    public static final int GET_TRAFFIC_CONDITIONS_EXTENSION_FIELD_NUMBER = 28650949;
    public static final int GOGGLES_ACTION_EXTENSION_FIELD_NUMBER = 37548229;
    public static final int HELP_ACTION_EXTENSION_FIELD_NUMBER = 28333047;
    public static final int MAP_ACTION_EXTENSION_FIELD_NUMBER = 25315722;
    public static final int METADATA_FIELD_NUMBER = 4;
    public static final int NAVIGATION_ACTION_EXTENSION_FIELD_NUMBER = 25315474;
    public static final int OPEN_APPLICATION_ACTION_EXTENSION_FIELD_NUMBER = 25433642;
    public static final int OPEN_U_R_L_ACTION_EXTENSION_FIELD_NUMBER = 25438367;
    public static final int PHONE_ACTION_EXTENSION_FIELD_NUMBER = 25433301;
    public static final int PLAY_MEDIA_ACTION_EXTENSION_FIELD_NUMBER = 25434077;
    public static final int SELF_NOTE_ACTION_EXTENSION_FIELD_NUMBER = 25441019;
    public static final int SET_ALARM_ACTION_EXTENSION_FIELD_NUMBER = 25484866;
    public static final int SHOW_CALENDAR_EVENT_ACTION_EXTENSION_FIELD_NUMBER = 25424429;
    public static final int SHOW_CONTACT_INFORMATION_ACTION_EXTENSION_FIELD_NUMBER = 36088723;
    public static final int SHOW_STREET_VIEW_EXTENSION_FIELD_NUMBER = 28709263;
    public static final int SOUND_SEARCH_ACTION_EXTENSION_FIELD_NUMBER = 34151581;
    public static final int SUGGESTED_DELAY_MS_FIELD_NUMBER = 3;
    public static final int S_M_S_ACTION_EXTENSION_FIELD_NUMBER = 25433329;
    public static final int UNSUPPORTED_ACTION_EXTENSION_FIELD_NUMBER = 28717426;
    public static final int UPDATE_SOCIAL_NETWORK_ACTION_EXTENSION_FIELD_NUMBER = 25452201;
    private ActionV2 actionV2Extension_ = null;
    private ActionV2Protos.AddCalendarEventAction addCalendarEventActionExtension_ = null;
    private ActionV2Protos.AddReminderAction addReminderActionExtension_ = null;
    private ActionV2Protos.AtHomePowerControlAction atHomePowerControlActionExtension_ = null;
    private int cachedSize = -1;
    private ActionV2Protos.CallBusinessAction callBusinessActionExtension_ = null;
    private ActionV2Protos.DirectionsAction directionsActionExtension_ = null;
    private ActionV2Protos.EmailAction emailActionExtension_ = null;
    private boolean execute_ = false;
    private String focusedFieldName_ = "";
    private ActionV2Protos.GetTrafficConditions getTrafficConditionsExtension_ = null;
    private ActionV2Protos.GogglesAction gogglesActionExtension_ = null;
    private boolean hasActionV2Extension;
    private boolean hasAddCalendarEventActionExtension;
    private boolean hasAddReminderActionExtension;
    private boolean hasAtHomePowerControlActionExtension;
    private boolean hasCallBusinessActionExtension;
    private boolean hasDirectionsActionExtension;
    private boolean hasEmailActionExtension;
    private boolean hasExecute;
    private boolean hasFocusedFieldName;
    private boolean hasGetTrafficConditionsExtension;
    private boolean hasGogglesActionExtension;
    private boolean hasHelpActionExtension;
    private boolean hasMapActionExtension;
    private boolean hasMetadata;
    private boolean hasNavigationActionExtension;
    private boolean hasOpenApplicationActionExtension;
    private boolean hasOpenURLActionExtension;
    private boolean hasPhoneActionExtension;
    private boolean hasPlayMediaActionExtension;
    private boolean hasSMSActionExtension;
    private boolean hasSelfNoteActionExtension;
    private boolean hasSetAlarmActionExtension;
    private boolean hasShowCalendarEventActionExtension;
    private boolean hasShowContactInformationActionExtension;
    private boolean hasShowStreetViewExtension;
    private boolean hasSoundSearchActionExtension;
    private boolean hasSuggestedDelayMs;
    private boolean hasUnsupportedActionExtension;
    private boolean hasUpdateSocialNetworkActionExtension;
    private ActionV2Protos.HelpAction helpActionExtension_ = null;
    private ActionV2Protos.MapAction mapActionExtension_ = null;
    private ActionV2Protos.ActionV2Metadata metadata_ = null;
    private ActionV2Protos.NavigationAction navigationActionExtension_ = null;
    private ActionV2Protos.OpenApplicationAction openApplicationActionExtension_ = null;
    private ActionV2Protos.OpenURLAction openURLActionExtension_ = null;
    private ActionV2Protos.PhoneAction phoneActionExtension_ = null;
    private ActionV2Protos.PlayMediaAction playMediaActionExtension_ = null;
    private ActionV2Protos.SMSAction sMSActionExtension_ = null;
    private ActionV2Protos.SelfNoteAction selfNoteActionExtension_ = null;
    private ActionV2Protos.SetAlarmAction setAlarmActionExtension_ = null;
    private ActionV2Protos.ShowCalendarEventAction showCalendarEventActionExtension_ = null;
    private ActionV2Protos.ShowContactInformationAction showContactInformationActionExtension_ = null;
    private ActionV2Protos.ShowStreetView showStreetViewExtension_ = null;
    private ActionV2Protos.SoundSearchAction soundSearchActionExtension_ = null;
    private int suggestedDelayMs_ = 0;
    private ActionV2Protos.UnsupportedAction unsupportedActionExtension_ = null;
    private ActionV2Protos.UpdateSocialNetworkAction updateSocialNetworkActionExtension_ = null;

    public static ActionV2 parseFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
      throws IOException
    {
      return new ActionV2().mergeFrom(paramCodedInputStreamMicro);
    }

    public static ActionV2 parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferMicroException
    {
      return (ActionV2)new ActionV2().mergeFrom(paramArrayOfByte);
    }

    public final ActionV2 clear()
    {
      clearExecute();
      clearSuggestedDelayMs();
      clearFocusedFieldName();
      clearMetadata();
      clearNavigationActionExtension();
      clearMapActionExtension();
      clearDirectionsActionExtension();
      clearAddCalendarEventActionExtension();
      clearShowCalendarEventActionExtension();
      clearPhoneActionExtension();
      clearSMSActionExtension();
      clearOpenApplicationActionExtension();
      clearPlayMediaActionExtension();
      clearOpenURLActionExtension();
      clearSelfNoteActionExtension();
      clearUpdateSocialNetworkActionExtension();
      clearSetAlarmActionExtension();
      clearEmailActionExtension();
      clearCallBusinessActionExtension();
      clearHelpActionExtension();
      clearGetTrafficConditionsExtension();
      clearShowStreetViewExtension();
      clearUnsupportedActionExtension();
      clearAtHomePowerControlActionExtension();
      clearSoundSearchActionExtension();
      clearShowContactInformationActionExtension();
      clearActionV2Extension();
      clearGogglesActionExtension();
      clearAddReminderActionExtension();
      this.cachedSize = -1;
      return this;
    }

    public ActionV2 clearActionV2Extension()
    {
      this.hasActionV2Extension = false;
      this.actionV2Extension_ = null;
      return this;
    }

    public ActionV2 clearAddCalendarEventActionExtension()
    {
      this.hasAddCalendarEventActionExtension = false;
      this.addCalendarEventActionExtension_ = null;
      return this;
    }

    public ActionV2 clearAddReminderActionExtension()
    {
      this.hasAddReminderActionExtension = false;
      this.addReminderActionExtension_ = null;
      return this;
    }

    public ActionV2 clearAtHomePowerControlActionExtension()
    {
      this.hasAtHomePowerControlActionExtension = false;
      this.atHomePowerControlActionExtension_ = null;
      return this;
    }

    public ActionV2 clearCallBusinessActionExtension()
    {
      this.hasCallBusinessActionExtension = false;
      this.callBusinessActionExtension_ = null;
      return this;
    }

    public ActionV2 clearDirectionsActionExtension()
    {
      this.hasDirectionsActionExtension = false;
      this.directionsActionExtension_ = null;
      return this;
    }

    public ActionV2 clearEmailActionExtension()
    {
      this.hasEmailActionExtension = false;
      this.emailActionExtension_ = null;
      return this;
    }

    public ActionV2 clearExecute()
    {
      this.hasExecute = false;
      this.execute_ = false;
      return this;
    }

    public ActionV2 clearFocusedFieldName()
    {
      this.hasFocusedFieldName = false;
      this.focusedFieldName_ = "";
      return this;
    }

    public ActionV2 clearGetTrafficConditionsExtension()
    {
      this.hasGetTrafficConditionsExtension = false;
      this.getTrafficConditionsExtension_ = null;
      return this;
    }

    public ActionV2 clearGogglesActionExtension()
    {
      this.hasGogglesActionExtension = false;
      this.gogglesActionExtension_ = null;
      return this;
    }

    public ActionV2 clearHelpActionExtension()
    {
      this.hasHelpActionExtension = false;
      this.helpActionExtension_ = null;
      return this;
    }

    public ActionV2 clearMapActionExtension()
    {
      this.hasMapActionExtension = false;
      this.mapActionExtension_ = null;
      return this;
    }

    public ActionV2 clearMetadata()
    {
      this.hasMetadata = false;
      this.metadata_ = null;
      return this;
    }

    public ActionV2 clearNavigationActionExtension()
    {
      this.hasNavigationActionExtension = false;
      this.navigationActionExtension_ = null;
      return this;
    }

    public ActionV2 clearOpenApplicationActionExtension()
    {
      this.hasOpenApplicationActionExtension = false;
      this.openApplicationActionExtension_ = null;
      return this;
    }

    public ActionV2 clearOpenURLActionExtension()
    {
      this.hasOpenURLActionExtension = false;
      this.openURLActionExtension_ = null;
      return this;
    }

    public ActionV2 clearPhoneActionExtension()
    {
      this.hasPhoneActionExtension = false;
      this.phoneActionExtension_ = null;
      return this;
    }

    public ActionV2 clearPlayMediaActionExtension()
    {
      this.hasPlayMediaActionExtension = false;
      this.playMediaActionExtension_ = null;
      return this;
    }

    public ActionV2 clearSMSActionExtension()
    {
      this.hasSMSActionExtension = false;
      this.sMSActionExtension_ = null;
      return this;
    }

    public ActionV2 clearSelfNoteActionExtension()
    {
      this.hasSelfNoteActionExtension = false;
      this.selfNoteActionExtension_ = null;
      return this;
    }

    public ActionV2 clearSetAlarmActionExtension()
    {
      this.hasSetAlarmActionExtension = false;
      this.setAlarmActionExtension_ = null;
      return this;
    }

    public ActionV2 clearShowCalendarEventActionExtension()
    {
      this.hasShowCalendarEventActionExtension = false;
      this.showCalendarEventActionExtension_ = null;
      return this;
    }

    public ActionV2 clearShowContactInformationActionExtension()
    {
      this.hasShowContactInformationActionExtension = false;
      this.showContactInformationActionExtension_ = null;
      return this;
    }

    public ActionV2 clearShowStreetViewExtension()
    {
      this.hasShowStreetViewExtension = false;
      this.showStreetViewExtension_ = null;
      return this;
    }

    public ActionV2 clearSoundSearchActionExtension()
    {
      this.hasSoundSearchActionExtension = false;
      this.soundSearchActionExtension_ = null;
      return this;
    }

    public ActionV2 clearSuggestedDelayMs()
    {
      this.hasSuggestedDelayMs = false;
      this.suggestedDelayMs_ = 0;
      return this;
    }

    public ActionV2 clearUnsupportedActionExtension()
    {
      this.hasUnsupportedActionExtension = false;
      this.unsupportedActionExtension_ = null;
      return this;
    }

    public ActionV2 clearUpdateSocialNetworkActionExtension()
    {
      this.hasUpdateSocialNetworkActionExtension = false;
      this.updateSocialNetworkActionExtension_ = null;
      return this;
    }

    public ActionV2 getActionV2Extension()
    {
      return this.actionV2Extension_;
    }

    public ActionV2Protos.AddCalendarEventAction getAddCalendarEventActionExtension()
    {
      return this.addCalendarEventActionExtension_;
    }

    public ActionV2Protos.AddReminderAction getAddReminderActionExtension()
    {
      return this.addReminderActionExtension_;
    }

    public ActionV2Protos.AtHomePowerControlAction getAtHomePowerControlActionExtension()
    {
      return this.atHomePowerControlActionExtension_;
    }

    public int getCachedSize()
    {
      if (this.cachedSize < 0)
        getSerializedSize();
      return this.cachedSize;
    }

    public ActionV2Protos.CallBusinessAction getCallBusinessActionExtension()
    {
      return this.callBusinessActionExtension_;
    }

    public ActionV2Protos.DirectionsAction getDirectionsActionExtension()
    {
      return this.directionsActionExtension_;
    }

    public ActionV2Protos.EmailAction getEmailActionExtension()
    {
      return this.emailActionExtension_;
    }

    public boolean getExecute()
    {
      return this.execute_;
    }

    public String getFocusedFieldName()
    {
      return this.focusedFieldName_;
    }

    public ActionV2Protos.GetTrafficConditions getGetTrafficConditionsExtension()
    {
      return this.getTrafficConditionsExtension_;
    }

    public ActionV2Protos.GogglesAction getGogglesActionExtension()
    {
      return this.gogglesActionExtension_;
    }

    public ActionV2Protos.HelpAction getHelpActionExtension()
    {
      return this.helpActionExtension_;
    }

    public ActionV2Protos.MapAction getMapActionExtension()
    {
      return this.mapActionExtension_;
    }

    public ActionV2Protos.ActionV2Metadata getMetadata()
    {
      return this.metadata_;
    }

    public ActionV2Protos.NavigationAction getNavigationActionExtension()
    {
      return this.navigationActionExtension_;
    }

    public ActionV2Protos.OpenApplicationAction getOpenApplicationActionExtension()
    {
      return this.openApplicationActionExtension_;
    }

    public ActionV2Protos.OpenURLAction getOpenURLActionExtension()
    {
      return this.openURLActionExtension_;
    }

    public ActionV2Protos.PhoneAction getPhoneActionExtension()
    {
      return this.phoneActionExtension_;
    }

    public ActionV2Protos.PlayMediaAction getPlayMediaActionExtension()
    {
      return this.playMediaActionExtension_;
    }

    public ActionV2Protos.SMSAction getSMSActionExtension()
    {
      return this.sMSActionExtension_;
    }

    public ActionV2Protos.SelfNoteAction getSelfNoteActionExtension()
    {
      return this.selfNoteActionExtension_;
    }

    public int getSerializedSize()
    {
      boolean bool = hasExecute();
      int i = 0;
      if (bool)
        i = 0 + CodedOutputStreamMicro.computeBoolSize(1, getExecute());
      if (hasFocusedFieldName())
        i += CodedOutputStreamMicro.computeStringSize(2, getFocusedFieldName());
      if (hasSuggestedDelayMs())
        i += CodedOutputStreamMicro.computeInt32Size(3, getSuggestedDelayMs());
      if (hasMetadata())
        i += CodedOutputStreamMicro.computeMessageSize(4, getMetadata());
      if (hasNavigationActionExtension())
        i += CodedOutputStreamMicro.computeMessageSize(25315474, getNavigationActionExtension());
      if (hasMapActionExtension())
        i += CodedOutputStreamMicro.computeMessageSize(25315722, getMapActionExtension());
      if (hasDirectionsActionExtension())
        i += CodedOutputStreamMicro.computeMessageSize(25329224, getDirectionsActionExtension());
      if (hasAddCalendarEventActionExtension())
        i += CodedOutputStreamMicro.computeMessageSize(25411286, getAddCalendarEventActionExtension());
      if (hasShowCalendarEventActionExtension())
        i += CodedOutputStreamMicro.computeMessageSize(25424429, getShowCalendarEventActionExtension());
      if (hasPhoneActionExtension())
        i += CodedOutputStreamMicro.computeMessageSize(25433301, getPhoneActionExtension());
      if (hasSMSActionExtension())
        i += CodedOutputStreamMicro.computeMessageSize(25433329, getSMSActionExtension());
      if (hasOpenApplicationActionExtension())
        i += CodedOutputStreamMicro.computeMessageSize(25433642, getOpenApplicationActionExtension());
      if (hasPlayMediaActionExtension())
        i += CodedOutputStreamMicro.computeMessageSize(25434077, getPlayMediaActionExtension());
      if (hasOpenURLActionExtension())
        i += CodedOutputStreamMicro.computeMessageSize(25438367, getOpenURLActionExtension());
      if (hasSelfNoteActionExtension())
        i += CodedOutputStreamMicro.computeMessageSize(25441019, getSelfNoteActionExtension());
      if (hasUpdateSocialNetworkActionExtension())
        i += CodedOutputStreamMicro.computeMessageSize(25452201, getUpdateSocialNetworkActionExtension());
      if (hasSetAlarmActionExtension())
        i += CodedOutputStreamMicro.computeMessageSize(25484866, getSetAlarmActionExtension());
      if (hasEmailActionExtension())
        i += CodedOutputStreamMicro.computeMessageSize(26187827, getEmailActionExtension());
      if (hasCallBusinessActionExtension())
        i += CodedOutputStreamMicro.computeMessageSize(26342976, getCallBusinessActionExtension());
      if (hasHelpActionExtension())
        i += CodedOutputStreamMicro.computeMessageSize(28333047, getHelpActionExtension());
      if (hasGetTrafficConditionsExtension())
        i += CodedOutputStreamMicro.computeMessageSize(28650949, getGetTrafficConditionsExtension());
      if (hasShowStreetViewExtension())
        i += CodedOutputStreamMicro.computeMessageSize(28709263, getShowStreetViewExtension());
      if (hasUnsupportedActionExtension())
        i += CodedOutputStreamMicro.computeMessageSize(28717426, getUnsupportedActionExtension());
      if (hasAtHomePowerControlActionExtension())
        i += CodedOutputStreamMicro.computeMessageSize(28948765, getAtHomePowerControlActionExtension());
      if (hasSoundSearchActionExtension())
        i += CodedOutputStreamMicro.computeMessageSize(34151581, getSoundSearchActionExtension());
      if (hasShowContactInformationActionExtension())
        i += CodedOutputStreamMicro.computeMessageSize(36088723, getShowContactInformationActionExtension());
      if (hasActionV2Extension())
        i += CodedOutputStreamMicro.computeMessageSize(37527727, getActionV2Extension());
      if (hasGogglesActionExtension())
        i += CodedOutputStreamMicro.computeMessageSize(37548229, getGogglesActionExtension());
      if (hasAddReminderActionExtension())
        i += CodedOutputStreamMicro.computeMessageSize(42139248, getAddReminderActionExtension());
      this.cachedSize = i;
      return i;
    }

    public ActionV2Protos.SetAlarmAction getSetAlarmActionExtension()
    {
      return this.setAlarmActionExtension_;
    }

    public ActionV2Protos.ShowCalendarEventAction getShowCalendarEventActionExtension()
    {
      return this.showCalendarEventActionExtension_;
    }

    public ActionV2Protos.ShowContactInformationAction getShowContactInformationActionExtension()
    {
      return this.showContactInformationActionExtension_;
    }

    public ActionV2Protos.ShowStreetView getShowStreetViewExtension()
    {
      return this.showStreetViewExtension_;
    }

    public ActionV2Protos.SoundSearchAction getSoundSearchActionExtension()
    {
      return this.soundSearchActionExtension_;
    }

    public int getSuggestedDelayMs()
    {
      return this.suggestedDelayMs_;
    }

    public ActionV2Protos.UnsupportedAction getUnsupportedActionExtension()
    {
      return this.unsupportedActionExtension_;
    }

    public ActionV2Protos.UpdateSocialNetworkAction getUpdateSocialNetworkActionExtension()
    {
      return this.updateSocialNetworkActionExtension_;
    }

    public boolean hasActionV2Extension()
    {
      return this.hasActionV2Extension;
    }

    public boolean hasAddCalendarEventActionExtension()
    {
      return this.hasAddCalendarEventActionExtension;
    }

    public boolean hasAddReminderActionExtension()
    {
      return this.hasAddReminderActionExtension;
    }

    public boolean hasAtHomePowerControlActionExtension()
    {
      return this.hasAtHomePowerControlActionExtension;
    }

    public boolean hasCallBusinessActionExtension()
    {
      return this.hasCallBusinessActionExtension;
    }

    public boolean hasDirectionsActionExtension()
    {
      return this.hasDirectionsActionExtension;
    }

    public boolean hasEmailActionExtension()
    {
      return this.hasEmailActionExtension;
    }

    public boolean hasExecute()
    {
      return this.hasExecute;
    }

    public boolean hasFocusedFieldName()
    {
      return this.hasFocusedFieldName;
    }

    public boolean hasGetTrafficConditionsExtension()
    {
      return this.hasGetTrafficConditionsExtension;
    }

    public boolean hasGogglesActionExtension()
    {
      return this.hasGogglesActionExtension;
    }

    public boolean hasHelpActionExtension()
    {
      return this.hasHelpActionExtension;
    }

    public boolean hasMapActionExtension()
    {
      return this.hasMapActionExtension;
    }

    public boolean hasMetadata()
    {
      return this.hasMetadata;
    }

    public boolean hasNavigationActionExtension()
    {
      return this.hasNavigationActionExtension;
    }

    public boolean hasOpenApplicationActionExtension()
    {
      return this.hasOpenApplicationActionExtension;
    }

    public boolean hasOpenURLActionExtension()
    {
      return this.hasOpenURLActionExtension;
    }

    public boolean hasPhoneActionExtension()
    {
      return this.hasPhoneActionExtension;
    }

    public boolean hasPlayMediaActionExtension()
    {
      return this.hasPlayMediaActionExtension;
    }

    public boolean hasSMSActionExtension()
    {
      return this.hasSMSActionExtension;
    }

    public boolean hasSelfNoteActionExtension()
    {
      return this.hasSelfNoteActionExtension;
    }

    public boolean hasSetAlarmActionExtension()
    {
      return this.hasSetAlarmActionExtension;
    }

    public boolean hasShowCalendarEventActionExtension()
    {
      return this.hasShowCalendarEventActionExtension;
    }

    public boolean hasShowContactInformationActionExtension()
    {
      return this.hasShowContactInformationActionExtension;
    }

    public boolean hasShowStreetViewExtension()
    {
      return this.hasShowStreetViewExtension;
    }

    public boolean hasSoundSearchActionExtension()
    {
      return this.hasSoundSearchActionExtension;
    }

    public boolean hasSuggestedDelayMs()
    {
      return this.hasSuggestedDelayMs;
    }

    public boolean hasUnsupportedActionExtension()
    {
      return this.hasUnsupportedActionExtension;
    }

    public boolean hasUpdateSocialNetworkActionExtension()
    {
      return this.hasUpdateSocialNetworkActionExtension;
    }

    public final boolean isInitialized()
    {
      return true;
    }

    public ActionV2 mergeFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
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
          setExecute(paramCodedInputStreamMicro.readBool());
          break;
        case 18:
          setFocusedFieldName(paramCodedInputStreamMicro.readString());
          break;
        case 24:
          setSuggestedDelayMs(paramCodedInputStreamMicro.readInt32());
          break;
        case 34:
          ActionV2Protos.ActionV2Metadata localActionV2Metadata = new ActionV2Protos.ActionV2Metadata();
          paramCodedInputStreamMicro.readMessage(localActionV2Metadata);
          setMetadata(localActionV2Metadata);
          break;
        case 202523794:
          ActionV2Protos.NavigationAction localNavigationAction = new ActionV2Protos.NavigationAction();
          paramCodedInputStreamMicro.readMessage(localNavigationAction);
          setNavigationActionExtension(localNavigationAction);
          break;
        case 202525778:
          ActionV2Protos.MapAction localMapAction = new ActionV2Protos.MapAction();
          paramCodedInputStreamMicro.readMessage(localMapAction);
          setMapActionExtension(localMapAction);
          break;
        case 202633794:
          ActionV2Protos.DirectionsAction localDirectionsAction = new ActionV2Protos.DirectionsAction();
          paramCodedInputStreamMicro.readMessage(localDirectionsAction);
          setDirectionsActionExtension(localDirectionsAction);
          break;
        case 203290290:
          ActionV2Protos.AddCalendarEventAction localAddCalendarEventAction = new ActionV2Protos.AddCalendarEventAction();
          paramCodedInputStreamMicro.readMessage(localAddCalendarEventAction);
          setAddCalendarEventActionExtension(localAddCalendarEventAction);
          break;
        case 203395434:
          ActionV2Protos.ShowCalendarEventAction localShowCalendarEventAction = new ActionV2Protos.ShowCalendarEventAction();
          paramCodedInputStreamMicro.readMessage(localShowCalendarEventAction);
          setShowCalendarEventActionExtension(localShowCalendarEventAction);
          break;
        case 203466410:
          ActionV2Protos.PhoneAction localPhoneAction = new ActionV2Protos.PhoneAction();
          paramCodedInputStreamMicro.readMessage(localPhoneAction);
          setPhoneActionExtension(localPhoneAction);
          break;
        case 203466634:
          ActionV2Protos.SMSAction localSMSAction = new ActionV2Protos.SMSAction();
          paramCodedInputStreamMicro.readMessage(localSMSAction);
          setSMSActionExtension(localSMSAction);
          break;
        case 203469138:
          ActionV2Protos.OpenApplicationAction localOpenApplicationAction = new ActionV2Protos.OpenApplicationAction();
          paramCodedInputStreamMicro.readMessage(localOpenApplicationAction);
          setOpenApplicationActionExtension(localOpenApplicationAction);
          break;
        case 203472618:
          ActionV2Protos.PlayMediaAction localPlayMediaAction = new ActionV2Protos.PlayMediaAction();
          paramCodedInputStreamMicro.readMessage(localPlayMediaAction);
          setPlayMediaActionExtension(localPlayMediaAction);
          break;
        case 203506938:
          ActionV2Protos.OpenURLAction localOpenURLAction = new ActionV2Protos.OpenURLAction();
          paramCodedInputStreamMicro.readMessage(localOpenURLAction);
          setOpenURLActionExtension(localOpenURLAction);
          break;
        case 203528154:
          ActionV2Protos.SelfNoteAction localSelfNoteAction = new ActionV2Protos.SelfNoteAction();
          paramCodedInputStreamMicro.readMessage(localSelfNoteAction);
          setSelfNoteActionExtension(localSelfNoteAction);
          break;
        case 203617610:
          ActionV2Protos.UpdateSocialNetworkAction localUpdateSocialNetworkAction = new ActionV2Protos.UpdateSocialNetworkAction();
          paramCodedInputStreamMicro.readMessage(localUpdateSocialNetworkAction);
          setUpdateSocialNetworkActionExtension(localUpdateSocialNetworkAction);
          break;
        case 203878930:
          ActionV2Protos.SetAlarmAction localSetAlarmAction = new ActionV2Protos.SetAlarmAction();
          paramCodedInputStreamMicro.readMessage(localSetAlarmAction);
          setSetAlarmActionExtension(localSetAlarmAction);
          break;
        case 209502618:
          ActionV2Protos.EmailAction localEmailAction = new ActionV2Protos.EmailAction();
          paramCodedInputStreamMicro.readMessage(localEmailAction);
          setEmailActionExtension(localEmailAction);
          break;
        case 210743810:
          ActionV2Protos.CallBusinessAction localCallBusinessAction = new ActionV2Protos.CallBusinessAction();
          paramCodedInputStreamMicro.readMessage(localCallBusinessAction);
          setCallBusinessActionExtension(localCallBusinessAction);
          break;
        case 226664378:
          ActionV2Protos.HelpAction localHelpAction = new ActionV2Protos.HelpAction();
          paramCodedInputStreamMicro.readMessage(localHelpAction);
          setHelpActionExtension(localHelpAction);
          break;
        case 229207594:
          ActionV2Protos.GetTrafficConditions localGetTrafficConditions = new ActionV2Protos.GetTrafficConditions();
          paramCodedInputStreamMicro.readMessage(localGetTrafficConditions);
          setGetTrafficConditionsExtension(localGetTrafficConditions);
          break;
        case 229674106:
          ActionV2Protos.ShowStreetView localShowStreetView = new ActionV2Protos.ShowStreetView();
          paramCodedInputStreamMicro.readMessage(localShowStreetView);
          setShowStreetViewExtension(localShowStreetView);
          break;
        case 229739410:
          ActionV2Protos.UnsupportedAction localUnsupportedAction = new ActionV2Protos.UnsupportedAction();
          paramCodedInputStreamMicro.readMessage(localUnsupportedAction);
          setUnsupportedActionExtension(localUnsupportedAction);
          break;
        case 231590122:
          ActionV2Protos.AtHomePowerControlAction localAtHomePowerControlAction = new ActionV2Protos.AtHomePowerControlAction();
          paramCodedInputStreamMicro.readMessage(localAtHomePowerControlAction);
          setAtHomePowerControlActionExtension(localAtHomePowerControlAction);
          break;
        case 273212650:
          ActionV2Protos.SoundSearchAction localSoundSearchAction = new ActionV2Protos.SoundSearchAction();
          paramCodedInputStreamMicro.readMessage(localSoundSearchAction);
          setSoundSearchActionExtension(localSoundSearchAction);
          break;
        case 288709786:
          ActionV2Protos.ShowContactInformationAction localShowContactInformationAction = new ActionV2Protos.ShowContactInformationAction();
          paramCodedInputStreamMicro.readMessage(localShowContactInformationAction);
          setShowContactInformationActionExtension(localShowContactInformationAction);
          break;
        case 300221818:
          ActionV2 localActionV2 = new ActionV2();
          paramCodedInputStreamMicro.readMessage(localActionV2);
          setActionV2Extension(localActionV2);
          break;
        case 300385834:
          ActionV2Protos.GogglesAction localGogglesAction = new ActionV2Protos.GogglesAction();
          paramCodedInputStreamMicro.readMessage(localGogglesAction);
          setGogglesActionExtension(localGogglesAction);
          break;
        case 337113986:
        }
        ActionV2Protos.AddReminderAction localAddReminderAction = new ActionV2Protos.AddReminderAction();
        paramCodedInputStreamMicro.readMessage(localAddReminderAction);
        setAddReminderActionExtension(localAddReminderAction);
      }
    }

    public ActionV2 setActionV2Extension(ActionV2 paramActionV2)
    {
      if (paramActionV2 == null)
        throw new NullPointerException();
      this.hasActionV2Extension = true;
      this.actionV2Extension_ = paramActionV2;
      return this;
    }

    public ActionV2 setAddCalendarEventActionExtension(ActionV2Protos.AddCalendarEventAction paramAddCalendarEventAction)
    {
      if (paramAddCalendarEventAction == null)
        throw new NullPointerException();
      this.hasAddCalendarEventActionExtension = true;
      this.addCalendarEventActionExtension_ = paramAddCalendarEventAction;
      return this;
    }

    public ActionV2 setAddReminderActionExtension(ActionV2Protos.AddReminderAction paramAddReminderAction)
    {
      if (paramAddReminderAction == null)
        throw new NullPointerException();
      this.hasAddReminderActionExtension = true;
      this.addReminderActionExtension_ = paramAddReminderAction;
      return this;
    }

    public ActionV2 setAtHomePowerControlActionExtension(ActionV2Protos.AtHomePowerControlAction paramAtHomePowerControlAction)
    {
      if (paramAtHomePowerControlAction == null)
        throw new NullPointerException();
      this.hasAtHomePowerControlActionExtension = true;
      this.atHomePowerControlActionExtension_ = paramAtHomePowerControlAction;
      return this;
    }

    public ActionV2 setCallBusinessActionExtension(ActionV2Protos.CallBusinessAction paramCallBusinessAction)
    {
      if (paramCallBusinessAction == null)
        throw new NullPointerException();
      this.hasCallBusinessActionExtension = true;
      this.callBusinessActionExtension_ = paramCallBusinessAction;
      return this;
    }

    public ActionV2 setDirectionsActionExtension(ActionV2Protos.DirectionsAction paramDirectionsAction)
    {
      if (paramDirectionsAction == null)
        throw new NullPointerException();
      this.hasDirectionsActionExtension = true;
      this.directionsActionExtension_ = paramDirectionsAction;
      return this;
    }

    public ActionV2 setEmailActionExtension(ActionV2Protos.EmailAction paramEmailAction)
    {
      if (paramEmailAction == null)
        throw new NullPointerException();
      this.hasEmailActionExtension = true;
      this.emailActionExtension_ = paramEmailAction;
      return this;
    }

    public ActionV2 setExecute(boolean paramBoolean)
    {
      this.hasExecute = true;
      this.execute_ = paramBoolean;
      return this;
    }

    public ActionV2 setFocusedFieldName(String paramString)
    {
      this.hasFocusedFieldName = true;
      this.focusedFieldName_ = paramString;
      return this;
    }

    public ActionV2 setGetTrafficConditionsExtension(ActionV2Protos.GetTrafficConditions paramGetTrafficConditions)
    {
      if (paramGetTrafficConditions == null)
        throw new NullPointerException();
      this.hasGetTrafficConditionsExtension = true;
      this.getTrafficConditionsExtension_ = paramGetTrafficConditions;
      return this;
    }

    public ActionV2 setGogglesActionExtension(ActionV2Protos.GogglesAction paramGogglesAction)
    {
      if (paramGogglesAction == null)
        throw new NullPointerException();
      this.hasGogglesActionExtension = true;
      this.gogglesActionExtension_ = paramGogglesAction;
      return this;
    }

    public ActionV2 setHelpActionExtension(ActionV2Protos.HelpAction paramHelpAction)
    {
      if (paramHelpAction == null)
        throw new NullPointerException();
      this.hasHelpActionExtension = true;
      this.helpActionExtension_ = paramHelpAction;
      return this;
    }

    public ActionV2 setMapActionExtension(ActionV2Protos.MapAction paramMapAction)
    {
      if (paramMapAction == null)
        throw new NullPointerException();
      this.hasMapActionExtension = true;
      this.mapActionExtension_ = paramMapAction;
      return this;
    }

    public ActionV2 setMetadata(ActionV2Protos.ActionV2Metadata paramActionV2Metadata)
    {
      if (paramActionV2Metadata == null)
        throw new NullPointerException();
      this.hasMetadata = true;
      this.metadata_ = paramActionV2Metadata;
      return this;
    }

    public ActionV2 setNavigationActionExtension(ActionV2Protos.NavigationAction paramNavigationAction)
    {
      if (paramNavigationAction == null)
        throw new NullPointerException();
      this.hasNavigationActionExtension = true;
      this.navigationActionExtension_ = paramNavigationAction;
      return this;
    }

    public ActionV2 setOpenApplicationActionExtension(ActionV2Protos.OpenApplicationAction paramOpenApplicationAction)
    {
      if (paramOpenApplicationAction == null)
        throw new NullPointerException();
      this.hasOpenApplicationActionExtension = true;
      this.openApplicationActionExtension_ = paramOpenApplicationAction;
      return this;
    }

    public ActionV2 setOpenURLActionExtension(ActionV2Protos.OpenURLAction paramOpenURLAction)
    {
      if (paramOpenURLAction == null)
        throw new NullPointerException();
      this.hasOpenURLActionExtension = true;
      this.openURLActionExtension_ = paramOpenURLAction;
      return this;
    }

    public ActionV2 setPhoneActionExtension(ActionV2Protos.PhoneAction paramPhoneAction)
    {
      if (paramPhoneAction == null)
        throw new NullPointerException();
      this.hasPhoneActionExtension = true;
      this.phoneActionExtension_ = paramPhoneAction;
      return this;
    }

    public ActionV2 setPlayMediaActionExtension(ActionV2Protos.PlayMediaAction paramPlayMediaAction)
    {
      if (paramPlayMediaAction == null)
        throw new NullPointerException();
      this.hasPlayMediaActionExtension = true;
      this.playMediaActionExtension_ = paramPlayMediaAction;
      return this;
    }

    public ActionV2 setSMSActionExtension(ActionV2Protos.SMSAction paramSMSAction)
    {
      if (paramSMSAction == null)
        throw new NullPointerException();
      this.hasSMSActionExtension = true;
      this.sMSActionExtension_ = paramSMSAction;
      return this;
    }

    public ActionV2 setSelfNoteActionExtension(ActionV2Protos.SelfNoteAction paramSelfNoteAction)
    {
      if (paramSelfNoteAction == null)
        throw new NullPointerException();
      this.hasSelfNoteActionExtension = true;
      this.selfNoteActionExtension_ = paramSelfNoteAction;
      return this;
    }

    public ActionV2 setSetAlarmActionExtension(ActionV2Protos.SetAlarmAction paramSetAlarmAction)
    {
      if (paramSetAlarmAction == null)
        throw new NullPointerException();
      this.hasSetAlarmActionExtension = true;
      this.setAlarmActionExtension_ = paramSetAlarmAction;
      return this;
    }

    public ActionV2 setShowCalendarEventActionExtension(ActionV2Protos.ShowCalendarEventAction paramShowCalendarEventAction)
    {
      if (paramShowCalendarEventAction == null)
        throw new NullPointerException();
      this.hasShowCalendarEventActionExtension = true;
      this.showCalendarEventActionExtension_ = paramShowCalendarEventAction;
      return this;
    }

    public ActionV2 setShowContactInformationActionExtension(ActionV2Protos.ShowContactInformationAction paramShowContactInformationAction)
    {
      if (paramShowContactInformationAction == null)
        throw new NullPointerException();
      this.hasShowContactInformationActionExtension = true;
      this.showContactInformationActionExtension_ = paramShowContactInformationAction;
      return this;
    }

    public ActionV2 setShowStreetViewExtension(ActionV2Protos.ShowStreetView paramShowStreetView)
    {
      if (paramShowStreetView == null)
        throw new NullPointerException();
      this.hasShowStreetViewExtension = true;
      this.showStreetViewExtension_ = paramShowStreetView;
      return this;
    }

    public ActionV2 setSoundSearchActionExtension(ActionV2Protos.SoundSearchAction paramSoundSearchAction)
    {
      if (paramSoundSearchAction == null)
        throw new NullPointerException();
      this.hasSoundSearchActionExtension = true;
      this.soundSearchActionExtension_ = paramSoundSearchAction;
      return this;
    }

    public ActionV2 setSuggestedDelayMs(int paramInt)
    {
      this.hasSuggestedDelayMs = true;
      this.suggestedDelayMs_ = paramInt;
      return this;
    }

    public ActionV2 setUnsupportedActionExtension(ActionV2Protos.UnsupportedAction paramUnsupportedAction)
    {
      if (paramUnsupportedAction == null)
        throw new NullPointerException();
      this.hasUnsupportedActionExtension = true;
      this.unsupportedActionExtension_ = paramUnsupportedAction;
      return this;
    }

    public ActionV2 setUpdateSocialNetworkActionExtension(ActionV2Protos.UpdateSocialNetworkAction paramUpdateSocialNetworkAction)
    {
      if (paramUpdateSocialNetworkAction == null)
        throw new NullPointerException();
      this.hasUpdateSocialNetworkActionExtension = true;
      this.updateSocialNetworkActionExtension_ = paramUpdateSocialNetworkAction;
      return this;
    }

    public void writeTo(CodedOutputStreamMicro paramCodedOutputStreamMicro)
      throws IOException
    {
      if (hasExecute())
        paramCodedOutputStreamMicro.writeBool(1, getExecute());
      if (hasFocusedFieldName())
        paramCodedOutputStreamMicro.writeString(2, getFocusedFieldName());
      if (hasSuggestedDelayMs())
        paramCodedOutputStreamMicro.writeInt32(3, getSuggestedDelayMs());
      if (hasMetadata())
        paramCodedOutputStreamMicro.writeMessage(4, getMetadata());
      if (hasNavigationActionExtension())
        paramCodedOutputStreamMicro.writeMessage(25315474, getNavigationActionExtension());
      if (hasMapActionExtension())
        paramCodedOutputStreamMicro.writeMessage(25315722, getMapActionExtension());
      if (hasDirectionsActionExtension())
        paramCodedOutputStreamMicro.writeMessage(25329224, getDirectionsActionExtension());
      if (hasAddCalendarEventActionExtension())
        paramCodedOutputStreamMicro.writeMessage(25411286, getAddCalendarEventActionExtension());
      if (hasShowCalendarEventActionExtension())
        paramCodedOutputStreamMicro.writeMessage(25424429, getShowCalendarEventActionExtension());
      if (hasPhoneActionExtension())
        paramCodedOutputStreamMicro.writeMessage(25433301, getPhoneActionExtension());
      if (hasSMSActionExtension())
        paramCodedOutputStreamMicro.writeMessage(25433329, getSMSActionExtension());
      if (hasOpenApplicationActionExtension())
        paramCodedOutputStreamMicro.writeMessage(25433642, getOpenApplicationActionExtension());
      if (hasPlayMediaActionExtension())
        paramCodedOutputStreamMicro.writeMessage(25434077, getPlayMediaActionExtension());
      if (hasOpenURLActionExtension())
        paramCodedOutputStreamMicro.writeMessage(25438367, getOpenURLActionExtension());
      if (hasSelfNoteActionExtension())
        paramCodedOutputStreamMicro.writeMessage(25441019, getSelfNoteActionExtension());
      if (hasUpdateSocialNetworkActionExtension())
        paramCodedOutputStreamMicro.writeMessage(25452201, getUpdateSocialNetworkActionExtension());
      if (hasSetAlarmActionExtension())
        paramCodedOutputStreamMicro.writeMessage(25484866, getSetAlarmActionExtension());
      if (hasEmailActionExtension())
        paramCodedOutputStreamMicro.writeMessage(26187827, getEmailActionExtension());
      if (hasCallBusinessActionExtension())
        paramCodedOutputStreamMicro.writeMessage(26342976, getCallBusinessActionExtension());
      if (hasHelpActionExtension())
        paramCodedOutputStreamMicro.writeMessage(28333047, getHelpActionExtension());
      if (hasGetTrafficConditionsExtension())
        paramCodedOutputStreamMicro.writeMessage(28650949, getGetTrafficConditionsExtension());
      if (hasShowStreetViewExtension())
        paramCodedOutputStreamMicro.writeMessage(28709263, getShowStreetViewExtension());
      if (hasUnsupportedActionExtension())
        paramCodedOutputStreamMicro.writeMessage(28717426, getUnsupportedActionExtension());
      if (hasAtHomePowerControlActionExtension())
        paramCodedOutputStreamMicro.writeMessage(28948765, getAtHomePowerControlActionExtension());
      if (hasSoundSearchActionExtension())
        paramCodedOutputStreamMicro.writeMessage(34151581, getSoundSearchActionExtension());
      if (hasShowContactInformationActionExtension())
        paramCodedOutputStreamMicro.writeMessage(36088723, getShowContactInformationActionExtension());
      if (hasActionV2Extension())
        paramCodedOutputStreamMicro.writeMessage(37527727, getActionV2Extension());
      if (hasGogglesActionExtension())
        paramCodedOutputStreamMicro.writeMessage(37548229, getGogglesActionExtension());
      if (hasAddReminderActionExtension())
        paramCodedOutputStreamMicro.writeMessage(42139248, getAddReminderActionExtension());
    }
  }

  public static final class ActionV2Metadata extends MessageMicro
  {
    public static final int ACTION_TYPE_FIELD_NUMBER = 1;
    public static final int PARSED_ACTION_TYPE_FIELD_NUMBER = 2;
    private int actionType_ = 1;
    private int cachedSize = -1;
    private boolean hasActionType;
    private boolean hasParsedActionType;
    private int parsedActionType_ = 1;

    public static ActionV2Metadata parseFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
      throws IOException
    {
      return new ActionV2Metadata().mergeFrom(paramCodedInputStreamMicro);
    }

    public static ActionV2Metadata parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferMicroException
    {
      return (ActionV2Metadata)new ActionV2Metadata().mergeFrom(paramArrayOfByte);
    }

    public final ActionV2Metadata clear()
    {
      clearActionType();
      clearParsedActionType();
      this.cachedSize = -1;
      return this;
    }

    public ActionV2Metadata clearActionType()
    {
      this.hasActionType = false;
      this.actionType_ = 1;
      return this;
    }

    public ActionV2Metadata clearParsedActionType()
    {
      this.hasParsedActionType = false;
      this.parsedActionType_ = 1;
      return this;
    }

    public int getActionType()
    {
      return this.actionType_;
    }

    public int getCachedSize()
    {
      if (this.cachedSize < 0)
        getSerializedSize();
      return this.cachedSize;
    }

    public int getParsedActionType()
    {
      return this.parsedActionType_;
    }

    public int getSerializedSize()
    {
      boolean bool = hasActionType();
      int i = 0;
      if (bool)
        i = 0 + CodedOutputStreamMicro.computeInt32Size(1, getActionType());
      if (hasParsedActionType())
        i += CodedOutputStreamMicro.computeInt32Size(2, getParsedActionType());
      this.cachedSize = i;
      return i;
    }

    public boolean hasActionType()
    {
      return this.hasActionType;
    }

    public boolean hasParsedActionType()
    {
      return this.hasParsedActionType;
    }

    public final boolean isInitialized()
    {
      return true;
    }

    public ActionV2Metadata mergeFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
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
          setActionType(paramCodedInputStreamMicro.readInt32());
          break;
        case 16:
        }
        setParsedActionType(paramCodedInputStreamMicro.readInt32());
      }
    }

    public ActionV2Metadata setActionType(int paramInt)
    {
      this.hasActionType = true;
      this.actionType_ = paramInt;
      return this;
    }

    public ActionV2Metadata setParsedActionType(int paramInt)
    {
      this.hasParsedActionType = true;
      this.parsedActionType_ = paramInt;
      return this;
    }

    public void writeTo(CodedOutputStreamMicro paramCodedOutputStreamMicro)
      throws IOException
    {
      if (hasActionType())
        paramCodedOutputStreamMicro.writeInt32(1, getActionType());
      if (hasParsedActionType())
        paramCodedOutputStreamMicro.writeInt32(2, getParsedActionType());
    }
  }

  public static final class AddCalendarEventAction extends MessageMicro
  {
    public static final int CALENDAR_EVENT_FIELD_NUMBER = 1;
    private int cachedSize = -1;
    private CalendarProtos.CalendarEvent calendarEvent_ = null;
    private boolean hasCalendarEvent;

    public static AddCalendarEventAction parseFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
      throws IOException
    {
      return new AddCalendarEventAction().mergeFrom(paramCodedInputStreamMicro);
    }

    public static AddCalendarEventAction parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferMicroException
    {
      return (AddCalendarEventAction)new AddCalendarEventAction().mergeFrom(paramArrayOfByte);
    }

    public final AddCalendarEventAction clear()
    {
      clearCalendarEvent();
      this.cachedSize = -1;
      return this;
    }

    public AddCalendarEventAction clearCalendarEvent()
    {
      this.hasCalendarEvent = false;
      this.calendarEvent_ = null;
      return this;
    }

    public int getCachedSize()
    {
      if (this.cachedSize < 0)
        getSerializedSize();
      return this.cachedSize;
    }

    public CalendarProtos.CalendarEvent getCalendarEvent()
    {
      return this.calendarEvent_;
    }

    public int getSerializedSize()
    {
      boolean bool = hasCalendarEvent();
      int i = 0;
      if (bool)
        i = 0 + CodedOutputStreamMicro.computeMessageSize(1, getCalendarEvent());
      this.cachedSize = i;
      return i;
    }

    public boolean hasCalendarEvent()
    {
      return this.hasCalendarEvent;
    }

    public final boolean isInitialized()
    {
      return true;
    }

    public AddCalendarEventAction mergeFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
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
        CalendarProtos.CalendarEvent localCalendarEvent = new CalendarProtos.CalendarEvent();
        paramCodedInputStreamMicro.readMessage(localCalendarEvent);
        setCalendarEvent(localCalendarEvent);
      }
    }

    public AddCalendarEventAction setCalendarEvent(CalendarProtos.CalendarEvent paramCalendarEvent)
    {
      if (paramCalendarEvent == null)
        throw new NullPointerException();
      this.hasCalendarEvent = true;
      this.calendarEvent_ = paramCalendarEvent;
      return this;
    }

    public void writeTo(CodedOutputStreamMicro paramCodedOutputStreamMicro)
      throws IOException
    {
      if (hasCalendarEvent())
        paramCodedOutputStreamMicro.writeMessage(1, getCalendarEvent());
    }
  }

  public static final class AddReminderAction extends MessageMicro
  {
    public static final int ABSOLUTE_TIME_TRIGGER_FIELD_NUMBER = 3;
    public static final int CONFIRMATION_URL_PATH_FIELD_NUMBER = 5;
    public static final int LABEL_FIELD_NUMBER = 1;
    public static final int LABEL_SPAN_FIELD_NUMBER = 2;
    public static final int LOCATION_TRIGGER_FIELD_NUMBER = 4;
    private ActionV2Protos.AbsoluteTimeTrigger absoluteTimeTrigger_ = null;
    private int cachedSize = -1;
    private String confirmationUrlPath_ = "";
    private boolean hasAbsoluteTimeTrigger;
    private boolean hasConfirmationUrlPath;
    private boolean hasLabel;
    private boolean hasLabelSpan;
    private boolean hasLocationTrigger;
    private SpanProtos.Span labelSpan_ = null;
    private String label_ = "";
    private ActionV2Protos.LocationTrigger locationTrigger_ = null;

    public static AddReminderAction parseFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
      throws IOException
    {
      return new AddReminderAction().mergeFrom(paramCodedInputStreamMicro);
    }

    public static AddReminderAction parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferMicroException
    {
      return (AddReminderAction)new AddReminderAction().mergeFrom(paramArrayOfByte);
    }

    public final AddReminderAction clear()
    {
      clearLabel();
      clearLabelSpan();
      clearAbsoluteTimeTrigger();
      clearLocationTrigger();
      clearConfirmationUrlPath();
      this.cachedSize = -1;
      return this;
    }

    public AddReminderAction clearAbsoluteTimeTrigger()
    {
      this.hasAbsoluteTimeTrigger = false;
      this.absoluteTimeTrigger_ = null;
      return this;
    }

    public AddReminderAction clearConfirmationUrlPath()
    {
      this.hasConfirmationUrlPath = false;
      this.confirmationUrlPath_ = "";
      return this;
    }

    public AddReminderAction clearLabel()
    {
      this.hasLabel = false;
      this.label_ = "";
      return this;
    }

    public AddReminderAction clearLabelSpan()
    {
      this.hasLabelSpan = false;
      this.labelSpan_ = null;
      return this;
    }

    public AddReminderAction clearLocationTrigger()
    {
      this.hasLocationTrigger = false;
      this.locationTrigger_ = null;
      return this;
    }

    public ActionV2Protos.AbsoluteTimeTrigger getAbsoluteTimeTrigger()
    {
      return this.absoluteTimeTrigger_;
    }

    public int getCachedSize()
    {
      if (this.cachedSize < 0)
        getSerializedSize();
      return this.cachedSize;
    }

    public String getConfirmationUrlPath()
    {
      return this.confirmationUrlPath_;
    }

    public String getLabel()
    {
      return this.label_;
    }

    public SpanProtos.Span getLabelSpan()
    {
      return this.labelSpan_;
    }

    public ActionV2Protos.LocationTrigger getLocationTrigger()
    {
      return this.locationTrigger_;
    }

    public int getSerializedSize()
    {
      boolean bool = hasLabel();
      int i = 0;
      if (bool)
        i = 0 + CodedOutputStreamMicro.computeStringSize(1, getLabel());
      if (hasLabelSpan())
        i += CodedOutputStreamMicro.computeMessageSize(2, getLabelSpan());
      if (hasAbsoluteTimeTrigger())
        i += CodedOutputStreamMicro.computeMessageSize(3, getAbsoluteTimeTrigger());
      if (hasLocationTrigger())
        i += CodedOutputStreamMicro.computeMessageSize(4, getLocationTrigger());
      if (hasConfirmationUrlPath())
        i += CodedOutputStreamMicro.computeStringSize(5, getConfirmationUrlPath());
      this.cachedSize = i;
      return i;
    }

    public boolean hasAbsoluteTimeTrigger()
    {
      return this.hasAbsoluteTimeTrigger;
    }

    public boolean hasConfirmationUrlPath()
    {
      return this.hasConfirmationUrlPath;
    }

    public boolean hasLabel()
    {
      return this.hasLabel;
    }

    public boolean hasLabelSpan()
    {
      return this.hasLabelSpan;
    }

    public boolean hasLocationTrigger()
    {
      return this.hasLocationTrigger;
    }

    public final boolean isInitialized()
    {
      return true;
    }

    public AddReminderAction mergeFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
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
          setLabel(paramCodedInputStreamMicro.readString());
          break;
        case 18:
          SpanProtos.Span localSpan = new SpanProtos.Span();
          paramCodedInputStreamMicro.readMessage(localSpan);
          setLabelSpan(localSpan);
          break;
        case 26:
          ActionV2Protos.AbsoluteTimeTrigger localAbsoluteTimeTrigger = new ActionV2Protos.AbsoluteTimeTrigger();
          paramCodedInputStreamMicro.readMessage(localAbsoluteTimeTrigger);
          setAbsoluteTimeTrigger(localAbsoluteTimeTrigger);
          break;
        case 34:
          ActionV2Protos.LocationTrigger localLocationTrigger = new ActionV2Protos.LocationTrigger();
          paramCodedInputStreamMicro.readMessage(localLocationTrigger);
          setLocationTrigger(localLocationTrigger);
          break;
        case 42:
        }
        setConfirmationUrlPath(paramCodedInputStreamMicro.readString());
      }
    }

    public AddReminderAction setAbsoluteTimeTrigger(ActionV2Protos.AbsoluteTimeTrigger paramAbsoluteTimeTrigger)
    {
      if (paramAbsoluteTimeTrigger == null)
        throw new NullPointerException();
      this.hasAbsoluteTimeTrigger = true;
      this.absoluteTimeTrigger_ = paramAbsoluteTimeTrigger;
      return this;
    }

    public AddReminderAction setConfirmationUrlPath(String paramString)
    {
      this.hasConfirmationUrlPath = true;
      this.confirmationUrlPath_ = paramString;
      return this;
    }

    public AddReminderAction setLabel(String paramString)
    {
      this.hasLabel = true;
      this.label_ = paramString;
      return this;
    }

    public AddReminderAction setLabelSpan(SpanProtos.Span paramSpan)
    {
      if (paramSpan == null)
        throw new NullPointerException();
      this.hasLabelSpan = true;
      this.labelSpan_ = paramSpan;
      return this;
    }

    public AddReminderAction setLocationTrigger(ActionV2Protos.LocationTrigger paramLocationTrigger)
    {
      if (paramLocationTrigger == null)
        throw new NullPointerException();
      this.hasLocationTrigger = true;
      this.locationTrigger_ = paramLocationTrigger;
      return this;
    }

    public void writeTo(CodedOutputStreamMicro paramCodedOutputStreamMicro)
      throws IOException
    {
      if (hasLabel())
        paramCodedOutputStreamMicro.writeString(1, getLabel());
      if (hasLabelSpan())
        paramCodedOutputStreamMicro.writeMessage(2, getLabelSpan());
      if (hasAbsoluteTimeTrigger())
        paramCodedOutputStreamMicro.writeMessage(3, getAbsoluteTimeTrigger());
      if (hasLocationTrigger())
        paramCodedOutputStreamMicro.writeMessage(4, getLocationTrigger());
      if (hasConfirmationUrlPath())
        paramCodedOutputStreamMicro.writeString(5, getConfirmationUrlPath());
    }
  }

  public static final class AtHomePowerControlAction extends MessageMicro
  {
    public static final int LEVEL_FIELD_NUMBER = 1;
    public static final int TARGET_FIELD_NUMBER = 2;
    private int cachedSize = -1;
    private boolean hasLevel;
    private boolean hasTarget;
    private int level_ = 0;
    private String target_ = "";

    public static AtHomePowerControlAction parseFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
      throws IOException
    {
      return new AtHomePowerControlAction().mergeFrom(paramCodedInputStreamMicro);
    }

    public static AtHomePowerControlAction parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferMicroException
    {
      return (AtHomePowerControlAction)new AtHomePowerControlAction().mergeFrom(paramArrayOfByte);
    }

    public final AtHomePowerControlAction clear()
    {
      clearLevel();
      clearTarget();
      this.cachedSize = -1;
      return this;
    }

    public AtHomePowerControlAction clearLevel()
    {
      this.hasLevel = false;
      this.level_ = 0;
      return this;
    }

    public AtHomePowerControlAction clearTarget()
    {
      this.hasTarget = false;
      this.target_ = "";
      return this;
    }

    public int getCachedSize()
    {
      if (this.cachedSize < 0)
        getSerializedSize();
      return this.cachedSize;
    }

    public int getLevel()
    {
      return this.level_;
    }

    public int getSerializedSize()
    {
      boolean bool = hasLevel();
      int i = 0;
      if (bool)
        i = 0 + CodedOutputStreamMicro.computeInt32Size(1, getLevel());
      if (hasTarget())
        i += CodedOutputStreamMicro.computeStringSize(2, getTarget());
      this.cachedSize = i;
      return i;
    }

    public String getTarget()
    {
      return this.target_;
    }

    public boolean hasLevel()
    {
      return this.hasLevel;
    }

    public boolean hasTarget()
    {
      return this.hasTarget;
    }

    public final boolean isInitialized()
    {
      return true;
    }

    public AtHomePowerControlAction mergeFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
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
          setLevel(paramCodedInputStreamMicro.readInt32());
          break;
        case 18:
        }
        setTarget(paramCodedInputStreamMicro.readString());
      }
    }

    public AtHomePowerControlAction setLevel(int paramInt)
    {
      this.hasLevel = true;
      this.level_ = paramInt;
      return this;
    }

    public AtHomePowerControlAction setTarget(String paramString)
    {
      this.hasTarget = true;
      this.target_ = paramString;
      return this;
    }

    public void writeTo(CodedOutputStreamMicro paramCodedOutputStreamMicro)
      throws IOException
    {
      if (hasLevel())
        paramCodedOutputStreamMicro.writeInt32(1, getLevel());
      if (hasTarget())
        paramCodedOutputStreamMicro.writeString(2, getTarget());
    }
  }

  public static final class CallBusinessAction extends MessageMicro
  {
    public static final int BUSINESS_LOCATION_FIELD_NUMBER = 4;
    public static final int BUSINESS_NAME_FIELD_NUMBER = 1;
    public static final int DEPRECATED_BUSINESS_ADDRESS_FIELD_NUMBER = 2;
    public static final int PHONE_NUMBER_FIELD_NUMBER = 3;
    public static final int PREVIEW_IMAGE_URL_FIELD_NUMBER = 5;
    private ActionV2Protos.Location businessLocation_ = null;
    private String businessName_ = "";
    private int cachedSize = -1;
    private String dEPRECATEDBusinessAddress_ = "";
    private boolean hasBusinessLocation;
    private boolean hasBusinessName;
    private boolean hasDEPRECATEDBusinessAddress;
    private boolean hasPhoneNumber;
    private boolean hasPreviewImageUrl;
    private ActionV2Protos.ContactPhoneNumber phoneNumber_ = null;
    private String previewImageUrl_ = "";

    public static CallBusinessAction parseFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
      throws IOException
    {
      return new CallBusinessAction().mergeFrom(paramCodedInputStreamMicro);
    }

    public static CallBusinessAction parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferMicroException
    {
      return (CallBusinessAction)new CallBusinessAction().mergeFrom(paramArrayOfByte);
    }

    public final CallBusinessAction clear()
    {
      clearBusinessName();
      clearDEPRECATEDBusinessAddress();
      clearPhoneNumber();
      clearBusinessLocation();
      clearPreviewImageUrl();
      this.cachedSize = -1;
      return this;
    }

    public CallBusinessAction clearBusinessLocation()
    {
      this.hasBusinessLocation = false;
      this.businessLocation_ = null;
      return this;
    }

    public CallBusinessAction clearBusinessName()
    {
      this.hasBusinessName = false;
      this.businessName_ = "";
      return this;
    }

    public CallBusinessAction clearDEPRECATEDBusinessAddress()
    {
      this.hasDEPRECATEDBusinessAddress = false;
      this.dEPRECATEDBusinessAddress_ = "";
      return this;
    }

    public CallBusinessAction clearPhoneNumber()
    {
      this.hasPhoneNumber = false;
      this.phoneNumber_ = null;
      return this;
    }

    public CallBusinessAction clearPreviewImageUrl()
    {
      this.hasPreviewImageUrl = false;
      this.previewImageUrl_ = "";
      return this;
    }

    public ActionV2Protos.Location getBusinessLocation()
    {
      return this.businessLocation_;
    }

    public String getBusinessName()
    {
      return this.businessName_;
    }

    public int getCachedSize()
    {
      if (this.cachedSize < 0)
        getSerializedSize();
      return this.cachedSize;
    }

    public String getDEPRECATEDBusinessAddress()
    {
      return this.dEPRECATEDBusinessAddress_;
    }

    public ActionV2Protos.ContactPhoneNumber getPhoneNumber()
    {
      return this.phoneNumber_;
    }

    public String getPreviewImageUrl()
    {
      return this.previewImageUrl_;
    }

    public int getSerializedSize()
    {
      boolean bool = hasBusinessName();
      int i = 0;
      if (bool)
        i = 0 + CodedOutputStreamMicro.computeStringSize(1, getBusinessName());
      if (hasDEPRECATEDBusinessAddress())
        i += CodedOutputStreamMicro.computeStringSize(2, getDEPRECATEDBusinessAddress());
      if (hasPhoneNumber())
        i += CodedOutputStreamMicro.computeMessageSize(3, getPhoneNumber());
      if (hasBusinessLocation())
        i += CodedOutputStreamMicro.computeMessageSize(4, getBusinessLocation());
      if (hasPreviewImageUrl())
        i += CodedOutputStreamMicro.computeStringSize(5, getPreviewImageUrl());
      this.cachedSize = i;
      return i;
    }

    public boolean hasBusinessLocation()
    {
      return this.hasBusinessLocation;
    }

    public boolean hasBusinessName()
    {
      return this.hasBusinessName;
    }

    public boolean hasDEPRECATEDBusinessAddress()
    {
      return this.hasDEPRECATEDBusinessAddress;
    }

    public boolean hasPhoneNumber()
    {
      return this.hasPhoneNumber;
    }

    public boolean hasPreviewImageUrl()
    {
      return this.hasPreviewImageUrl;
    }

    public final boolean isInitialized()
    {
      return true;
    }

    public CallBusinessAction mergeFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
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
          setBusinessName(paramCodedInputStreamMicro.readString());
          break;
        case 18:
          setDEPRECATEDBusinessAddress(paramCodedInputStreamMicro.readString());
          break;
        case 26:
          ActionV2Protos.ContactPhoneNumber localContactPhoneNumber = new ActionV2Protos.ContactPhoneNumber();
          paramCodedInputStreamMicro.readMessage(localContactPhoneNumber);
          setPhoneNumber(localContactPhoneNumber);
          break;
        case 34:
          ActionV2Protos.Location localLocation = new ActionV2Protos.Location();
          paramCodedInputStreamMicro.readMessage(localLocation);
          setBusinessLocation(localLocation);
          break;
        case 42:
        }
        setPreviewImageUrl(paramCodedInputStreamMicro.readString());
      }
    }

    public CallBusinessAction setBusinessLocation(ActionV2Protos.Location paramLocation)
    {
      if (paramLocation == null)
        throw new NullPointerException();
      this.hasBusinessLocation = true;
      this.businessLocation_ = paramLocation;
      return this;
    }

    public CallBusinessAction setBusinessName(String paramString)
    {
      this.hasBusinessName = true;
      this.businessName_ = paramString;
      return this;
    }

    public CallBusinessAction setDEPRECATEDBusinessAddress(String paramString)
    {
      this.hasDEPRECATEDBusinessAddress = true;
      this.dEPRECATEDBusinessAddress_ = paramString;
      return this;
    }

    public CallBusinessAction setPhoneNumber(ActionV2Protos.ContactPhoneNumber paramContactPhoneNumber)
    {
      if (paramContactPhoneNumber == null)
        throw new NullPointerException();
      this.hasPhoneNumber = true;
      this.phoneNumber_ = paramContactPhoneNumber;
      return this;
    }

    public CallBusinessAction setPreviewImageUrl(String paramString)
    {
      this.hasPreviewImageUrl = true;
      this.previewImageUrl_ = paramString;
      return this;
    }

    public void writeTo(CodedOutputStreamMicro paramCodedOutputStreamMicro)
      throws IOException
    {
      if (hasBusinessName())
        paramCodedOutputStreamMicro.writeString(1, getBusinessName());
      if (hasDEPRECATEDBusinessAddress())
        paramCodedOutputStreamMicro.writeString(2, getDEPRECATEDBusinessAddress());
      if (hasPhoneNumber())
        paramCodedOutputStreamMicro.writeMessage(3, getPhoneNumber());
      if (hasBusinessLocation())
        paramCodedOutputStreamMicro.writeMessage(4, getBusinessLocation());
      if (hasPreviewImageUrl())
        paramCodedOutputStreamMicro.writeString(5, getPreviewImageUrl());
    }
  }

  public static final class ContactEmail extends MessageMicro
  {
    public static final int ADDRESS_FIELD_NUMBER = 1;
    public static final int TYPE_FIELD_NUMBER = 2;
    private String address_ = "";
    private int cachedSize = -1;
    private boolean hasAddress;
    private boolean hasType;
    private String type_ = "";

    public static ContactEmail parseFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
      throws IOException
    {
      return new ContactEmail().mergeFrom(paramCodedInputStreamMicro);
    }

    public static ContactEmail parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferMicroException
    {
      return (ContactEmail)new ContactEmail().mergeFrom(paramArrayOfByte);
    }

    public final ContactEmail clear()
    {
      clearAddress();
      clearType();
      this.cachedSize = -1;
      return this;
    }

    public ContactEmail clearAddress()
    {
      this.hasAddress = false;
      this.address_ = "";
      return this;
    }

    public ContactEmail clearType()
    {
      this.hasType = false;
      this.type_ = "";
      return this;
    }

    public String getAddress()
    {
      return this.address_;
    }

    public int getCachedSize()
    {
      if (this.cachedSize < 0)
        getSerializedSize();
      return this.cachedSize;
    }

    public int getSerializedSize()
    {
      boolean bool = hasAddress();
      int i = 0;
      if (bool)
        i = 0 + CodedOutputStreamMicro.computeStringSize(1, getAddress());
      if (hasType())
        i += CodedOutputStreamMicro.computeStringSize(2, getType());
      this.cachedSize = i;
      return i;
    }

    public String getType()
    {
      return this.type_;
    }

    public boolean hasAddress()
    {
      return this.hasAddress;
    }

    public boolean hasType()
    {
      return this.hasType;
    }

    public final boolean isInitialized()
    {
      return true;
    }

    public ContactEmail mergeFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
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
          setAddress(paramCodedInputStreamMicro.readString());
          break;
        case 18:
        }
        setType(paramCodedInputStreamMicro.readString());
      }
    }

    public ContactEmail setAddress(String paramString)
    {
      this.hasAddress = true;
      this.address_ = paramString;
      return this;
    }

    public ContactEmail setType(String paramString)
    {
      this.hasType = true;
      this.type_ = paramString;
      return this;
    }

    public void writeTo(CodedOutputStreamMicro paramCodedOutputStreamMicro)
      throws IOException
    {
      if (hasAddress())
        paramCodedOutputStreamMicro.writeString(1, getAddress());
      if (hasType())
        paramCodedOutputStreamMicro.writeString(2, getType());
    }
  }

  public static final class ContactPhoneNumber extends MessageMicro
  {
    public static final int DEPRECATED_DIGIT_FIELD_NUMBER = 1;
    public static final int NUMBER_FIELD_NUMBER = 3;
    public static final int TYPE_FIELD_NUMBER = 2;
    private int cachedSize = -1;
    private List<Integer> dEPRECATEDDigit_ = Collections.emptyList();
    private boolean hasNumber;
    private boolean hasType;
    private String number_ = "";
    private String type_ = "";

    public static ContactPhoneNumber parseFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
      throws IOException
    {
      return new ContactPhoneNumber().mergeFrom(paramCodedInputStreamMicro);
    }

    public static ContactPhoneNumber parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferMicroException
    {
      return (ContactPhoneNumber)new ContactPhoneNumber().mergeFrom(paramArrayOfByte);
    }

    public ContactPhoneNumber addDEPRECATEDDigit(int paramInt)
    {
      if (this.dEPRECATEDDigit_.isEmpty())
        this.dEPRECATEDDigit_ = new ArrayList();
      this.dEPRECATEDDigit_.add(Integer.valueOf(paramInt));
      return this;
    }

    public final ContactPhoneNumber clear()
    {
      clearDEPRECATEDDigit();
      clearNumber();
      clearType();
      this.cachedSize = -1;
      return this;
    }

    public ContactPhoneNumber clearDEPRECATEDDigit()
    {
      this.dEPRECATEDDigit_ = Collections.emptyList();
      return this;
    }

    public ContactPhoneNumber clearNumber()
    {
      this.hasNumber = false;
      this.number_ = "";
      return this;
    }

    public ContactPhoneNumber clearType()
    {
      this.hasType = false;
      this.type_ = "";
      return this;
    }

    public int getCachedSize()
    {
      if (this.cachedSize < 0)
        getSerializedSize();
      return this.cachedSize;
    }

    public int getDEPRECATEDDigit(int paramInt)
    {
      return ((Integer)this.dEPRECATEDDigit_.get(paramInt)).intValue();
    }

    public int getDEPRECATEDDigitCount()
    {
      return this.dEPRECATEDDigit_.size();
    }

    public List<Integer> getDEPRECATEDDigitList()
    {
      return this.dEPRECATEDDigit_;
    }

    public String getNumber()
    {
      return this.number_;
    }

    public int getSerializedSize()
    {
      int i = 0;
      Iterator localIterator = getDEPRECATEDDigitList().iterator();
      while (localIterator.hasNext())
        i += CodedOutputStreamMicro.computeInt32SizeNoTag(((Integer)localIterator.next()).intValue());
      int j = 0 + i + 1 * getDEPRECATEDDigitList().size();
      if (hasType())
        j += CodedOutputStreamMicro.computeStringSize(2, getType());
      if (hasNumber())
        j += CodedOutputStreamMicro.computeStringSize(3, getNumber());
      this.cachedSize = j;
      return j;
    }

    public String getType()
    {
      return this.type_;
    }

    public boolean hasNumber()
    {
      return this.hasNumber;
    }

    public boolean hasType()
    {
      return this.hasType;
    }

    public final boolean isInitialized()
    {
      return true;
    }

    public ContactPhoneNumber mergeFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
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
          addDEPRECATEDDigit(paramCodedInputStreamMicro.readInt32());
          break;
        case 18:
          setType(paramCodedInputStreamMicro.readString());
          break;
        case 26:
        }
        setNumber(paramCodedInputStreamMicro.readString());
      }
    }

    public ContactPhoneNumber setDEPRECATEDDigit(int paramInt1, int paramInt2)
    {
      this.dEPRECATEDDigit_.set(paramInt1, Integer.valueOf(paramInt2));
      return this;
    }

    public ContactPhoneNumber setNumber(String paramString)
    {
      this.hasNumber = true;
      this.number_ = paramString;
      return this;
    }

    public ContactPhoneNumber setType(String paramString)
    {
      this.hasType = true;
      this.type_ = paramString;
      return this;
    }

    public void writeTo(CodedOutputStreamMicro paramCodedOutputStreamMicro)
      throws IOException
    {
      Iterator localIterator = getDEPRECATEDDigitList().iterator();
      while (localIterator.hasNext())
        paramCodedOutputStreamMicro.writeInt32(1, ((Integer)localIterator.next()).intValue());
      if (hasType())
        paramCodedOutputStreamMicro.writeString(2, getType());
      if (hasNumber())
        paramCodedOutputStreamMicro.writeString(3, getNumber());
    }
  }

  public static final class ContactPostalAddress extends MessageMicro
  {
    public static final int TYPE_FIELD_NUMBER = 1;
    private int cachedSize = -1;
    private boolean hasType;
    private String type_ = "";

    public static ContactPostalAddress parseFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
      throws IOException
    {
      return new ContactPostalAddress().mergeFrom(paramCodedInputStreamMicro);
    }

    public static ContactPostalAddress parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferMicroException
    {
      return (ContactPostalAddress)new ContactPostalAddress().mergeFrom(paramArrayOfByte);
    }

    public final ContactPostalAddress clear()
    {
      clearType();
      this.cachedSize = -1;
      return this;
    }

    public ContactPostalAddress clearType()
    {
      this.hasType = false;
      this.type_ = "";
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
      boolean bool = hasType();
      int i = 0;
      if (bool)
        i = 0 + CodedOutputStreamMicro.computeStringSize(1, getType());
      this.cachedSize = i;
      return i;
    }

    public String getType()
    {
      return this.type_;
    }

    public boolean hasType()
    {
      return this.hasType;
    }

    public final boolean isInitialized()
    {
      return true;
    }

    public ContactPostalAddress mergeFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
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
        setType(paramCodedInputStreamMicro.readString());
      }
    }

    public ContactPostalAddress setType(String paramString)
    {
      this.hasType = true;
      this.type_ = paramString;
      return this;
    }

    public void writeTo(CodedOutputStreamMicro paramCodedOutputStreamMicro)
      throws IOException
    {
      if (hasType())
        paramCodedOutputStreamMicro.writeString(1, getType());
    }
  }

  public static final class DirectionsAction extends MessageMicro
  {
    public static final int DESTINATION_FIELD_NUMBER = 1;
    public static final int FROM_FIELD_NUMBER = 2;
    public static final int PREVIEW_IMAGE_URL_FIELD_NUMBER = 4;
    public static final int TRANSPORTATION_METHOD_FIELD_NUMBER = 3;
    private int cachedSize = -1;
    private ActionV2Protos.Location destination_ = null;
    private ActionV2Protos.Location from_ = null;
    private boolean hasDestination;
    private boolean hasFrom;
    private boolean hasPreviewImageUrl;
    private boolean hasTransportationMethod;
    private String previewImageUrl_ = "";
    private int transportationMethod_ = 0;

    public static DirectionsAction parseFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
      throws IOException
    {
      return new DirectionsAction().mergeFrom(paramCodedInputStreamMicro);
    }

    public static DirectionsAction parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferMicroException
    {
      return (DirectionsAction)new DirectionsAction().mergeFrom(paramArrayOfByte);
    }

    public final DirectionsAction clear()
    {
      clearDestination();
      clearFrom();
      clearTransportationMethod();
      clearPreviewImageUrl();
      this.cachedSize = -1;
      return this;
    }

    public DirectionsAction clearDestination()
    {
      this.hasDestination = false;
      this.destination_ = null;
      return this;
    }

    public DirectionsAction clearFrom()
    {
      this.hasFrom = false;
      this.from_ = null;
      return this;
    }

    public DirectionsAction clearPreviewImageUrl()
    {
      this.hasPreviewImageUrl = false;
      this.previewImageUrl_ = "";
      return this;
    }

    public DirectionsAction clearTransportationMethod()
    {
      this.hasTransportationMethod = false;
      this.transportationMethod_ = 0;
      return this;
    }

    public int getCachedSize()
    {
      if (this.cachedSize < 0)
        getSerializedSize();
      return this.cachedSize;
    }

    public ActionV2Protos.Location getDestination()
    {
      return this.destination_;
    }

    public ActionV2Protos.Location getFrom()
    {
      return this.from_;
    }

    public String getPreviewImageUrl()
    {
      return this.previewImageUrl_;
    }

    public int getSerializedSize()
    {
      boolean bool = hasDestination();
      int i = 0;
      if (bool)
        i = 0 + CodedOutputStreamMicro.computeMessageSize(1, getDestination());
      if (hasFrom())
        i += CodedOutputStreamMicro.computeMessageSize(2, getFrom());
      if (hasTransportationMethod())
        i += CodedOutputStreamMicro.computeInt32Size(3, getTransportationMethod());
      if (hasPreviewImageUrl())
        i += CodedOutputStreamMicro.computeStringSize(4, getPreviewImageUrl());
      this.cachedSize = i;
      return i;
    }

    public int getTransportationMethod()
    {
      return this.transportationMethod_;
    }

    public boolean hasDestination()
    {
      return this.hasDestination;
    }

    public boolean hasFrom()
    {
      return this.hasFrom;
    }

    public boolean hasPreviewImageUrl()
    {
      return this.hasPreviewImageUrl;
    }

    public boolean hasTransportationMethod()
    {
      return this.hasTransportationMethod;
    }

    public final boolean isInitialized()
    {
      return true;
    }

    public DirectionsAction mergeFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
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
          ActionV2Protos.Location localLocation2 = new ActionV2Protos.Location();
          paramCodedInputStreamMicro.readMessage(localLocation2);
          setDestination(localLocation2);
          break;
        case 18:
          ActionV2Protos.Location localLocation1 = new ActionV2Protos.Location();
          paramCodedInputStreamMicro.readMessage(localLocation1);
          setFrom(localLocation1);
          break;
        case 24:
          setTransportationMethod(paramCodedInputStreamMicro.readInt32());
          break;
        case 34:
        }
        setPreviewImageUrl(paramCodedInputStreamMicro.readString());
      }
    }

    public DirectionsAction setDestination(ActionV2Protos.Location paramLocation)
    {
      if (paramLocation == null)
        throw new NullPointerException();
      this.hasDestination = true;
      this.destination_ = paramLocation;
      return this;
    }

    public DirectionsAction setFrom(ActionV2Protos.Location paramLocation)
    {
      if (paramLocation == null)
        throw new NullPointerException();
      this.hasFrom = true;
      this.from_ = paramLocation;
      return this;
    }

    public DirectionsAction setPreviewImageUrl(String paramString)
    {
      this.hasPreviewImageUrl = true;
      this.previewImageUrl_ = paramString;
      return this;
    }

    public DirectionsAction setTransportationMethod(int paramInt)
    {
      this.hasTransportationMethod = true;
      this.transportationMethod_ = paramInt;
      return this;
    }

    public void writeTo(CodedOutputStreamMicro paramCodedOutputStreamMicro)
      throws IOException
    {
      if (hasDestination())
        paramCodedOutputStreamMicro.writeMessage(1, getDestination());
      if (hasFrom())
        paramCodedOutputStreamMicro.writeMessage(2, getFrom());
      if (hasTransportationMethod())
        paramCodedOutputStreamMicro.writeInt32(3, getTransportationMethod());
      if (hasPreviewImageUrl())
        paramCodedOutputStreamMicro.writeString(4, getPreviewImageUrl());
    }
  }

  public static final class EmailAction extends MessageMicro
  {
    public static final int BCC_FIELD_NUMBER = 3;
    public static final int BODY_FIELD_NUMBER = 5;
    public static final int BODY_SPAN_FIELD_NUMBER = 7;
    public static final int CC_FIELD_NUMBER = 2;
    public static final int SUBJECT_FIELD_NUMBER = 4;
    public static final int SUBJECT_SPAN_FIELD_NUMBER = 6;
    public static final int TO_FIELD_NUMBER = 1;
    private List<ActionV2Protos.ActionContactGroup> bcc_ = Collections.emptyList();
    private SpanProtos.Span bodySpan_ = null;
    private String body_ = "";
    private int cachedSize = -1;
    private List<ActionV2Protos.ActionContactGroup> cc_ = Collections.emptyList();
    private boolean hasBody;
    private boolean hasBodySpan;
    private boolean hasSubject;
    private boolean hasSubjectSpan;
    private SpanProtos.Span subjectSpan_ = null;
    private String subject_ = "";
    private List<ActionV2Protos.ActionContactGroup> to_ = Collections.emptyList();

    public static EmailAction parseFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
      throws IOException
    {
      return new EmailAction().mergeFrom(paramCodedInputStreamMicro);
    }

    public static EmailAction parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferMicroException
    {
      return (EmailAction)new EmailAction().mergeFrom(paramArrayOfByte);
    }

    public EmailAction addBcc(ActionV2Protos.ActionContactGroup paramActionContactGroup)
    {
      if (paramActionContactGroup == null)
        throw new NullPointerException();
      if (this.bcc_.isEmpty())
        this.bcc_ = new ArrayList();
      this.bcc_.add(paramActionContactGroup);
      return this;
    }

    public EmailAction addCc(ActionV2Protos.ActionContactGroup paramActionContactGroup)
    {
      if (paramActionContactGroup == null)
        throw new NullPointerException();
      if (this.cc_.isEmpty())
        this.cc_ = new ArrayList();
      this.cc_.add(paramActionContactGroup);
      return this;
    }

    public EmailAction addTo(ActionV2Protos.ActionContactGroup paramActionContactGroup)
    {
      if (paramActionContactGroup == null)
        throw new NullPointerException();
      if (this.to_.isEmpty())
        this.to_ = new ArrayList();
      this.to_.add(paramActionContactGroup);
      return this;
    }

    public final EmailAction clear()
    {
      clearTo();
      clearCc();
      clearBcc();
      clearSubject();
      clearSubjectSpan();
      clearBody();
      clearBodySpan();
      this.cachedSize = -1;
      return this;
    }

    public EmailAction clearBcc()
    {
      this.bcc_ = Collections.emptyList();
      return this;
    }

    public EmailAction clearBody()
    {
      this.hasBody = false;
      this.body_ = "";
      return this;
    }

    public EmailAction clearBodySpan()
    {
      this.hasBodySpan = false;
      this.bodySpan_ = null;
      return this;
    }

    public EmailAction clearCc()
    {
      this.cc_ = Collections.emptyList();
      return this;
    }

    public EmailAction clearSubject()
    {
      this.hasSubject = false;
      this.subject_ = "";
      return this;
    }

    public EmailAction clearSubjectSpan()
    {
      this.hasSubjectSpan = false;
      this.subjectSpan_ = null;
      return this;
    }

    public EmailAction clearTo()
    {
      this.to_ = Collections.emptyList();
      return this;
    }

    public ActionV2Protos.ActionContactGroup getBcc(int paramInt)
    {
      return (ActionV2Protos.ActionContactGroup)this.bcc_.get(paramInt);
    }

    public int getBccCount()
    {
      return this.bcc_.size();
    }

    public List<ActionV2Protos.ActionContactGroup> getBccList()
    {
      return this.bcc_;
    }

    public String getBody()
    {
      return this.body_;
    }

    public SpanProtos.Span getBodySpan()
    {
      return this.bodySpan_;
    }

    public int getCachedSize()
    {
      if (this.cachedSize < 0)
        getSerializedSize();
      return this.cachedSize;
    }

    public ActionV2Protos.ActionContactGroup getCc(int paramInt)
    {
      return (ActionV2Protos.ActionContactGroup)this.cc_.get(paramInt);
    }

    public int getCcCount()
    {
      return this.cc_.size();
    }

    public List<ActionV2Protos.ActionContactGroup> getCcList()
    {
      return this.cc_;
    }

    public int getSerializedSize()
    {
      int i = 0;
      Iterator localIterator1 = getToList().iterator();
      while (localIterator1.hasNext())
        i += CodedOutputStreamMicro.computeMessageSize(1, (ActionV2Protos.ActionContactGroup)localIterator1.next());
      Iterator localIterator2 = getCcList().iterator();
      while (localIterator2.hasNext())
        i += CodedOutputStreamMicro.computeMessageSize(2, (ActionV2Protos.ActionContactGroup)localIterator2.next());
      Iterator localIterator3 = getBccList().iterator();
      while (localIterator3.hasNext())
        i += CodedOutputStreamMicro.computeMessageSize(3, (ActionV2Protos.ActionContactGroup)localIterator3.next());
      if (hasSubject())
        i += CodedOutputStreamMicro.computeStringSize(4, getSubject());
      if (hasBody())
        i += CodedOutputStreamMicro.computeStringSize(5, getBody());
      if (hasSubjectSpan())
        i += CodedOutputStreamMicro.computeMessageSize(6, getSubjectSpan());
      if (hasBodySpan())
        i += CodedOutputStreamMicro.computeMessageSize(7, getBodySpan());
      this.cachedSize = i;
      return i;
    }

    public String getSubject()
    {
      return this.subject_;
    }

    public SpanProtos.Span getSubjectSpan()
    {
      return this.subjectSpan_;
    }

    public ActionV2Protos.ActionContactGroup getTo(int paramInt)
    {
      return (ActionV2Protos.ActionContactGroup)this.to_.get(paramInt);
    }

    public int getToCount()
    {
      return this.to_.size();
    }

    public List<ActionV2Protos.ActionContactGroup> getToList()
    {
      return this.to_;
    }

    public boolean hasBody()
    {
      return this.hasBody;
    }

    public boolean hasBodySpan()
    {
      return this.hasBodySpan;
    }

    public boolean hasSubject()
    {
      return this.hasSubject;
    }

    public boolean hasSubjectSpan()
    {
      return this.hasSubjectSpan;
    }

    public final boolean isInitialized()
    {
      return true;
    }

    public EmailAction mergeFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
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
          ActionV2Protos.ActionContactGroup localActionContactGroup3 = new ActionV2Protos.ActionContactGroup();
          paramCodedInputStreamMicro.readMessage(localActionContactGroup3);
          addTo(localActionContactGroup3);
          break;
        case 18:
          ActionV2Protos.ActionContactGroup localActionContactGroup2 = new ActionV2Protos.ActionContactGroup();
          paramCodedInputStreamMicro.readMessage(localActionContactGroup2);
          addCc(localActionContactGroup2);
          break;
        case 26:
          ActionV2Protos.ActionContactGroup localActionContactGroup1 = new ActionV2Protos.ActionContactGroup();
          paramCodedInputStreamMicro.readMessage(localActionContactGroup1);
          addBcc(localActionContactGroup1);
          break;
        case 34:
          setSubject(paramCodedInputStreamMicro.readString());
          break;
        case 42:
          setBody(paramCodedInputStreamMicro.readString());
          break;
        case 50:
          SpanProtos.Span localSpan2 = new SpanProtos.Span();
          paramCodedInputStreamMicro.readMessage(localSpan2);
          setSubjectSpan(localSpan2);
          break;
        case 58:
        }
        SpanProtos.Span localSpan1 = new SpanProtos.Span();
        paramCodedInputStreamMicro.readMessage(localSpan1);
        setBodySpan(localSpan1);
      }
    }

    public EmailAction setBcc(int paramInt, ActionV2Protos.ActionContactGroup paramActionContactGroup)
    {
      if (paramActionContactGroup == null)
        throw new NullPointerException();
      this.bcc_.set(paramInt, paramActionContactGroup);
      return this;
    }

    public EmailAction setBody(String paramString)
    {
      this.hasBody = true;
      this.body_ = paramString;
      return this;
    }

    public EmailAction setBodySpan(SpanProtos.Span paramSpan)
    {
      if (paramSpan == null)
        throw new NullPointerException();
      this.hasBodySpan = true;
      this.bodySpan_ = paramSpan;
      return this;
    }

    public EmailAction setCc(int paramInt, ActionV2Protos.ActionContactGroup paramActionContactGroup)
    {
      if (paramActionContactGroup == null)
        throw new NullPointerException();
      this.cc_.set(paramInt, paramActionContactGroup);
      return this;
    }

    public EmailAction setSubject(String paramString)
    {
      this.hasSubject = true;
      this.subject_ = paramString;
      return this;
    }

    public EmailAction setSubjectSpan(SpanProtos.Span paramSpan)
    {
      if (paramSpan == null)
        throw new NullPointerException();
      this.hasSubjectSpan = true;
      this.subjectSpan_ = paramSpan;
      return this;
    }

    public EmailAction setTo(int paramInt, ActionV2Protos.ActionContactGroup paramActionContactGroup)
    {
      if (paramActionContactGroup == null)
        throw new NullPointerException();
      this.to_.set(paramInt, paramActionContactGroup);
      return this;
    }

    public void writeTo(CodedOutputStreamMicro paramCodedOutputStreamMicro)
      throws IOException
    {
      Iterator localIterator1 = getToList().iterator();
      while (localIterator1.hasNext())
        paramCodedOutputStreamMicro.writeMessage(1, (ActionV2Protos.ActionContactGroup)localIterator1.next());
      Iterator localIterator2 = getCcList().iterator();
      while (localIterator2.hasNext())
        paramCodedOutputStreamMicro.writeMessage(2, (ActionV2Protos.ActionContactGroup)localIterator2.next());
      Iterator localIterator3 = getBccList().iterator();
      while (localIterator3.hasNext())
        paramCodedOutputStreamMicro.writeMessage(3, (ActionV2Protos.ActionContactGroup)localIterator3.next());
      if (hasSubject())
        paramCodedOutputStreamMicro.writeString(4, getSubject());
      if (hasBody())
        paramCodedOutputStreamMicro.writeString(5, getBody());
      if (hasSubjectSpan())
        paramCodedOutputStreamMicro.writeMessage(6, getSubjectSpan());
      if (hasBodySpan())
        paramCodedOutputStreamMicro.writeMessage(7, getBodySpan());
    }
  }

  public static final class GetTrafficConditions extends MessageMicro
  {
    public static final int DESTINATION_FIELD_NUMBER = 2;
    public static final int ORIGIN_FIELD_NUMBER = 1;
    private int cachedSize = -1;
    private ActionV2Protos.Location destination_ = null;
    private boolean hasDestination;
    private boolean hasOrigin;
    private ActionV2Protos.Location origin_ = null;

    public static GetTrafficConditions parseFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
      throws IOException
    {
      return new GetTrafficConditions().mergeFrom(paramCodedInputStreamMicro);
    }

    public static GetTrafficConditions parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferMicroException
    {
      return (GetTrafficConditions)new GetTrafficConditions().mergeFrom(paramArrayOfByte);
    }

    public final GetTrafficConditions clear()
    {
      clearOrigin();
      clearDestination();
      this.cachedSize = -1;
      return this;
    }

    public GetTrafficConditions clearDestination()
    {
      this.hasDestination = false;
      this.destination_ = null;
      return this;
    }

    public GetTrafficConditions clearOrigin()
    {
      this.hasOrigin = false;
      this.origin_ = null;
      return this;
    }

    public int getCachedSize()
    {
      if (this.cachedSize < 0)
        getSerializedSize();
      return this.cachedSize;
    }

    public ActionV2Protos.Location getDestination()
    {
      return this.destination_;
    }

    public ActionV2Protos.Location getOrigin()
    {
      return this.origin_;
    }

    public int getSerializedSize()
    {
      boolean bool = hasOrigin();
      int i = 0;
      if (bool)
        i = 0 + CodedOutputStreamMicro.computeMessageSize(1, getOrigin());
      if (hasDestination())
        i += CodedOutputStreamMicro.computeMessageSize(2, getDestination());
      this.cachedSize = i;
      return i;
    }

    public boolean hasDestination()
    {
      return this.hasDestination;
    }

    public boolean hasOrigin()
    {
      return this.hasOrigin;
    }

    public final boolean isInitialized()
    {
      return true;
    }

    public GetTrafficConditions mergeFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
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
          ActionV2Protos.Location localLocation2 = new ActionV2Protos.Location();
          paramCodedInputStreamMicro.readMessage(localLocation2);
          setOrigin(localLocation2);
          break;
        case 18:
        }
        ActionV2Protos.Location localLocation1 = new ActionV2Protos.Location();
        paramCodedInputStreamMicro.readMessage(localLocation1);
        setDestination(localLocation1);
      }
    }

    public GetTrafficConditions setDestination(ActionV2Protos.Location paramLocation)
    {
      if (paramLocation == null)
        throw new NullPointerException();
      this.hasDestination = true;
      this.destination_ = paramLocation;
      return this;
    }

    public GetTrafficConditions setOrigin(ActionV2Protos.Location paramLocation)
    {
      if (paramLocation == null)
        throw new NullPointerException();
      this.hasOrigin = true;
      this.origin_ = paramLocation;
      return this;
    }

    public void writeTo(CodedOutputStreamMicro paramCodedOutputStreamMicro)
      throws IOException
    {
      if (hasOrigin())
        paramCodedOutputStreamMicro.writeMessage(1, getOrigin());
      if (hasDestination())
        paramCodedOutputStreamMicro.writeMessage(2, getDestination());
    }
  }

  public static final class GogglesAction extends MessageMicro
  {
    private int cachedSize = -1;

    public static GogglesAction parseFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
      throws IOException
    {
      return new GogglesAction().mergeFrom(paramCodedInputStreamMicro);
    }

    public static GogglesAction parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferMicroException
    {
      return (GogglesAction)new GogglesAction().mergeFrom(paramArrayOfByte);
    }

    public final GogglesAction clear()
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

    public GogglesAction mergeFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
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

  public static final class HelpAction extends MessageMicro
  {
    public static final int FEATURE_FIELD_NUMBER = 3;
    public static final int INTRODUCTION_FIELD_NUMBER = 2;
    public static final int TITLE_FIELD_NUMBER = 1;
    private int cachedSize = -1;
    private List<Feature> feature_ = Collections.emptyList();
    private boolean hasIntroduction;
    private boolean hasTitle;
    private ActionV2Protos.TranslationConsoleString introduction_ = null;
    private ActionV2Protos.TranslationConsoleString title_ = null;

    public static HelpAction parseFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
      throws IOException
    {
      return new HelpAction().mergeFrom(paramCodedInputStreamMicro);
    }

    public static HelpAction parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferMicroException
    {
      return (HelpAction)new HelpAction().mergeFrom(paramArrayOfByte);
    }

    public HelpAction addFeature(Feature paramFeature)
    {
      if (paramFeature == null)
        throw new NullPointerException();
      if (this.feature_.isEmpty())
        this.feature_ = new ArrayList();
      this.feature_.add(paramFeature);
      return this;
    }

    public final HelpAction clear()
    {
      clearTitle();
      clearIntroduction();
      clearFeature();
      this.cachedSize = -1;
      return this;
    }

    public HelpAction clearFeature()
    {
      this.feature_ = Collections.emptyList();
      return this;
    }

    public HelpAction clearIntroduction()
    {
      this.hasIntroduction = false;
      this.introduction_ = null;
      return this;
    }

    public HelpAction clearTitle()
    {
      this.hasTitle = false;
      this.title_ = null;
      return this;
    }

    public int getCachedSize()
    {
      if (this.cachedSize < 0)
        getSerializedSize();
      return this.cachedSize;
    }

    public Feature getFeature(int paramInt)
    {
      return (Feature)this.feature_.get(paramInt);
    }

    public int getFeatureCount()
    {
      return this.feature_.size();
    }

    public List<Feature> getFeatureList()
    {
      return this.feature_;
    }

    public ActionV2Protos.TranslationConsoleString getIntroduction()
    {
      return this.introduction_;
    }

    public int getSerializedSize()
    {
      boolean bool = hasTitle();
      int i = 0;
      if (bool)
        i = 0 + CodedOutputStreamMicro.computeMessageSize(1, getTitle());
      if (hasIntroduction())
        i += CodedOutputStreamMicro.computeMessageSize(2, getIntroduction());
      Iterator localIterator = getFeatureList().iterator();
      while (localIterator.hasNext())
        i += CodedOutputStreamMicro.computeMessageSize(3, (Feature)localIterator.next());
      this.cachedSize = i;
      return i;
    }

    public ActionV2Protos.TranslationConsoleString getTitle()
    {
      return this.title_;
    }

    public boolean hasIntroduction()
    {
      return this.hasIntroduction;
    }

    public boolean hasTitle()
    {
      return this.hasTitle;
    }

    public final boolean isInitialized()
    {
      return true;
    }

    public HelpAction mergeFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
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
          ActionV2Protos.TranslationConsoleString localTranslationConsoleString2 = new ActionV2Protos.TranslationConsoleString();
          paramCodedInputStreamMicro.readMessage(localTranslationConsoleString2);
          setTitle(localTranslationConsoleString2);
          break;
        case 18:
          ActionV2Protos.TranslationConsoleString localTranslationConsoleString1 = new ActionV2Protos.TranslationConsoleString();
          paramCodedInputStreamMicro.readMessage(localTranslationConsoleString1);
          setIntroduction(localTranslationConsoleString1);
          break;
        case 26:
        }
        Feature localFeature = new Feature();
        paramCodedInputStreamMicro.readMessage(localFeature);
        addFeature(localFeature);
      }
    }

    public HelpAction setFeature(int paramInt, Feature paramFeature)
    {
      if (paramFeature == null)
        throw new NullPointerException();
      this.feature_.set(paramInt, paramFeature);
      return this;
    }

    public HelpAction setIntroduction(ActionV2Protos.TranslationConsoleString paramTranslationConsoleString)
    {
      if (paramTranslationConsoleString == null)
        throw new NullPointerException();
      this.hasIntroduction = true;
      this.introduction_ = paramTranslationConsoleString;
      return this;
    }

    public HelpAction setTitle(ActionV2Protos.TranslationConsoleString paramTranslationConsoleString)
    {
      if (paramTranslationConsoleString == null)
        throw new NullPointerException();
      this.hasTitle = true;
      this.title_ = paramTranslationConsoleString;
      return this;
    }

    public void writeTo(CodedOutputStreamMicro paramCodedOutputStreamMicro)
      throws IOException
    {
      if (hasTitle())
        paramCodedOutputStreamMicro.writeMessage(1, getTitle());
      if (hasIntroduction())
        paramCodedOutputStreamMicro.writeMessage(2, getIntroduction());
      Iterator localIterator = getFeatureList().iterator();
      while (localIterator.hasNext())
        paramCodedOutputStreamMicro.writeMessage(3, (Feature)localIterator.next());
    }

    public static final class Feature extends MessageMicro
    {
      public static final int EXAMPLE_FIELD_NUMBER = 2;
      public static final int HEADLINE_FIELD_NUMBER = 1;
      private int cachedSize = -1;
      private List<Example> example_ = Collections.emptyList();
      private boolean hasHeadline;
      private ActionV2Protos.TranslationConsoleString headline_ = null;

      public Feature addExample(Example paramExample)
      {
        if (paramExample == null)
          throw new NullPointerException();
        if (this.example_.isEmpty())
          this.example_ = new ArrayList();
        this.example_.add(paramExample);
        return this;
      }

      public final Feature clear()
      {
        clearHeadline();
        clearExample();
        this.cachedSize = -1;
        return this;
      }

      public Feature clearExample()
      {
        this.example_ = Collections.emptyList();
        return this;
      }

      public Feature clearHeadline()
      {
        this.hasHeadline = false;
        this.headline_ = null;
        return this;
      }

      public int getCachedSize()
      {
        if (this.cachedSize < 0)
          getSerializedSize();
        return this.cachedSize;
      }

      public Example getExample(int paramInt)
      {
        return (Example)this.example_.get(paramInt);
      }

      public int getExampleCount()
      {
        return this.example_.size();
      }

      public List<Example> getExampleList()
      {
        return this.example_;
      }

      public ActionV2Protos.TranslationConsoleString getHeadline()
      {
        return this.headline_;
      }

      public int getSerializedSize()
      {
        boolean bool = hasHeadline();
        int i = 0;
        if (bool)
          i = 0 + CodedOutputStreamMicro.computeMessageSize(1, getHeadline());
        Iterator localIterator = getExampleList().iterator();
        while (localIterator.hasNext())
          i += CodedOutputStreamMicro.computeMessageSize(2, (Example)localIterator.next());
        this.cachedSize = i;
        return i;
      }

      public boolean hasHeadline()
      {
        return this.hasHeadline;
      }

      public final boolean isInitialized()
      {
        return true;
      }

      public Feature mergeFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
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
            ActionV2Protos.TranslationConsoleString localTranslationConsoleString = new ActionV2Protos.TranslationConsoleString();
            paramCodedInputStreamMicro.readMessage(localTranslationConsoleString);
            setHeadline(localTranslationConsoleString);
            break;
          case 18:
          }
          Example localExample = new Example();
          paramCodedInputStreamMicro.readMessage(localExample);
          addExample(localExample);
        }
      }

      public Feature parseFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
        throws IOException
      {
        return new Feature().mergeFrom(paramCodedInputStreamMicro);
      }

      public Feature parseFrom(byte[] paramArrayOfByte)
        throws InvalidProtocolBufferMicroException
      {
        return (Feature)new Feature().mergeFrom(paramArrayOfByte);
      }

      public Feature setExample(int paramInt, Example paramExample)
      {
        if (paramExample == null)
          throw new NullPointerException();
        this.example_.set(paramInt, paramExample);
        return this;
      }

      public Feature setHeadline(ActionV2Protos.TranslationConsoleString paramTranslationConsoleString)
      {
        if (paramTranslationConsoleString == null)
          throw new NullPointerException();
        this.hasHeadline = true;
        this.headline_ = paramTranslationConsoleString;
        return this;
      }

      public void writeTo(CodedOutputStreamMicro paramCodedOutputStreamMicro)
        throws IOException
      {
        if (hasHeadline())
          paramCodedOutputStreamMicro.writeMessage(1, getHeadline());
        Iterator localIterator = getExampleList().iterator();
        while (localIterator.hasNext())
          paramCodedOutputStreamMicro.writeMessage(2, (Example)localIterator.next());
      }

      public static final class Example extends MessageMicro
      {
        public static final int CAPABILITY_FRONT_FACING_CAMERA = 2;
        public static final int CAPABILITY_REAR_FACING_CAMERA = 1;
        public static final int CAPABILITY_TELEPHONY = 0;
        public static final int IMAGE_URL_FIELD_NUMBER = 7;
        public static final int LOCALIZED_IMAGE_FIELD_NUMBER = 11;
        public static final int LOCALIZED_QUERY_FIELD_NUMBER = 12;
        public static final int MIN_VERSION_FIELD_NUMBER = 1;
        public static final int QUERY_FIELD_NUMBER = 13;
        public static final int RELATIVE_DAYS_FIELD_NUMBER = 10;
        public static final int RELATIVE_SECONDS_FIELD_NUMBER = 9;
        public static final int REQUIRED_CAPABILITY_FIELD_NUMBER = 4;
        public static final int RETIRE_VERSION_FIELD_NUMBER = 2;
        public static final int SUBSTITUTION_DATE_DAY = 0;
        public static final int SUBSTITUTION_DATE_DAY_OF_WEEK = 2;
        public static final int SUBSTITUTION_DATE_MONTH = 1;
        public static final int SUBSTITUTION_FIELD_NUMBER = 6;
        public static final int SUBSTITUTION_LOCAL_CONTACT_NAME_WITH_EMAIL = 4;
        public static final int SUBSTITUTION_LOCAL_CONTACT_NAME_WITH_PHONE = 3;
        public static final int SUBSTITUTION_LOCAL_CONTACT_PHONE_NUMBER = 5;
        public static final int TIME_FIELD_NUMBER = 8;
        public static final int UNUSED_LOCALE_FIELD_NUMBER = 3;
        private int cachedSize = -1;
        private boolean hasImageUrl;
        private boolean hasLocalizedImage;
        private boolean hasMinVersion;
        private boolean hasQuery;
        private boolean hasRelativeDays;
        private boolean hasRelativeSeconds;
        private boolean hasRetireVersion;
        private boolean hasTime;
        private String imageUrl_ = "";
        private ActionV2Protos.LocalizedImage localizedImage_ = null;
        private List<ActionV2Protos.LocalizedString> localizedQuery_ = Collections.emptyList();
        private int minVersion_ = 0;
        private String query_ = "";
        private int relativeDays_ = 0;
        private int relativeSeconds_ = 0;
        private List<Integer> requiredCapability_ = Collections.emptyList();
        private int retireVersion_ = 0;
        private List<Integer> substitution_ = Collections.emptyList();
        private ActionDateTimeProtos.ActionTime time_ = null;
        private List<String> unusedLocale_ = Collections.emptyList();

        public Example addLocalizedQuery(ActionV2Protos.LocalizedString paramLocalizedString)
        {
          if (paramLocalizedString == null)
            throw new NullPointerException();
          if (this.localizedQuery_.isEmpty())
            this.localizedQuery_ = new ArrayList();
          this.localizedQuery_.add(paramLocalizedString);
          return this;
        }

        public Example addRequiredCapability(int paramInt)
        {
          if (this.requiredCapability_.isEmpty())
            this.requiredCapability_ = new ArrayList();
          this.requiredCapability_.add(Integer.valueOf(paramInt));
          return this;
        }

        public Example addSubstitution(int paramInt)
        {
          if (this.substitution_.isEmpty())
            this.substitution_ = new ArrayList();
          this.substitution_.add(Integer.valueOf(paramInt));
          return this;
        }

        public Example addUnusedLocale(String paramString)
        {
          if (paramString == null)
            throw new NullPointerException();
          if (this.unusedLocale_.isEmpty())
            this.unusedLocale_ = new ArrayList();
          this.unusedLocale_.add(paramString);
          return this;
        }

        public final Example clear()
        {
          clearMinVersion();
          clearRetireVersion();
          clearUnusedLocale();
          clearRequiredCapability();
          clearLocalizedQuery();
          clearQuery();
          clearSubstitution();
          clearLocalizedImage();
          clearImageUrl();
          clearTime();
          clearRelativeSeconds();
          clearRelativeDays();
          this.cachedSize = -1;
          return this;
        }

        public Example clearImageUrl()
        {
          this.hasImageUrl = false;
          this.imageUrl_ = "";
          return this;
        }

        public Example clearLocalizedImage()
        {
          this.hasLocalizedImage = false;
          this.localizedImage_ = null;
          return this;
        }

        public Example clearLocalizedQuery()
        {
          this.localizedQuery_ = Collections.emptyList();
          return this;
        }

        public Example clearMinVersion()
        {
          this.hasMinVersion = false;
          this.minVersion_ = 0;
          return this;
        }

        public Example clearQuery()
        {
          this.hasQuery = false;
          this.query_ = "";
          return this;
        }

        public Example clearRelativeDays()
        {
          this.hasRelativeDays = false;
          this.relativeDays_ = 0;
          return this;
        }

        public Example clearRelativeSeconds()
        {
          this.hasRelativeSeconds = false;
          this.relativeSeconds_ = 0;
          return this;
        }

        public Example clearRequiredCapability()
        {
          this.requiredCapability_ = Collections.emptyList();
          return this;
        }

        public Example clearRetireVersion()
        {
          this.hasRetireVersion = false;
          this.retireVersion_ = 0;
          return this;
        }

        public Example clearSubstitution()
        {
          this.substitution_ = Collections.emptyList();
          return this;
        }

        public Example clearTime()
        {
          this.hasTime = false;
          this.time_ = null;
          return this;
        }

        public Example clearUnusedLocale()
        {
          this.unusedLocale_ = Collections.emptyList();
          return this;
        }

        public int getCachedSize()
        {
          if (this.cachedSize < 0)
            getSerializedSize();
          return this.cachedSize;
        }

        public String getImageUrl()
        {
          return this.imageUrl_;
        }

        public ActionV2Protos.LocalizedImage getLocalizedImage()
        {
          return this.localizedImage_;
        }

        public ActionV2Protos.LocalizedString getLocalizedQuery(int paramInt)
        {
          return (ActionV2Protos.LocalizedString)this.localizedQuery_.get(paramInt);
        }

        public int getLocalizedQueryCount()
        {
          return this.localizedQuery_.size();
        }

        public List<ActionV2Protos.LocalizedString> getLocalizedQueryList()
        {
          return this.localizedQuery_;
        }

        public int getMinVersion()
        {
          return this.minVersion_;
        }

        public String getQuery()
        {
          return this.query_;
        }

        public int getRelativeDays()
        {
          return this.relativeDays_;
        }

        public int getRelativeSeconds()
        {
          return this.relativeSeconds_;
        }

        public int getRequiredCapability(int paramInt)
        {
          return ((Integer)this.requiredCapability_.get(paramInt)).intValue();
        }

        public int getRequiredCapabilityCount()
        {
          return this.requiredCapability_.size();
        }

        public List<Integer> getRequiredCapabilityList()
        {
          return this.requiredCapability_;
        }

        public int getRetireVersion()
        {
          return this.retireVersion_;
        }

        public int getSerializedSize()
        {
          boolean bool = hasMinVersion();
          int i = 0;
          if (bool)
            i = 0 + CodedOutputStreamMicro.computeInt32Size(1, getMinVersion());
          if (hasRetireVersion())
            i += CodedOutputStreamMicro.computeInt32Size(2, getRetireVersion());
          int j = 0;
          Iterator localIterator1 = getUnusedLocaleList().iterator();
          while (localIterator1.hasNext())
            j += CodedOutputStreamMicro.computeStringSizeNoTag((String)localIterator1.next());
          int k = i + j + 1 * getUnusedLocaleList().size();
          int m = 0;
          Iterator localIterator2 = getRequiredCapabilityList().iterator();
          while (localIterator2.hasNext())
            m += CodedOutputStreamMicro.computeInt32SizeNoTag(((Integer)localIterator2.next()).intValue());
          int n = k + m + 1 * getRequiredCapabilityList().size();
          int i1 = 0;
          Iterator localIterator3 = getSubstitutionList().iterator();
          while (localIterator3.hasNext())
            i1 += CodedOutputStreamMicro.computeInt32SizeNoTag(((Integer)localIterator3.next()).intValue());
          int i2 = n + i1 + 1 * getSubstitutionList().size();
          if (hasImageUrl())
            i2 += CodedOutputStreamMicro.computeStringSize(7, getImageUrl());
          if (hasTime())
            i2 += CodedOutputStreamMicro.computeMessageSize(8, getTime());
          if (hasRelativeSeconds())
            i2 += CodedOutputStreamMicro.computeInt32Size(9, getRelativeSeconds());
          if (hasRelativeDays())
            i2 += CodedOutputStreamMicro.computeInt32Size(10, getRelativeDays());
          if (hasLocalizedImage())
            i2 += CodedOutputStreamMicro.computeMessageSize(11, getLocalizedImage());
          Iterator localIterator4 = getLocalizedQueryList().iterator();
          while (localIterator4.hasNext())
            i2 += CodedOutputStreamMicro.computeMessageSize(12, (ActionV2Protos.LocalizedString)localIterator4.next());
          if (hasQuery())
            i2 += CodedOutputStreamMicro.computeStringSize(13, getQuery());
          this.cachedSize = i2;
          return i2;
        }

        public int getSubstitution(int paramInt)
        {
          return ((Integer)this.substitution_.get(paramInt)).intValue();
        }

        public int getSubstitutionCount()
        {
          return this.substitution_.size();
        }

        public List<Integer> getSubstitutionList()
        {
          return this.substitution_;
        }

        public ActionDateTimeProtos.ActionTime getTime()
        {
          return this.time_;
        }

        public String getUnusedLocale(int paramInt)
        {
          return (String)this.unusedLocale_.get(paramInt);
        }

        public int getUnusedLocaleCount()
        {
          return this.unusedLocale_.size();
        }

        public List<String> getUnusedLocaleList()
        {
          return this.unusedLocale_;
        }

        public boolean hasImageUrl()
        {
          return this.hasImageUrl;
        }

        public boolean hasLocalizedImage()
        {
          return this.hasLocalizedImage;
        }

        public boolean hasMinVersion()
        {
          return this.hasMinVersion;
        }

        public boolean hasQuery()
        {
          return this.hasQuery;
        }

        public boolean hasRelativeDays()
        {
          return this.hasRelativeDays;
        }

        public boolean hasRelativeSeconds()
        {
          return this.hasRelativeSeconds;
        }

        public boolean hasRetireVersion()
        {
          return this.hasRetireVersion;
        }

        public boolean hasTime()
        {
          return this.hasTime;
        }

        public final boolean isInitialized()
        {
          return true;
        }

        public Example mergeFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
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
              setMinVersion(paramCodedInputStreamMicro.readInt32());
              break;
            case 16:
              setRetireVersion(paramCodedInputStreamMicro.readInt32());
              break;
            case 26:
              addUnusedLocale(paramCodedInputStreamMicro.readString());
              break;
            case 32:
              addRequiredCapability(paramCodedInputStreamMicro.readInt32());
              break;
            case 48:
              addSubstitution(paramCodedInputStreamMicro.readInt32());
              break;
            case 58:
              setImageUrl(paramCodedInputStreamMicro.readString());
              break;
            case 66:
              ActionDateTimeProtos.ActionTime localActionTime = new ActionDateTimeProtos.ActionTime();
              paramCodedInputStreamMicro.readMessage(localActionTime);
              setTime(localActionTime);
              break;
            case 72:
              setRelativeSeconds(paramCodedInputStreamMicro.readInt32());
              break;
            case 80:
              setRelativeDays(paramCodedInputStreamMicro.readInt32());
              break;
            case 90:
              ActionV2Protos.LocalizedImage localLocalizedImage = new ActionV2Protos.LocalizedImage();
              paramCodedInputStreamMicro.readMessage(localLocalizedImage);
              setLocalizedImage(localLocalizedImage);
              break;
            case 98:
              ActionV2Protos.LocalizedString localLocalizedString = new ActionV2Protos.LocalizedString();
              paramCodedInputStreamMicro.readMessage(localLocalizedString);
              addLocalizedQuery(localLocalizedString);
              break;
            case 106:
            }
            setQuery(paramCodedInputStreamMicro.readString());
          }
        }

        public Example parseFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
          throws IOException
        {
          return new Example().mergeFrom(paramCodedInputStreamMicro);
        }

        public Example parseFrom(byte[] paramArrayOfByte)
          throws InvalidProtocolBufferMicroException
        {
          return (Example)new Example().mergeFrom(paramArrayOfByte);
        }

        public Example setImageUrl(String paramString)
        {
          this.hasImageUrl = true;
          this.imageUrl_ = paramString;
          return this;
        }

        public Example setLocalizedImage(ActionV2Protos.LocalizedImage paramLocalizedImage)
        {
          if (paramLocalizedImage == null)
            throw new NullPointerException();
          this.hasLocalizedImage = true;
          this.localizedImage_ = paramLocalizedImage;
          return this;
        }

        public Example setLocalizedQuery(int paramInt, ActionV2Protos.LocalizedString paramLocalizedString)
        {
          if (paramLocalizedString == null)
            throw new NullPointerException();
          this.localizedQuery_.set(paramInt, paramLocalizedString);
          return this;
        }

        public Example setMinVersion(int paramInt)
        {
          this.hasMinVersion = true;
          this.minVersion_ = paramInt;
          return this;
        }

        public Example setQuery(String paramString)
        {
          this.hasQuery = true;
          this.query_ = paramString;
          return this;
        }

        public Example setRelativeDays(int paramInt)
        {
          this.hasRelativeDays = true;
          this.relativeDays_ = paramInt;
          return this;
        }

        public Example setRelativeSeconds(int paramInt)
        {
          this.hasRelativeSeconds = true;
          this.relativeSeconds_ = paramInt;
          return this;
        }

        public Example setRequiredCapability(int paramInt1, int paramInt2)
        {
          this.requiredCapability_.set(paramInt1, Integer.valueOf(paramInt2));
          return this;
        }

        public Example setRetireVersion(int paramInt)
        {
          this.hasRetireVersion = true;
          this.retireVersion_ = paramInt;
          return this;
        }

        public Example setSubstitution(int paramInt1, int paramInt2)
        {
          this.substitution_.set(paramInt1, Integer.valueOf(paramInt2));
          return this;
        }

        public Example setTime(ActionDateTimeProtos.ActionTime paramActionTime)
        {
          if (paramActionTime == null)
            throw new NullPointerException();
          this.hasTime = true;
          this.time_ = paramActionTime;
          return this;
        }

        public Example setUnusedLocale(int paramInt, String paramString)
        {
          if (paramString == null)
            throw new NullPointerException();
          this.unusedLocale_.set(paramInt, paramString);
          return this;
        }

        public void writeTo(CodedOutputStreamMicro paramCodedOutputStreamMicro)
          throws IOException
        {
          if (hasMinVersion())
            paramCodedOutputStreamMicro.writeInt32(1, getMinVersion());
          if (hasRetireVersion())
            paramCodedOutputStreamMicro.writeInt32(2, getRetireVersion());
          Iterator localIterator1 = getUnusedLocaleList().iterator();
          while (localIterator1.hasNext())
            paramCodedOutputStreamMicro.writeString(3, (String)localIterator1.next());
          Iterator localIterator2 = getRequiredCapabilityList().iterator();
          while (localIterator2.hasNext())
            paramCodedOutputStreamMicro.writeInt32(4, ((Integer)localIterator2.next()).intValue());
          Iterator localIterator3 = getSubstitutionList().iterator();
          while (localIterator3.hasNext())
            paramCodedOutputStreamMicro.writeInt32(6, ((Integer)localIterator3.next()).intValue());
          if (hasImageUrl())
            paramCodedOutputStreamMicro.writeString(7, getImageUrl());
          if (hasTime())
            paramCodedOutputStreamMicro.writeMessage(8, getTime());
          if (hasRelativeSeconds())
            paramCodedOutputStreamMicro.writeInt32(9, getRelativeSeconds());
          if (hasRelativeDays())
            paramCodedOutputStreamMicro.writeInt32(10, getRelativeDays());
          if (hasLocalizedImage())
            paramCodedOutputStreamMicro.writeMessage(11, getLocalizedImage());
          Iterator localIterator4 = getLocalizedQueryList().iterator();
          while (localIterator4.hasNext())
            paramCodedOutputStreamMicro.writeMessage(12, (ActionV2Protos.LocalizedString)localIterator4.next());
          if (hasQuery())
            paramCodedOutputStreamMicro.writeString(13, getQuery());
        }
      }
    }
  }

  public static final class LocalResultCandidateList extends MessageMicro
  {
    public static final int CANDIDATE_LOCAL_RESULT_FIELD_NUMBER = 1;
    public static final int NEARBY_LOCATION_TYPE_FIELD_NUMBER = 2;
    private int cachedSize = -1;
    private List<EcoutezStructuredResponse.EcoutezLocalResult> candidateLocalResult_ = Collections.emptyList();
    private boolean hasNearbyLocationType;
    private AliasProto.Alias nearbyLocationType_ = null;

    public static LocalResultCandidateList parseFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
      throws IOException
    {
      return new LocalResultCandidateList().mergeFrom(paramCodedInputStreamMicro);
    }

    public static LocalResultCandidateList parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferMicroException
    {
      return (LocalResultCandidateList)new LocalResultCandidateList().mergeFrom(paramArrayOfByte);
    }

    public LocalResultCandidateList addCandidateLocalResult(EcoutezStructuredResponse.EcoutezLocalResult paramEcoutezLocalResult)
    {
      if (paramEcoutezLocalResult == null)
        throw new NullPointerException();
      if (this.candidateLocalResult_.isEmpty())
        this.candidateLocalResult_ = new ArrayList();
      this.candidateLocalResult_.add(paramEcoutezLocalResult);
      return this;
    }

    public final LocalResultCandidateList clear()
    {
      clearCandidateLocalResult();
      clearNearbyLocationType();
      this.cachedSize = -1;
      return this;
    }

    public LocalResultCandidateList clearCandidateLocalResult()
    {
      this.candidateLocalResult_ = Collections.emptyList();
      return this;
    }

    public LocalResultCandidateList clearNearbyLocationType()
    {
      this.hasNearbyLocationType = false;
      this.nearbyLocationType_ = null;
      return this;
    }

    public int getCachedSize()
    {
      if (this.cachedSize < 0)
        getSerializedSize();
      return this.cachedSize;
    }

    public EcoutezStructuredResponse.EcoutezLocalResult getCandidateLocalResult(int paramInt)
    {
      return (EcoutezStructuredResponse.EcoutezLocalResult)this.candidateLocalResult_.get(paramInt);
    }

    public int getCandidateLocalResultCount()
    {
      return this.candidateLocalResult_.size();
    }

    public List<EcoutezStructuredResponse.EcoutezLocalResult> getCandidateLocalResultList()
    {
      return this.candidateLocalResult_;
    }

    public AliasProto.Alias getNearbyLocationType()
    {
      return this.nearbyLocationType_;
    }

    public int getSerializedSize()
    {
      int i = 0;
      Iterator localIterator = getCandidateLocalResultList().iterator();
      while (localIterator.hasNext())
        i += CodedOutputStreamMicro.computeMessageSize(1, (EcoutezStructuredResponse.EcoutezLocalResult)localIterator.next());
      if (hasNearbyLocationType())
        i += CodedOutputStreamMicro.computeMessageSize(2, getNearbyLocationType());
      this.cachedSize = i;
      return i;
    }

    public boolean hasNearbyLocationType()
    {
      return this.hasNearbyLocationType;
    }

    public final boolean isInitialized()
    {
      return true;
    }

    public LocalResultCandidateList mergeFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
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
          EcoutezStructuredResponse.EcoutezLocalResult localEcoutezLocalResult = new EcoutezStructuredResponse.EcoutezLocalResult();
          paramCodedInputStreamMicro.readMessage(localEcoutezLocalResult);
          addCandidateLocalResult(localEcoutezLocalResult);
          break;
        case 18:
        }
        AliasProto.Alias localAlias = new AliasProto.Alias();
        paramCodedInputStreamMicro.readMessage(localAlias);
        setNearbyLocationType(localAlias);
      }
    }

    public LocalResultCandidateList setCandidateLocalResult(int paramInt, EcoutezStructuredResponse.EcoutezLocalResult paramEcoutezLocalResult)
    {
      if (paramEcoutezLocalResult == null)
        throw new NullPointerException();
      this.candidateLocalResult_.set(paramInt, paramEcoutezLocalResult);
      return this;
    }

    public LocalResultCandidateList setNearbyLocationType(AliasProto.Alias paramAlias)
    {
      if (paramAlias == null)
        throw new NullPointerException();
      this.hasNearbyLocationType = true;
      this.nearbyLocationType_ = paramAlias;
      return this;
    }

    public void writeTo(CodedOutputStreamMicro paramCodedOutputStreamMicro)
      throws IOException
    {
      Iterator localIterator = getCandidateLocalResultList().iterator();
      while (localIterator.hasNext())
        paramCodedOutputStreamMicro.writeMessage(1, (EcoutezStructuredResponse.EcoutezLocalResult)localIterator.next());
      if (hasNearbyLocationType())
        paramCodedOutputStreamMicro.writeMessage(2, getNearbyLocationType());
    }
  }

  public static final class LocalizedImage extends MessageMicro
  {
    public static final int DEFAULT_URL_FIELD_NUMBER = 1;
    public static final int IMAGE_TYPE_DEFAULT = 0;
    public static final int IMAGE_TYPE_FIELD_NUMBER = 3;
    public static final int IMAGE_TYPE_STATIC_MAP = 1;
    public static final int LOCALIZED_URL_FIELD_NUMBER = 2;
    private int cachedSize = -1;
    private String defaultUrl_ = "";
    private boolean hasDefaultUrl;
    private boolean hasImageType;
    private int imageType_ = 0;
    private List<ActionV2Protos.LocalizedString> localizedUrl_ = Collections.emptyList();

    public static LocalizedImage parseFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
      throws IOException
    {
      return new LocalizedImage().mergeFrom(paramCodedInputStreamMicro);
    }

    public static LocalizedImage parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferMicroException
    {
      return (LocalizedImage)new LocalizedImage().mergeFrom(paramArrayOfByte);
    }

    public LocalizedImage addLocalizedUrl(ActionV2Protos.LocalizedString paramLocalizedString)
    {
      if (paramLocalizedString == null)
        throw new NullPointerException();
      if (this.localizedUrl_.isEmpty())
        this.localizedUrl_ = new ArrayList();
      this.localizedUrl_.add(paramLocalizedString);
      return this;
    }

    public final LocalizedImage clear()
    {
      clearDefaultUrl();
      clearLocalizedUrl();
      clearImageType();
      this.cachedSize = -1;
      return this;
    }

    public LocalizedImage clearDefaultUrl()
    {
      this.hasDefaultUrl = false;
      this.defaultUrl_ = "";
      return this;
    }

    public LocalizedImage clearImageType()
    {
      this.hasImageType = false;
      this.imageType_ = 0;
      return this;
    }

    public LocalizedImage clearLocalizedUrl()
    {
      this.localizedUrl_ = Collections.emptyList();
      return this;
    }

    public int getCachedSize()
    {
      if (this.cachedSize < 0)
        getSerializedSize();
      return this.cachedSize;
    }

    public String getDefaultUrl()
    {
      return this.defaultUrl_;
    }

    public int getImageType()
    {
      return this.imageType_;
    }

    public ActionV2Protos.LocalizedString getLocalizedUrl(int paramInt)
    {
      return (ActionV2Protos.LocalizedString)this.localizedUrl_.get(paramInt);
    }

    public int getLocalizedUrlCount()
    {
      return this.localizedUrl_.size();
    }

    public List<ActionV2Protos.LocalizedString> getLocalizedUrlList()
    {
      return this.localizedUrl_;
    }

    public int getSerializedSize()
    {
      boolean bool = hasDefaultUrl();
      int i = 0;
      if (bool)
        i = 0 + CodedOutputStreamMicro.computeStringSize(1, getDefaultUrl());
      Iterator localIterator = getLocalizedUrlList().iterator();
      while (localIterator.hasNext())
        i += CodedOutputStreamMicro.computeMessageSize(2, (ActionV2Protos.LocalizedString)localIterator.next());
      if (hasImageType())
        i += CodedOutputStreamMicro.computeInt32Size(3, getImageType());
      this.cachedSize = i;
      return i;
    }

    public boolean hasDefaultUrl()
    {
      return this.hasDefaultUrl;
    }

    public boolean hasImageType()
    {
      return this.hasImageType;
    }

    public final boolean isInitialized()
    {
      return true;
    }

    public LocalizedImage mergeFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
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
          setDefaultUrl(paramCodedInputStreamMicro.readString());
          break;
        case 18:
          ActionV2Protos.LocalizedString localLocalizedString = new ActionV2Protos.LocalizedString();
          paramCodedInputStreamMicro.readMessage(localLocalizedString);
          addLocalizedUrl(localLocalizedString);
          break;
        case 24:
        }
        setImageType(paramCodedInputStreamMicro.readInt32());
      }
    }

    public LocalizedImage setDefaultUrl(String paramString)
    {
      this.hasDefaultUrl = true;
      this.defaultUrl_ = paramString;
      return this;
    }

    public LocalizedImage setImageType(int paramInt)
    {
      this.hasImageType = true;
      this.imageType_ = paramInt;
      return this;
    }

    public LocalizedImage setLocalizedUrl(int paramInt, ActionV2Protos.LocalizedString paramLocalizedString)
    {
      if (paramLocalizedString == null)
        throw new NullPointerException();
      this.localizedUrl_.set(paramInt, paramLocalizedString);
      return this;
    }

    public void writeTo(CodedOutputStreamMicro paramCodedOutputStreamMicro)
      throws IOException
    {
      if (hasDefaultUrl())
        paramCodedOutputStreamMicro.writeString(1, getDefaultUrl());
      Iterator localIterator = getLocalizedUrlList().iterator();
      while (localIterator.hasNext())
        paramCodedOutputStreamMicro.writeMessage(2, (ActionV2Protos.LocalizedString)localIterator.next());
      if (hasImageType())
        paramCodedOutputStreamMicro.writeInt32(3, getImageType());
    }
  }

  public static final class LocalizedString extends MessageMicro
  {
    public static final int LOCALE_FIELD_NUMBER = 1;
    public static final int TEXT_FIELD_NUMBER = 2;
    private int cachedSize = -1;
    private boolean hasLocale;
    private boolean hasText;
    private String locale_ = "";
    private String text_ = "";

    public static LocalizedString parseFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
      throws IOException
    {
      return new LocalizedString().mergeFrom(paramCodedInputStreamMicro);
    }

    public static LocalizedString parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferMicroException
    {
      return (LocalizedString)new LocalizedString().mergeFrom(paramArrayOfByte);
    }

    public final LocalizedString clear()
    {
      clearLocale();
      clearText();
      this.cachedSize = -1;
      return this;
    }

    public LocalizedString clearLocale()
    {
      this.hasLocale = false;
      this.locale_ = "";
      return this;
    }

    public LocalizedString clearText()
    {
      this.hasText = false;
      this.text_ = "";
      return this;
    }

    public int getCachedSize()
    {
      if (this.cachedSize < 0)
        getSerializedSize();
      return this.cachedSize;
    }

    public String getLocale()
    {
      return this.locale_;
    }

    public int getSerializedSize()
    {
      boolean bool = hasLocale();
      int i = 0;
      if (bool)
        i = 0 + CodedOutputStreamMicro.computeStringSize(1, getLocale());
      if (hasText())
        i += CodedOutputStreamMicro.computeStringSize(2, getText());
      this.cachedSize = i;
      return i;
    }

    public String getText()
    {
      return this.text_;
    }

    public boolean hasLocale()
    {
      return this.hasLocale;
    }

    public boolean hasText()
    {
      return this.hasText;
    }

    public final boolean isInitialized()
    {
      return true;
    }

    public LocalizedString mergeFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
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
          setLocale(paramCodedInputStreamMicro.readString());
          break;
        case 18:
        }
        setText(paramCodedInputStreamMicro.readString());
      }
    }

    public LocalizedString setLocale(String paramString)
    {
      this.hasLocale = true;
      this.locale_ = paramString;
      return this;
    }

    public LocalizedString setText(String paramString)
    {
      this.hasText = true;
      this.text_ = paramString;
      return this;
    }

    public void writeTo(CodedOutputStreamMicro paramCodedOutputStreamMicro)
      throws IOException
    {
      if (hasLocale())
        paramCodedOutputStreamMicro.writeString(1, getLocale());
      if (hasText())
        paramCodedOutputStreamMicro.writeString(2, getText());
    }
  }

  public static final class Location extends MessageMicro
  {
    public static final int ADDRESS_FIELD_NUMBER = 5;
    public static final int ADDRESS_FOR_MAP_IMAGE_URL_FIELD_NUMBER = 11;
    public static final int ALIAS_FIELD_NUMBER = 10;
    public static final int CLUSTER_ID_FIELD_NUMBER = 7;
    public static final int DESCRIPTION_FIELD_NUMBER = 3;
    public static final int LAT_DEGREES_FIELD_NUMBER = 1;
    public static final int LAT_SPAN_DEGREES_FIELD_NUMBER = 8;
    public static final int LNG_DEGREES_FIELD_NUMBER = 2;
    public static final int LNG_SPAN_DEGREES_FIELD_NUMBER = 9;
    public static final int MAPS_URL_FIELD_NUMBER = 4;
    public static final int ORIGINAL_DESCRIPTION_FIELD_NUMBER = 6;
    private String addressForMapImageUrl_ = "";
    private String address_ = "";
    private AliasProto.Alias alias_ = null;
    private int cachedSize = -1;
    private String clusterId_ = "";
    private String description_ = "";
    private boolean hasAddress;
    private boolean hasAddressForMapImageUrl;
    private boolean hasAlias;
    private boolean hasClusterId;
    private boolean hasDescription;
    private boolean hasLatDegrees;
    private boolean hasLatSpanDegrees;
    private boolean hasLngDegrees;
    private boolean hasLngSpanDegrees;
    private boolean hasMapsUrl;
    private boolean hasOriginalDescription;
    private double latDegrees_ = 0.0D;
    private double latSpanDegrees_ = 0.0D;
    private double lngDegrees_ = 0.0D;
    private double lngSpanDegrees_ = 0.0D;
    private String mapsUrl_ = "";
    private String originalDescription_ = "";

    public static Location parseFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
      throws IOException
    {
      return new Location().mergeFrom(paramCodedInputStreamMicro);
    }

    public static Location parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferMicroException
    {
      return (Location)new Location().mergeFrom(paramArrayOfByte);
    }

    public final Location clear()
    {
      clearLatDegrees();
      clearLngDegrees();
      clearLatSpanDegrees();
      clearLngSpanDegrees();
      clearDescription();
      clearOriginalDescription();
      clearMapsUrl();
      clearAddress();
      clearAddressForMapImageUrl();
      clearClusterId();
      clearAlias();
      this.cachedSize = -1;
      return this;
    }

    public Location clearAddress()
    {
      this.hasAddress = false;
      this.address_ = "";
      return this;
    }

    public Location clearAddressForMapImageUrl()
    {
      this.hasAddressForMapImageUrl = false;
      this.addressForMapImageUrl_ = "";
      return this;
    }

    public Location clearAlias()
    {
      this.hasAlias = false;
      this.alias_ = null;
      return this;
    }

    public Location clearClusterId()
    {
      this.hasClusterId = false;
      this.clusterId_ = "";
      return this;
    }

    public Location clearDescription()
    {
      this.hasDescription = false;
      this.description_ = "";
      return this;
    }

    public Location clearLatDegrees()
    {
      this.hasLatDegrees = false;
      this.latDegrees_ = 0.0D;
      return this;
    }

    public Location clearLatSpanDegrees()
    {
      this.hasLatSpanDegrees = false;
      this.latSpanDegrees_ = 0.0D;
      return this;
    }

    public Location clearLngDegrees()
    {
      this.hasLngDegrees = false;
      this.lngDegrees_ = 0.0D;
      return this;
    }

    public Location clearLngSpanDegrees()
    {
      this.hasLngSpanDegrees = false;
      this.lngSpanDegrees_ = 0.0D;
      return this;
    }

    public Location clearMapsUrl()
    {
      this.hasMapsUrl = false;
      this.mapsUrl_ = "";
      return this;
    }

    public Location clearOriginalDescription()
    {
      this.hasOriginalDescription = false;
      this.originalDescription_ = "";
      return this;
    }

    public String getAddress()
    {
      return this.address_;
    }

    public String getAddressForMapImageUrl()
    {
      return this.addressForMapImageUrl_;
    }

    public AliasProto.Alias getAlias()
    {
      return this.alias_;
    }

    public int getCachedSize()
    {
      if (this.cachedSize < 0)
        getSerializedSize();
      return this.cachedSize;
    }

    public String getClusterId()
    {
      return this.clusterId_;
    }

    public String getDescription()
    {
      return this.description_;
    }

    public double getLatDegrees()
    {
      return this.latDegrees_;
    }

    public double getLatSpanDegrees()
    {
      return this.latSpanDegrees_;
    }

    public double getLngDegrees()
    {
      return this.lngDegrees_;
    }

    public double getLngSpanDegrees()
    {
      return this.lngSpanDegrees_;
    }

    public String getMapsUrl()
    {
      return this.mapsUrl_;
    }

    public String getOriginalDescription()
    {
      return this.originalDescription_;
    }

    public int getSerializedSize()
    {
      boolean bool = hasLatDegrees();
      int i = 0;
      if (bool)
        i = 0 + CodedOutputStreamMicro.computeDoubleSize(1, getLatDegrees());
      if (hasLngDegrees())
        i += CodedOutputStreamMicro.computeDoubleSize(2, getLngDegrees());
      if (hasDescription())
        i += CodedOutputStreamMicro.computeStringSize(3, getDescription());
      if (hasMapsUrl())
        i += CodedOutputStreamMicro.computeStringSize(4, getMapsUrl());
      if (hasAddress())
        i += CodedOutputStreamMicro.computeStringSize(5, getAddress());
      if (hasOriginalDescription())
        i += CodedOutputStreamMicro.computeStringSize(6, getOriginalDescription());
      if (hasClusterId())
        i += CodedOutputStreamMicro.computeStringSize(7, getClusterId());
      if (hasLatSpanDegrees())
        i += CodedOutputStreamMicro.computeDoubleSize(8, getLatSpanDegrees());
      if (hasLngSpanDegrees())
        i += CodedOutputStreamMicro.computeDoubleSize(9, getLngSpanDegrees());
      if (hasAlias())
        i += CodedOutputStreamMicro.computeMessageSize(10, getAlias());
      if (hasAddressForMapImageUrl())
        i += CodedOutputStreamMicro.computeStringSize(11, getAddressForMapImageUrl());
      this.cachedSize = i;
      return i;
    }

    public boolean hasAddress()
    {
      return this.hasAddress;
    }

    public boolean hasAddressForMapImageUrl()
    {
      return this.hasAddressForMapImageUrl;
    }

    public boolean hasAlias()
    {
      return this.hasAlias;
    }

    public boolean hasClusterId()
    {
      return this.hasClusterId;
    }

    public boolean hasDescription()
    {
      return this.hasDescription;
    }

    public boolean hasLatDegrees()
    {
      return this.hasLatDegrees;
    }

    public boolean hasLatSpanDegrees()
    {
      return this.hasLatSpanDegrees;
    }

    public boolean hasLngDegrees()
    {
      return this.hasLngDegrees;
    }

    public boolean hasLngSpanDegrees()
    {
      return this.hasLngSpanDegrees;
    }

    public boolean hasMapsUrl()
    {
      return this.hasMapsUrl;
    }

    public boolean hasOriginalDescription()
    {
      return this.hasOriginalDescription;
    }

    public final boolean isInitialized()
    {
      return true;
    }

    public Location mergeFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
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
        case 9:
          setLatDegrees(paramCodedInputStreamMicro.readDouble());
          break;
        case 17:
          setLngDegrees(paramCodedInputStreamMicro.readDouble());
          break;
        case 26:
          setDescription(paramCodedInputStreamMicro.readString());
          break;
        case 34:
          setMapsUrl(paramCodedInputStreamMicro.readString());
          break;
        case 42:
          setAddress(paramCodedInputStreamMicro.readString());
          break;
        case 50:
          setOriginalDescription(paramCodedInputStreamMicro.readString());
          break;
        case 58:
          setClusterId(paramCodedInputStreamMicro.readString());
          break;
        case 65:
          setLatSpanDegrees(paramCodedInputStreamMicro.readDouble());
          break;
        case 73:
          setLngSpanDegrees(paramCodedInputStreamMicro.readDouble());
          break;
        case 82:
          AliasProto.Alias localAlias = new AliasProto.Alias();
          paramCodedInputStreamMicro.readMessage(localAlias);
          setAlias(localAlias);
          break;
        case 90:
        }
        setAddressForMapImageUrl(paramCodedInputStreamMicro.readString());
      }
    }

    public Location setAddress(String paramString)
    {
      this.hasAddress = true;
      this.address_ = paramString;
      return this;
    }

    public Location setAddressForMapImageUrl(String paramString)
    {
      this.hasAddressForMapImageUrl = true;
      this.addressForMapImageUrl_ = paramString;
      return this;
    }

    public Location setAlias(AliasProto.Alias paramAlias)
    {
      if (paramAlias == null)
        throw new NullPointerException();
      this.hasAlias = true;
      this.alias_ = paramAlias;
      return this;
    }

    public Location setClusterId(String paramString)
    {
      this.hasClusterId = true;
      this.clusterId_ = paramString;
      return this;
    }

    public Location setDescription(String paramString)
    {
      this.hasDescription = true;
      this.description_ = paramString;
      return this;
    }

    public Location setLatDegrees(double paramDouble)
    {
      this.hasLatDegrees = true;
      this.latDegrees_ = paramDouble;
      return this;
    }

    public Location setLatSpanDegrees(double paramDouble)
    {
      this.hasLatSpanDegrees = true;
      this.latSpanDegrees_ = paramDouble;
      return this;
    }

    public Location setLngDegrees(double paramDouble)
    {
      this.hasLngDegrees = true;
      this.lngDegrees_ = paramDouble;
      return this;
    }

    public Location setLngSpanDegrees(double paramDouble)
    {
      this.hasLngSpanDegrees = true;
      this.lngSpanDegrees_ = paramDouble;
      return this;
    }

    public Location setMapsUrl(String paramString)
    {
      this.hasMapsUrl = true;
      this.mapsUrl_ = paramString;
      return this;
    }

    public Location setOriginalDescription(String paramString)
    {
      this.hasOriginalDescription = true;
      this.originalDescription_ = paramString;
      return this;
    }

    public void writeTo(CodedOutputStreamMicro paramCodedOutputStreamMicro)
      throws IOException
    {
      if (hasLatDegrees())
        paramCodedOutputStreamMicro.writeDouble(1, getLatDegrees());
      if (hasLngDegrees())
        paramCodedOutputStreamMicro.writeDouble(2, getLngDegrees());
      if (hasDescription())
        paramCodedOutputStreamMicro.writeString(3, getDescription());
      if (hasMapsUrl())
        paramCodedOutputStreamMicro.writeString(4, getMapsUrl());
      if (hasAddress())
        paramCodedOutputStreamMicro.writeString(5, getAddress());
      if (hasOriginalDescription())
        paramCodedOutputStreamMicro.writeString(6, getOriginalDescription());
      if (hasClusterId())
        paramCodedOutputStreamMicro.writeString(7, getClusterId());
      if (hasLatSpanDegrees())
        paramCodedOutputStreamMicro.writeDouble(8, getLatSpanDegrees());
      if (hasLngSpanDegrees())
        paramCodedOutputStreamMicro.writeDouble(9, getLngSpanDegrees());
      if (hasAlias())
        paramCodedOutputStreamMicro.writeMessage(10, getAlias());
      if (hasAddressForMapImageUrl())
        paramCodedOutputStreamMicro.writeString(11, getAddressForMapImageUrl());
    }
  }

  public static final class LocationTrigger extends MessageMicro
  {
    public static final int LOCAL_RESULT_CANDIDATE_LIST_FIELD_NUMBER = 3;
    public static final int LOCATION_FIELD_NUMBER = 1;
    public static final int TYPE_ARRIVING = 0;
    public static final int TYPE_EN_ROUTE = 1;
    public static final int TYPE_FIELD_NUMBER = 2;
    public static final int TYPE_LEAVING = 2;
    private int cachedSize = -1;
    private boolean hasLocation;
    private boolean hasType;
    private List<ActionV2Protos.LocalResultCandidateList> localResultCandidateList_ = Collections.emptyList();
    private ActionV2Protos.Location location_ = null;
    private int type_ = 0;

    public static LocationTrigger parseFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
      throws IOException
    {
      return new LocationTrigger().mergeFrom(paramCodedInputStreamMicro);
    }

    public static LocationTrigger parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferMicroException
    {
      return (LocationTrigger)new LocationTrigger().mergeFrom(paramArrayOfByte);
    }

    public LocationTrigger addLocalResultCandidateList(ActionV2Protos.LocalResultCandidateList paramLocalResultCandidateList)
    {
      if (paramLocalResultCandidateList == null)
        throw new NullPointerException();
      if (this.localResultCandidateList_.isEmpty())
        this.localResultCandidateList_ = new ArrayList();
      this.localResultCandidateList_.add(paramLocalResultCandidateList);
      return this;
    }

    public final LocationTrigger clear()
    {
      clearLocation();
      clearLocalResultCandidateList();
      clearType();
      this.cachedSize = -1;
      return this;
    }

    public LocationTrigger clearLocalResultCandidateList()
    {
      this.localResultCandidateList_ = Collections.emptyList();
      return this;
    }

    public LocationTrigger clearLocation()
    {
      this.hasLocation = false;
      this.location_ = null;
      return this;
    }

    public LocationTrigger clearType()
    {
      this.hasType = false;
      this.type_ = 0;
      return this;
    }

    public int getCachedSize()
    {
      if (this.cachedSize < 0)
        getSerializedSize();
      return this.cachedSize;
    }

    public ActionV2Protos.LocalResultCandidateList getLocalResultCandidateList(int paramInt)
    {
      return (ActionV2Protos.LocalResultCandidateList)this.localResultCandidateList_.get(paramInt);
    }

    public int getLocalResultCandidateListCount()
    {
      return this.localResultCandidateList_.size();
    }

    public List<ActionV2Protos.LocalResultCandidateList> getLocalResultCandidateListList()
    {
      return this.localResultCandidateList_;
    }

    public ActionV2Protos.Location getLocation()
    {
      return this.location_;
    }

    public int getSerializedSize()
    {
      boolean bool = hasLocation();
      int i = 0;
      if (bool)
        i = 0 + CodedOutputStreamMicro.computeMessageSize(1, getLocation());
      if (hasType())
        i += CodedOutputStreamMicro.computeInt32Size(2, getType());
      Iterator localIterator = getLocalResultCandidateListList().iterator();
      while (localIterator.hasNext())
        i += CodedOutputStreamMicro.computeMessageSize(3, (ActionV2Protos.LocalResultCandidateList)localIterator.next());
      this.cachedSize = i;
      return i;
    }

    public int getType()
    {
      return this.type_;
    }

    public boolean hasLocation()
    {
      return this.hasLocation;
    }

    public boolean hasType()
    {
      return this.hasType;
    }

    public final boolean isInitialized()
    {
      return true;
    }

    public LocationTrigger mergeFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
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
          ActionV2Protos.Location localLocation = new ActionV2Protos.Location();
          paramCodedInputStreamMicro.readMessage(localLocation);
          setLocation(localLocation);
          break;
        case 16:
          setType(paramCodedInputStreamMicro.readInt32());
          break;
        case 26:
        }
        ActionV2Protos.LocalResultCandidateList localLocalResultCandidateList = new ActionV2Protos.LocalResultCandidateList();
        paramCodedInputStreamMicro.readMessage(localLocalResultCandidateList);
        addLocalResultCandidateList(localLocalResultCandidateList);
      }
    }

    public LocationTrigger setLocalResultCandidateList(int paramInt, ActionV2Protos.LocalResultCandidateList paramLocalResultCandidateList)
    {
      if (paramLocalResultCandidateList == null)
        throw new NullPointerException();
      this.localResultCandidateList_.set(paramInt, paramLocalResultCandidateList);
      return this;
    }

    public LocationTrigger setLocation(ActionV2Protos.Location paramLocation)
    {
      if (paramLocation == null)
        throw new NullPointerException();
      this.hasLocation = true;
      this.location_ = paramLocation;
      return this;
    }

    public LocationTrigger setType(int paramInt)
    {
      this.hasType = true;
      this.type_ = paramInt;
      return this;
    }

    public void writeTo(CodedOutputStreamMicro paramCodedOutputStreamMicro)
      throws IOException
    {
      if (hasLocation())
        paramCodedOutputStreamMicro.writeMessage(1, getLocation());
      if (hasType())
        paramCodedOutputStreamMicro.writeInt32(2, getType());
      Iterator localIterator = getLocalResultCandidateListList().iterator();
      while (localIterator.hasNext())
        paramCodedOutputStreamMicro.writeMessage(3, (ActionV2Protos.LocalResultCandidateList)localIterator.next());
    }
  }

  public static final class MapAction extends MessageMicro
  {
    public static final int LOCATION_FIELD_NUMBER = 1;
    public static final int PREVIEW_IMAGE_URL_FIELD_NUMBER = 2;
    private int cachedSize = -1;
    private boolean hasPreviewImageUrl;
    private List<ActionV2Protos.Location> location_ = Collections.emptyList();
    private String previewImageUrl_ = "";

    public static MapAction parseFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
      throws IOException
    {
      return new MapAction().mergeFrom(paramCodedInputStreamMicro);
    }

    public static MapAction parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferMicroException
    {
      return (MapAction)new MapAction().mergeFrom(paramArrayOfByte);
    }

    public MapAction addLocation(ActionV2Protos.Location paramLocation)
    {
      if (paramLocation == null)
        throw new NullPointerException();
      if (this.location_.isEmpty())
        this.location_ = new ArrayList();
      this.location_.add(paramLocation);
      return this;
    }

    public final MapAction clear()
    {
      clearLocation();
      clearPreviewImageUrl();
      this.cachedSize = -1;
      return this;
    }

    public MapAction clearLocation()
    {
      this.location_ = Collections.emptyList();
      return this;
    }

    public MapAction clearPreviewImageUrl()
    {
      this.hasPreviewImageUrl = false;
      this.previewImageUrl_ = "";
      return this;
    }

    public int getCachedSize()
    {
      if (this.cachedSize < 0)
        getSerializedSize();
      return this.cachedSize;
    }

    public ActionV2Protos.Location getLocation(int paramInt)
    {
      return (ActionV2Protos.Location)this.location_.get(paramInt);
    }

    public int getLocationCount()
    {
      return this.location_.size();
    }

    public List<ActionV2Protos.Location> getLocationList()
    {
      return this.location_;
    }

    public String getPreviewImageUrl()
    {
      return this.previewImageUrl_;
    }

    public int getSerializedSize()
    {
      int i = 0;
      Iterator localIterator = getLocationList().iterator();
      while (localIterator.hasNext())
        i += CodedOutputStreamMicro.computeMessageSize(1, (ActionV2Protos.Location)localIterator.next());
      if (hasPreviewImageUrl())
        i += CodedOutputStreamMicro.computeStringSize(2, getPreviewImageUrl());
      this.cachedSize = i;
      return i;
    }

    public boolean hasPreviewImageUrl()
    {
      return this.hasPreviewImageUrl;
    }

    public final boolean isInitialized()
    {
      return true;
    }

    public MapAction mergeFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
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
          ActionV2Protos.Location localLocation = new ActionV2Protos.Location();
          paramCodedInputStreamMicro.readMessage(localLocation);
          addLocation(localLocation);
          break;
        case 18:
        }
        setPreviewImageUrl(paramCodedInputStreamMicro.readString());
      }
    }

    public MapAction setLocation(int paramInt, ActionV2Protos.Location paramLocation)
    {
      if (paramLocation == null)
        throw new NullPointerException();
      this.location_.set(paramInt, paramLocation);
      return this;
    }

    public MapAction setPreviewImageUrl(String paramString)
    {
      this.hasPreviewImageUrl = true;
      this.previewImageUrl_ = paramString;
      return this;
    }

    public void writeTo(CodedOutputStreamMicro paramCodedOutputStreamMicro)
      throws IOException
    {
      Iterator localIterator = getLocationList().iterator();
      while (localIterator.hasNext())
        paramCodedOutputStreamMicro.writeMessage(1, (ActionV2Protos.Location)localIterator.next());
      if (hasPreviewImageUrl())
        paramCodedOutputStreamMicro.writeString(2, getPreviewImageUrl());
    }
  }

  public static final class NavigationAction extends MessageMicro
  {
    public static final int DESTINATION_FIELD_NUMBER = 1;
    public static final int FROM_FIELD_NUMBER = 2;
    public static final int PREVIEW_IMAGE_URL_FIELD_NUMBER = 4;
    public static final int TRANSPORTATION_METHOD_FIELD_NUMBER = 3;
    private int cachedSize = -1;
    private ActionV2Protos.Location destination_ = null;
    private ActionV2Protos.Location from_ = null;
    private boolean hasDestination;
    private boolean hasFrom;
    private boolean hasPreviewImageUrl;
    private boolean hasTransportationMethod;
    private String previewImageUrl_ = "";
    private int transportationMethod_ = 0;

    public static NavigationAction parseFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
      throws IOException
    {
      return new NavigationAction().mergeFrom(paramCodedInputStreamMicro);
    }

    public static NavigationAction parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferMicroException
    {
      return (NavigationAction)new NavigationAction().mergeFrom(paramArrayOfByte);
    }

    public final NavigationAction clear()
    {
      clearDestination();
      clearFrom();
      clearTransportationMethod();
      clearPreviewImageUrl();
      this.cachedSize = -1;
      return this;
    }

    public NavigationAction clearDestination()
    {
      this.hasDestination = false;
      this.destination_ = null;
      return this;
    }

    public NavigationAction clearFrom()
    {
      this.hasFrom = false;
      this.from_ = null;
      return this;
    }

    public NavigationAction clearPreviewImageUrl()
    {
      this.hasPreviewImageUrl = false;
      this.previewImageUrl_ = "";
      return this;
    }

    public NavigationAction clearTransportationMethod()
    {
      this.hasTransportationMethod = false;
      this.transportationMethod_ = 0;
      return this;
    }

    public int getCachedSize()
    {
      if (this.cachedSize < 0)
        getSerializedSize();
      return this.cachedSize;
    }

    public ActionV2Protos.Location getDestination()
    {
      return this.destination_;
    }

    public ActionV2Protos.Location getFrom()
    {
      return this.from_;
    }

    public String getPreviewImageUrl()
    {
      return this.previewImageUrl_;
    }

    public int getSerializedSize()
    {
      boolean bool = hasDestination();
      int i = 0;
      if (bool)
        i = 0 + CodedOutputStreamMicro.computeMessageSize(1, getDestination());
      if (hasFrom())
        i += CodedOutputStreamMicro.computeMessageSize(2, getFrom());
      if (hasTransportationMethod())
        i += CodedOutputStreamMicro.computeInt32Size(3, getTransportationMethod());
      if (hasPreviewImageUrl())
        i += CodedOutputStreamMicro.computeStringSize(4, getPreviewImageUrl());
      this.cachedSize = i;
      return i;
    }

    public int getTransportationMethod()
    {
      return this.transportationMethod_;
    }

    public boolean hasDestination()
    {
      return this.hasDestination;
    }

    public boolean hasFrom()
    {
      return this.hasFrom;
    }

    public boolean hasPreviewImageUrl()
    {
      return this.hasPreviewImageUrl;
    }

    public boolean hasTransportationMethod()
    {
      return this.hasTransportationMethod;
    }

    public final boolean isInitialized()
    {
      return true;
    }

    public NavigationAction mergeFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
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
          ActionV2Protos.Location localLocation2 = new ActionV2Protos.Location();
          paramCodedInputStreamMicro.readMessage(localLocation2);
          setDestination(localLocation2);
          break;
        case 18:
          ActionV2Protos.Location localLocation1 = new ActionV2Protos.Location();
          paramCodedInputStreamMicro.readMessage(localLocation1);
          setFrom(localLocation1);
          break;
        case 24:
          setTransportationMethod(paramCodedInputStreamMicro.readInt32());
          break;
        case 34:
        }
        setPreviewImageUrl(paramCodedInputStreamMicro.readString());
      }
    }

    public NavigationAction setDestination(ActionV2Protos.Location paramLocation)
    {
      if (paramLocation == null)
        throw new NullPointerException();
      this.hasDestination = true;
      this.destination_ = paramLocation;
      return this;
    }

    public NavigationAction setFrom(ActionV2Protos.Location paramLocation)
    {
      if (paramLocation == null)
        throw new NullPointerException();
      this.hasFrom = true;
      this.from_ = paramLocation;
      return this;
    }

    public NavigationAction setPreviewImageUrl(String paramString)
    {
      this.hasPreviewImageUrl = true;
      this.previewImageUrl_ = paramString;
      return this;
    }

    public NavigationAction setTransportationMethod(int paramInt)
    {
      this.hasTransportationMethod = true;
      this.transportationMethod_ = paramInt;
      return this;
    }

    public void writeTo(CodedOutputStreamMicro paramCodedOutputStreamMicro)
      throws IOException
    {
      if (hasDestination())
        paramCodedOutputStreamMicro.writeMessage(1, getDestination());
      if (hasFrom())
        paramCodedOutputStreamMicro.writeMessage(2, getFrom());
      if (hasTransportationMethod())
        paramCodedOutputStreamMicro.writeInt32(3, getTransportationMethod());
      if (hasPreviewImageUrl())
        paramCodedOutputStreamMicro.writeString(4, getPreviewImageUrl());
    }
  }

  public static final class OpenApplicationAction extends MessageMicro
  {
    public static final int ARG_VALUE_FIELD_NUMBER = 3;
    public static final int INITIAL_ACTION_FIELD_NUMBER = 2;
    public static final int NAME_FIELD_NUMBER = 1;
    private List<ArgValue> argValue_ = Collections.emptyList();
    private int cachedSize = -1;
    private boolean hasInitialAction;
    private boolean hasName;
    private String initialAction_ = "";
    private String name_ = "";

    public static OpenApplicationAction parseFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
      throws IOException
    {
      return new OpenApplicationAction().mergeFrom(paramCodedInputStreamMicro);
    }

    public static OpenApplicationAction parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferMicroException
    {
      return (OpenApplicationAction)new OpenApplicationAction().mergeFrom(paramArrayOfByte);
    }

    public OpenApplicationAction addArgValue(ArgValue paramArgValue)
    {
      if (paramArgValue == null)
        throw new NullPointerException();
      if (this.argValue_.isEmpty())
        this.argValue_ = new ArrayList();
      this.argValue_.add(paramArgValue);
      return this;
    }

    public final OpenApplicationAction clear()
    {
      clearName();
      clearInitialAction();
      clearArgValue();
      this.cachedSize = -1;
      return this;
    }

    public OpenApplicationAction clearArgValue()
    {
      this.argValue_ = Collections.emptyList();
      return this;
    }

    public OpenApplicationAction clearInitialAction()
    {
      this.hasInitialAction = false;
      this.initialAction_ = "";
      return this;
    }

    public OpenApplicationAction clearName()
    {
      this.hasName = false;
      this.name_ = "";
      return this;
    }

    public ArgValue getArgValue(int paramInt)
    {
      return (ArgValue)this.argValue_.get(paramInt);
    }

    public int getArgValueCount()
    {
      return this.argValue_.size();
    }

    public List<ArgValue> getArgValueList()
    {
      return this.argValue_;
    }

    public int getCachedSize()
    {
      if (this.cachedSize < 0)
        getSerializedSize();
      return this.cachedSize;
    }

    public String getInitialAction()
    {
      return this.initialAction_;
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
      if (hasInitialAction())
        i += CodedOutputStreamMicro.computeStringSize(2, getInitialAction());
      Iterator localIterator = getArgValueList().iterator();
      while (localIterator.hasNext())
        i += CodedOutputStreamMicro.computeMessageSize(3, (ArgValue)localIterator.next());
      this.cachedSize = i;
      return i;
    }

    public boolean hasInitialAction()
    {
      return this.hasInitialAction;
    }

    public boolean hasName()
    {
      return this.hasName;
    }

    public final boolean isInitialized()
    {
      return true;
    }

    public OpenApplicationAction mergeFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
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
        case 18:
          setInitialAction(paramCodedInputStreamMicro.readString());
          break;
        case 26:
        }
        ArgValue localArgValue = new ArgValue();
        paramCodedInputStreamMicro.readMessage(localArgValue);
        addArgValue(localArgValue);
      }
    }

    public OpenApplicationAction setArgValue(int paramInt, ArgValue paramArgValue)
    {
      if (paramArgValue == null)
        throw new NullPointerException();
      this.argValue_.set(paramInt, paramArgValue);
      return this;
    }

    public OpenApplicationAction setInitialAction(String paramString)
    {
      this.hasInitialAction = true;
      this.initialAction_ = paramString;
      return this;
    }

    public OpenApplicationAction setName(String paramString)
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
      if (hasInitialAction())
        paramCodedOutputStreamMicro.writeString(2, getInitialAction());
      Iterator localIterator = getArgValueList().iterator();
      while (localIterator.hasNext())
        paramCodedOutputStreamMicro.writeMessage(3, (ArgValue)localIterator.next());
    }

    public static final class ArgValue extends MessageMicro
    {
      public static final int ARG_NAME_FIELD_NUMBER = 1;
      public static final int BOOL_VALUE_FIELD_NUMBER = 3;
      public static final int DOUBLE_VALUE_FIELD_NUMBER = 5;
      public static final int INT_VALUE_FIELD_NUMBER = 4;
      public static final int STRING_VALUE_FIELD_NUMBER = 2;
      private String argName_ = "";
      private boolean boolValue_ = false;
      private int cachedSize = -1;
      private double doubleValue_ = 0.0D;
      private boolean hasArgName;
      private boolean hasBoolValue;
      private boolean hasDoubleValue;
      private boolean hasIntValue;
      private boolean hasStringValue;
      private int intValue_ = 0;
      private String stringValue_ = "";

      public final ArgValue clear()
      {
        clearArgName();
        clearStringValue();
        clearBoolValue();
        clearIntValue();
        clearDoubleValue();
        this.cachedSize = -1;
        return this;
      }

      public ArgValue clearArgName()
      {
        this.hasArgName = false;
        this.argName_ = "";
        return this;
      }

      public ArgValue clearBoolValue()
      {
        this.hasBoolValue = false;
        this.boolValue_ = false;
        return this;
      }

      public ArgValue clearDoubleValue()
      {
        this.hasDoubleValue = false;
        this.doubleValue_ = 0.0D;
        return this;
      }

      public ArgValue clearIntValue()
      {
        this.hasIntValue = false;
        this.intValue_ = 0;
        return this;
      }

      public ArgValue clearStringValue()
      {
        this.hasStringValue = false;
        this.stringValue_ = "";
        return this;
      }

      public String getArgName()
      {
        return this.argName_;
      }

      public boolean getBoolValue()
      {
        return this.boolValue_;
      }

      public int getCachedSize()
      {
        if (this.cachedSize < 0)
          getSerializedSize();
        return this.cachedSize;
      }

      public double getDoubleValue()
      {
        return this.doubleValue_;
      }

      public int getIntValue()
      {
        return this.intValue_;
      }

      public int getSerializedSize()
      {
        boolean bool = hasArgName();
        int i = 0;
        if (bool)
          i = 0 + CodedOutputStreamMicro.computeStringSize(1, getArgName());
        if (hasStringValue())
          i += CodedOutputStreamMicro.computeStringSize(2, getStringValue());
        if (hasBoolValue())
          i += CodedOutputStreamMicro.computeBoolSize(3, getBoolValue());
        if (hasIntValue())
          i += CodedOutputStreamMicro.computeInt32Size(4, getIntValue());
        if (hasDoubleValue())
          i += CodedOutputStreamMicro.computeDoubleSize(5, getDoubleValue());
        this.cachedSize = i;
        return i;
      }

      public String getStringValue()
      {
        return this.stringValue_;
      }

      public boolean hasArgName()
      {
        return this.hasArgName;
      }

      public boolean hasBoolValue()
      {
        return this.hasBoolValue;
      }

      public boolean hasDoubleValue()
      {
        return this.hasDoubleValue;
      }

      public boolean hasIntValue()
      {
        return this.hasIntValue;
      }

      public boolean hasStringValue()
      {
        return this.hasStringValue;
      }

      public final boolean isInitialized()
      {
        return true;
      }

      public ArgValue mergeFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
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
            setArgName(paramCodedInputStreamMicro.readString());
            break;
          case 18:
            setStringValue(paramCodedInputStreamMicro.readString());
            break;
          case 24:
            setBoolValue(paramCodedInputStreamMicro.readBool());
            break;
          case 32:
            setIntValue(paramCodedInputStreamMicro.readInt32());
            break;
          case 41:
          }
          setDoubleValue(paramCodedInputStreamMicro.readDouble());
        }
      }

      public ArgValue parseFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
        throws IOException
      {
        return new ArgValue().mergeFrom(paramCodedInputStreamMicro);
      }

      public ArgValue parseFrom(byte[] paramArrayOfByte)
        throws InvalidProtocolBufferMicroException
      {
        return (ArgValue)new ArgValue().mergeFrom(paramArrayOfByte);
      }

      public ArgValue setArgName(String paramString)
      {
        this.hasArgName = true;
        this.argName_ = paramString;
        return this;
      }

      public ArgValue setBoolValue(boolean paramBoolean)
      {
        this.hasBoolValue = true;
        this.boolValue_ = paramBoolean;
        return this;
      }

      public ArgValue setDoubleValue(double paramDouble)
      {
        this.hasDoubleValue = true;
        this.doubleValue_ = paramDouble;
        return this;
      }

      public ArgValue setIntValue(int paramInt)
      {
        this.hasIntValue = true;
        this.intValue_ = paramInt;
        return this;
      }

      public ArgValue setStringValue(String paramString)
      {
        this.hasStringValue = true;
        this.stringValue_ = paramString;
        return this;
      }

      public void writeTo(CodedOutputStreamMicro paramCodedOutputStreamMicro)
        throws IOException
      {
        if (hasArgName())
          paramCodedOutputStreamMicro.writeString(1, getArgName());
        if (hasStringValue())
          paramCodedOutputStreamMicro.writeString(2, getStringValue());
        if (hasBoolValue())
          paramCodedOutputStreamMicro.writeBool(3, getBoolValue());
        if (hasIntValue())
          paramCodedOutputStreamMicro.writeInt32(4, getIntValue());
        if (hasDoubleValue())
          paramCodedOutputStreamMicro.writeDouble(5, getDoubleValue());
      }
    }
  }

  public static final class OpenURLAction extends MessageMicro
  {
    public static final int DISPLAY_URL_FIELD_NUMBER = 2;
    public static final int NAME_FIELD_NUMBER = 3;
    public static final int URL_FIELD_NUMBER = 1;
    private int cachedSize = -1;
    private String displayUrl_ = "";
    private boolean hasDisplayUrl;
    private boolean hasName;
    private boolean hasUrl;
    private String name_ = "";
    private String url_ = "";

    public static OpenURLAction parseFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
      throws IOException
    {
      return new OpenURLAction().mergeFrom(paramCodedInputStreamMicro);
    }

    public static OpenURLAction parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferMicroException
    {
      return (OpenURLAction)new OpenURLAction().mergeFrom(paramArrayOfByte);
    }

    public final OpenURLAction clear()
    {
      clearUrl();
      clearDisplayUrl();
      clearName();
      this.cachedSize = -1;
      return this;
    }

    public OpenURLAction clearDisplayUrl()
    {
      this.hasDisplayUrl = false;
      this.displayUrl_ = "";
      return this;
    }

    public OpenURLAction clearName()
    {
      this.hasName = false;
      this.name_ = "";
      return this;
    }

    public OpenURLAction clearUrl()
    {
      this.hasUrl = false;
      this.url_ = "";
      return this;
    }

    public int getCachedSize()
    {
      if (this.cachedSize < 0)
        getSerializedSize();
      return this.cachedSize;
    }

    public String getDisplayUrl()
    {
      return this.displayUrl_;
    }

    public String getName()
    {
      return this.name_;
    }

    public int getSerializedSize()
    {
      boolean bool = hasUrl();
      int i = 0;
      if (bool)
        i = 0 + CodedOutputStreamMicro.computeStringSize(1, getUrl());
      if (hasDisplayUrl())
        i += CodedOutputStreamMicro.computeStringSize(2, getDisplayUrl());
      if (hasName())
        i += CodedOutputStreamMicro.computeStringSize(3, getName());
      this.cachedSize = i;
      return i;
    }

    public String getUrl()
    {
      return this.url_;
    }

    public boolean hasDisplayUrl()
    {
      return this.hasDisplayUrl;
    }

    public boolean hasName()
    {
      return this.hasName;
    }

    public boolean hasUrl()
    {
      return this.hasUrl;
    }

    public final boolean isInitialized()
    {
      return true;
    }

    public OpenURLAction mergeFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
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
          setUrl(paramCodedInputStreamMicro.readString());
          break;
        case 18:
          setDisplayUrl(paramCodedInputStreamMicro.readString());
          break;
        case 26:
        }
        setName(paramCodedInputStreamMicro.readString());
      }
    }

    public OpenURLAction setDisplayUrl(String paramString)
    {
      this.hasDisplayUrl = true;
      this.displayUrl_ = paramString;
      return this;
    }

    public OpenURLAction setName(String paramString)
    {
      this.hasName = true;
      this.name_ = paramString;
      return this;
    }

    public OpenURLAction setUrl(String paramString)
    {
      this.hasUrl = true;
      this.url_ = paramString;
      return this;
    }

    public void writeTo(CodedOutputStreamMicro paramCodedOutputStreamMicro)
      throws IOException
    {
      if (hasUrl())
        paramCodedOutputStreamMicro.writeString(1, getUrl());
      if (hasDisplayUrl())
        paramCodedOutputStreamMicro.writeString(2, getDisplayUrl());
      if (hasName())
        paramCodedOutputStreamMicro.writeString(3, getName());
    }
  }

  public static final class PhoneAction extends MessageMicro
  {
    public static final int CONTACT_FIELD_NUMBER = 2;
    private int cachedSize = -1;
    private List<ActionV2Protos.ActionContact> contact_ = Collections.emptyList();

    public static PhoneAction parseFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
      throws IOException
    {
      return new PhoneAction().mergeFrom(paramCodedInputStreamMicro);
    }

    public static PhoneAction parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferMicroException
    {
      return (PhoneAction)new PhoneAction().mergeFrom(paramArrayOfByte);
    }

    public PhoneAction addContact(ActionV2Protos.ActionContact paramActionContact)
    {
      if (paramActionContact == null)
        throw new NullPointerException();
      if (this.contact_.isEmpty())
        this.contact_ = new ArrayList();
      this.contact_.add(paramActionContact);
      return this;
    }

    public final PhoneAction clear()
    {
      clearContact();
      this.cachedSize = -1;
      return this;
    }

    public PhoneAction clearContact()
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

    public ActionV2Protos.ActionContact getContact(int paramInt)
    {
      return (ActionV2Protos.ActionContact)this.contact_.get(paramInt);
    }

    public int getContactCount()
    {
      return this.contact_.size();
    }

    public List<ActionV2Protos.ActionContact> getContactList()
    {
      return this.contact_;
    }

    public int getSerializedSize()
    {
      int i = 0;
      Iterator localIterator = getContactList().iterator();
      while (localIterator.hasNext())
        i += CodedOutputStreamMicro.computeMessageSize(2, (ActionV2Protos.ActionContact)localIterator.next());
      this.cachedSize = i;
      return i;
    }

    public final boolean isInitialized()
    {
      return true;
    }

    public PhoneAction mergeFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
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
        }
        ActionV2Protos.ActionContact localActionContact = new ActionV2Protos.ActionContact();
        paramCodedInputStreamMicro.readMessage(localActionContact);
        addContact(localActionContact);
      }
    }

    public PhoneAction setContact(int paramInt, ActionV2Protos.ActionContact paramActionContact)
    {
      if (paramActionContact == null)
        throw new NullPointerException();
      this.contact_.set(paramInt, paramActionContact);
      return this;
    }

    public void writeTo(CodedOutputStreamMicro paramCodedOutputStreamMicro)
      throws IOException
    {
      Iterator localIterator = getContactList().iterator();
      while (localIterator.hasNext())
        paramCodedOutputStreamMicro.writeMessage(2, (ActionV2Protos.ActionContact)localIterator.next());
    }
  }

  public static final class PlayMediaAction extends MessageMicro
  {
    public static final int APP_ITEM_FIELD_NUMBER = 21;
    public static final int BOOK_ITEM_FIELD_NUMBER = 8;
    public static final int FINSKY_DOCID_FIELD_NUMBER = 18;
    public static final int FINSKY_FETCH_DOCID_FIELD_NUMBER = 19;
    public static final int INTENT_FLAG_FIELD_NUMBER = 22;
    public static final int INTENT_FLAG_INTENT_PURCHASE = 1;
    public static final int INTENT_FLAG_INTENT_RENT = 2;
    public static final int IS_FROM_SOUND_SEARCH_FIELD_NUMBER = 20;
    public static final int ITEM_IMAGE_FIELD_NUMBER = 10;
    public static final int ITEM_IMAGE_URL_FIELD_NUMBER = 11;
    public static final int ITEM_NUMBER_OF_RATINGS_FIELD_NUMBER = 17;
    public static final int ITEM_OWNED_BY_USER_FIELD_NUMBER = 13;
    public static final int ITEM_PREVIEW_URL_FIELD_NUMBER = 12;
    public static final int ITEM_PRICE_TAG_FIELD_NUMBER = 15;
    public static final int ITEM_RATING_FIELD_NUMBER = 16;
    public static final int ITEM_REMAINING_RENTAL_SECONDS_FIELD_NUMBER = 14;
    public static final int MEDIA_SOURCE_FIELD_NUMBER = 3;
    public static final int MEDIA_SOURCE_PLAY_STORE = 3;
    public static final int MOVIE_ITEM_FIELD_NUMBER = 7;
    public static final int MUSIC_ITEM_FIELD_NUMBER = 6;
    public static final int NAME_FIELD_NUMBER = 1;
    public static final int SUGGESTED_QUERY_FIELD_NUMBER = 9;
    public static final int TARGET_FIELD_NUMBER = 5;
    public static final int URL_FIELD_NUMBER = 4;
    private AppItem appItem_ = null;
    private BookItem bookItem_ = null;
    private int cachedSize = -1;
    private String finskyDocid_ = "";
    private String finskyFetchDocid_ = "";
    private boolean hasAppItem;
    private boolean hasBookItem;
    private boolean hasFinskyDocid;
    private boolean hasFinskyFetchDocid;
    private boolean hasIsFromSoundSearch;
    private boolean hasItemImage;
    private boolean hasItemImageUrl;
    private boolean hasItemNumberOfRatings;
    private boolean hasItemOwnedByUser;
    private boolean hasItemPreviewUrl;
    private boolean hasItemRating;
    private boolean hasItemRemainingRentalSeconds;
    private boolean hasMediaSource;
    private boolean hasMovieItem;
    private boolean hasMusicItem;
    private boolean hasName;
    private boolean hasSuggestedQuery;
    private boolean hasTarget;
    private boolean hasUrl;
    private List<Integer> intentFlag_ = Collections.emptyList();
    private boolean isFromSoundSearch_ = false;
    private String itemImageUrl_ = "";
    private ByteStringMicro itemImage_ = ByteStringMicro.EMPTY;
    private int itemNumberOfRatings_ = 0;
    private boolean itemOwnedByUser_ = false;
    private String itemPreviewUrl_ = "";
    private List<PriceTag> itemPriceTag_ = Collections.emptyList();
    private double itemRating_ = 0.0D;
    private long itemRemainingRentalSeconds_ = 0L;
    private int mediaSource_ = 0;
    private MovieItem movieItem_ = null;
    private MusicItem musicItem_ = null;
    private String name_ = "";
    private String suggestedQuery_ = "";
    private String target_ = "";
    private String url_ = "";

    public static PlayMediaAction parseFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
      throws IOException
    {
      return new PlayMediaAction().mergeFrom(paramCodedInputStreamMicro);
    }

    public static PlayMediaAction parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferMicroException
    {
      return (PlayMediaAction)new PlayMediaAction().mergeFrom(paramArrayOfByte);
    }

    public PlayMediaAction addIntentFlag(int paramInt)
    {
      if (this.intentFlag_.isEmpty())
        this.intentFlag_ = new ArrayList();
      this.intentFlag_.add(Integer.valueOf(paramInt));
      return this;
    }

    public PlayMediaAction addItemPriceTag(PriceTag paramPriceTag)
    {
      if (paramPriceTag == null)
        throw new NullPointerException();
      if (this.itemPriceTag_.isEmpty())
        this.itemPriceTag_ = new ArrayList();
      this.itemPriceTag_.add(paramPriceTag);
      return this;
    }

    public final PlayMediaAction clear()
    {
      clearName();
      clearMediaSource();
      clearMusicItem();
      clearMovieItem();
      clearBookItem();
      clearAppItem();
      clearSuggestedQuery();
      clearUrl();
      clearItemImage();
      clearItemImageUrl();
      clearItemPreviewUrl();
      clearItemOwnedByUser();
      clearItemRemainingRentalSeconds();
      clearItemPriceTag();
      clearItemRating();
      clearItemNumberOfRatings();
      clearFinskyDocid();
      clearFinskyFetchDocid();
      clearIsFromSoundSearch();
      clearTarget();
      clearIntentFlag();
      this.cachedSize = -1;
      return this;
    }

    public PlayMediaAction clearAppItem()
    {
      this.hasAppItem = false;
      this.appItem_ = null;
      return this;
    }

    public PlayMediaAction clearBookItem()
    {
      this.hasBookItem = false;
      this.bookItem_ = null;
      return this;
    }

    public PlayMediaAction clearFinskyDocid()
    {
      this.hasFinskyDocid = false;
      this.finskyDocid_ = "";
      return this;
    }

    public PlayMediaAction clearFinskyFetchDocid()
    {
      this.hasFinskyFetchDocid = false;
      this.finskyFetchDocid_ = "";
      return this;
    }

    public PlayMediaAction clearIntentFlag()
    {
      this.intentFlag_ = Collections.emptyList();
      return this;
    }

    public PlayMediaAction clearIsFromSoundSearch()
    {
      this.hasIsFromSoundSearch = false;
      this.isFromSoundSearch_ = false;
      return this;
    }

    public PlayMediaAction clearItemImage()
    {
      this.hasItemImage = false;
      this.itemImage_ = ByteStringMicro.EMPTY;
      return this;
    }

    public PlayMediaAction clearItemImageUrl()
    {
      this.hasItemImageUrl = false;
      this.itemImageUrl_ = "";
      return this;
    }

    public PlayMediaAction clearItemNumberOfRatings()
    {
      this.hasItemNumberOfRatings = false;
      this.itemNumberOfRatings_ = 0;
      return this;
    }

    public PlayMediaAction clearItemOwnedByUser()
    {
      this.hasItemOwnedByUser = false;
      this.itemOwnedByUser_ = false;
      return this;
    }

    public PlayMediaAction clearItemPreviewUrl()
    {
      this.hasItemPreviewUrl = false;
      this.itemPreviewUrl_ = "";
      return this;
    }

    public PlayMediaAction clearItemPriceTag()
    {
      this.itemPriceTag_ = Collections.emptyList();
      return this;
    }

    public PlayMediaAction clearItemRating()
    {
      this.hasItemRating = false;
      this.itemRating_ = 0.0D;
      return this;
    }

    public PlayMediaAction clearItemRemainingRentalSeconds()
    {
      this.hasItemRemainingRentalSeconds = false;
      this.itemRemainingRentalSeconds_ = 0L;
      return this;
    }

    public PlayMediaAction clearMediaSource()
    {
      this.hasMediaSource = false;
      this.mediaSource_ = 0;
      return this;
    }

    public PlayMediaAction clearMovieItem()
    {
      this.hasMovieItem = false;
      this.movieItem_ = null;
      return this;
    }

    public PlayMediaAction clearMusicItem()
    {
      this.hasMusicItem = false;
      this.musicItem_ = null;
      return this;
    }

    public PlayMediaAction clearName()
    {
      this.hasName = false;
      this.name_ = "";
      return this;
    }

    public PlayMediaAction clearSuggestedQuery()
    {
      this.hasSuggestedQuery = false;
      this.suggestedQuery_ = "";
      return this;
    }

    public PlayMediaAction clearTarget()
    {
      this.hasTarget = false;
      this.target_ = "";
      return this;
    }

    public PlayMediaAction clearUrl()
    {
      this.hasUrl = false;
      this.url_ = "";
      return this;
    }

    public AppItem getAppItem()
    {
      return this.appItem_;
    }

    public BookItem getBookItem()
    {
      return this.bookItem_;
    }

    public int getCachedSize()
    {
      if (this.cachedSize < 0)
        getSerializedSize();
      return this.cachedSize;
    }

    public String getFinskyDocid()
    {
      return this.finskyDocid_;
    }

    public String getFinskyFetchDocid()
    {
      return this.finskyFetchDocid_;
    }

    public int getIntentFlag(int paramInt)
    {
      return ((Integer)this.intentFlag_.get(paramInt)).intValue();
    }

    public int getIntentFlagCount()
    {
      return this.intentFlag_.size();
    }

    public List<Integer> getIntentFlagList()
    {
      return this.intentFlag_;
    }

    public boolean getIsFromSoundSearch()
    {
      return this.isFromSoundSearch_;
    }

    public ByteStringMicro getItemImage()
    {
      return this.itemImage_;
    }

    public String getItemImageUrl()
    {
      return this.itemImageUrl_;
    }

    public int getItemNumberOfRatings()
    {
      return this.itemNumberOfRatings_;
    }

    public boolean getItemOwnedByUser()
    {
      return this.itemOwnedByUser_;
    }

    public String getItemPreviewUrl()
    {
      return this.itemPreviewUrl_;
    }

    public PriceTag getItemPriceTag(int paramInt)
    {
      return (PriceTag)this.itemPriceTag_.get(paramInt);
    }

    public int getItemPriceTagCount()
    {
      return this.itemPriceTag_.size();
    }

    public List<PriceTag> getItemPriceTagList()
    {
      return this.itemPriceTag_;
    }

    public double getItemRating()
    {
      return this.itemRating_;
    }

    public long getItemRemainingRentalSeconds()
    {
      return this.itemRemainingRentalSeconds_;
    }

    public int getMediaSource()
    {
      return this.mediaSource_;
    }

    public MovieItem getMovieItem()
    {
      return this.movieItem_;
    }

    public MusicItem getMusicItem()
    {
      return this.musicItem_;
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
      if (hasMediaSource())
        i += CodedOutputStreamMicro.computeInt32Size(3, getMediaSource());
      if (hasUrl())
        i += CodedOutputStreamMicro.computeStringSize(4, getUrl());
      if (hasTarget())
        i += CodedOutputStreamMicro.computeStringSize(5, getTarget());
      if (hasMusicItem())
        i += CodedOutputStreamMicro.computeMessageSize(6, getMusicItem());
      if (hasMovieItem())
        i += CodedOutputStreamMicro.computeMessageSize(7, getMovieItem());
      if (hasBookItem())
        i += CodedOutputStreamMicro.computeMessageSize(8, getBookItem());
      if (hasSuggestedQuery())
        i += CodedOutputStreamMicro.computeStringSize(9, getSuggestedQuery());
      if (hasItemImage())
        i += CodedOutputStreamMicro.computeBytesSize(10, getItemImage());
      if (hasItemImageUrl())
        i += CodedOutputStreamMicro.computeStringSize(11, getItemImageUrl());
      if (hasItemPreviewUrl())
        i += CodedOutputStreamMicro.computeStringSize(12, getItemPreviewUrl());
      if (hasItemOwnedByUser())
        i += CodedOutputStreamMicro.computeBoolSize(13, getItemOwnedByUser());
      if (hasItemRemainingRentalSeconds())
        i += CodedOutputStreamMicro.computeInt64Size(14, getItemRemainingRentalSeconds());
      Iterator localIterator1 = getItemPriceTagList().iterator();
      while (localIterator1.hasNext())
        i += CodedOutputStreamMicro.computeMessageSize(15, (PriceTag)localIterator1.next());
      if (hasItemRating())
        i += CodedOutputStreamMicro.computeDoubleSize(16, getItemRating());
      if (hasItemNumberOfRatings())
        i += CodedOutputStreamMicro.computeInt32Size(17, getItemNumberOfRatings());
      if (hasFinskyDocid())
        i += CodedOutputStreamMicro.computeStringSize(18, getFinskyDocid());
      if (hasFinskyFetchDocid())
        i += CodedOutputStreamMicro.computeStringSize(19, getFinskyFetchDocid());
      if (hasIsFromSoundSearch())
        i += CodedOutputStreamMicro.computeBoolSize(20, getIsFromSoundSearch());
      if (hasAppItem())
        i += CodedOutputStreamMicro.computeMessageSize(21, getAppItem());
      int j = 0;
      Iterator localIterator2 = getIntentFlagList().iterator();
      while (localIterator2.hasNext())
        j += CodedOutputStreamMicro.computeInt32SizeNoTag(((Integer)localIterator2.next()).intValue());
      int k = i + j + 2 * getIntentFlagList().size();
      this.cachedSize = k;
      return k;
    }

    public String getSuggestedQuery()
    {
      return this.suggestedQuery_;
    }

    public String getTarget()
    {
      return this.target_;
    }

    public String getUrl()
    {
      return this.url_;
    }

    public boolean hasAppItem()
    {
      return this.hasAppItem;
    }

    public boolean hasBookItem()
    {
      return this.hasBookItem;
    }

    public boolean hasFinskyDocid()
    {
      return this.hasFinskyDocid;
    }

    public boolean hasFinskyFetchDocid()
    {
      return this.hasFinskyFetchDocid;
    }

    public boolean hasIsFromSoundSearch()
    {
      return this.hasIsFromSoundSearch;
    }

    public boolean hasItemImage()
    {
      return this.hasItemImage;
    }

    public boolean hasItemImageUrl()
    {
      return this.hasItemImageUrl;
    }

    public boolean hasItemNumberOfRatings()
    {
      return this.hasItemNumberOfRatings;
    }

    public boolean hasItemOwnedByUser()
    {
      return this.hasItemOwnedByUser;
    }

    public boolean hasItemPreviewUrl()
    {
      return this.hasItemPreviewUrl;
    }

    public boolean hasItemRating()
    {
      return this.hasItemRating;
    }

    public boolean hasItemRemainingRentalSeconds()
    {
      return this.hasItemRemainingRentalSeconds;
    }

    public boolean hasMediaSource()
    {
      return this.hasMediaSource;
    }

    public boolean hasMovieItem()
    {
      return this.hasMovieItem;
    }

    public boolean hasMusicItem()
    {
      return this.hasMusicItem;
    }

    public boolean hasName()
    {
      return this.hasName;
    }

    public boolean hasSuggestedQuery()
    {
      return this.hasSuggestedQuery;
    }

    public boolean hasTarget()
    {
      return this.hasTarget;
    }

    public boolean hasUrl()
    {
      return this.hasUrl;
    }

    public final boolean isInitialized()
    {
      return true;
    }

    public PlayMediaAction mergeFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
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
        case 24:
          setMediaSource(paramCodedInputStreamMicro.readInt32());
          break;
        case 34:
          setUrl(paramCodedInputStreamMicro.readString());
          break;
        case 42:
          setTarget(paramCodedInputStreamMicro.readString());
          break;
        case 50:
          MusicItem localMusicItem = new MusicItem();
          paramCodedInputStreamMicro.readMessage(localMusicItem);
          setMusicItem(localMusicItem);
          break;
        case 58:
          MovieItem localMovieItem = new MovieItem();
          paramCodedInputStreamMicro.readMessage(localMovieItem);
          setMovieItem(localMovieItem);
          break;
        case 66:
          BookItem localBookItem = new BookItem();
          paramCodedInputStreamMicro.readMessage(localBookItem);
          setBookItem(localBookItem);
          break;
        case 74:
          setSuggestedQuery(paramCodedInputStreamMicro.readString());
          break;
        case 82:
          setItemImage(paramCodedInputStreamMicro.readBytes());
          break;
        case 90:
          setItemImageUrl(paramCodedInputStreamMicro.readString());
          break;
        case 98:
          setItemPreviewUrl(paramCodedInputStreamMicro.readString());
          break;
        case 104:
          setItemOwnedByUser(paramCodedInputStreamMicro.readBool());
          break;
        case 112:
          setItemRemainingRentalSeconds(paramCodedInputStreamMicro.readInt64());
          break;
        case 122:
          PriceTag localPriceTag = new PriceTag();
          paramCodedInputStreamMicro.readMessage(localPriceTag);
          addItemPriceTag(localPriceTag);
          break;
        case 129:
          setItemRating(paramCodedInputStreamMicro.readDouble());
          break;
        case 136:
          setItemNumberOfRatings(paramCodedInputStreamMicro.readInt32());
          break;
        case 146:
          setFinskyDocid(paramCodedInputStreamMicro.readString());
          break;
        case 154:
          setFinskyFetchDocid(paramCodedInputStreamMicro.readString());
          break;
        case 160:
          setIsFromSoundSearch(paramCodedInputStreamMicro.readBool());
          break;
        case 170:
          AppItem localAppItem = new AppItem();
          paramCodedInputStreamMicro.readMessage(localAppItem);
          setAppItem(localAppItem);
          break;
        case 176:
        }
        addIntentFlag(paramCodedInputStreamMicro.readInt32());
      }
    }

    public PlayMediaAction setAppItem(AppItem paramAppItem)
    {
      if (paramAppItem == null)
        throw new NullPointerException();
      this.hasAppItem = true;
      this.appItem_ = paramAppItem;
      return this;
    }

    public PlayMediaAction setBookItem(BookItem paramBookItem)
    {
      if (paramBookItem == null)
        throw new NullPointerException();
      this.hasBookItem = true;
      this.bookItem_ = paramBookItem;
      return this;
    }

    public PlayMediaAction setFinskyDocid(String paramString)
    {
      this.hasFinskyDocid = true;
      this.finskyDocid_ = paramString;
      return this;
    }

    public PlayMediaAction setFinskyFetchDocid(String paramString)
    {
      this.hasFinskyFetchDocid = true;
      this.finskyFetchDocid_ = paramString;
      return this;
    }

    public PlayMediaAction setIntentFlag(int paramInt1, int paramInt2)
    {
      this.intentFlag_.set(paramInt1, Integer.valueOf(paramInt2));
      return this;
    }

    public PlayMediaAction setIsFromSoundSearch(boolean paramBoolean)
    {
      this.hasIsFromSoundSearch = true;
      this.isFromSoundSearch_ = paramBoolean;
      return this;
    }

    public PlayMediaAction setItemImage(ByteStringMicro paramByteStringMicro)
    {
      this.hasItemImage = true;
      this.itemImage_ = paramByteStringMicro;
      return this;
    }

    public PlayMediaAction setItemImageUrl(String paramString)
    {
      this.hasItemImageUrl = true;
      this.itemImageUrl_ = paramString;
      return this;
    }

    public PlayMediaAction setItemNumberOfRatings(int paramInt)
    {
      this.hasItemNumberOfRatings = true;
      this.itemNumberOfRatings_ = paramInt;
      return this;
    }

    public PlayMediaAction setItemOwnedByUser(boolean paramBoolean)
    {
      this.hasItemOwnedByUser = true;
      this.itemOwnedByUser_ = paramBoolean;
      return this;
    }

    public PlayMediaAction setItemPreviewUrl(String paramString)
    {
      this.hasItemPreviewUrl = true;
      this.itemPreviewUrl_ = paramString;
      return this;
    }

    public PlayMediaAction setItemPriceTag(int paramInt, PriceTag paramPriceTag)
    {
      if (paramPriceTag == null)
        throw new NullPointerException();
      this.itemPriceTag_.set(paramInt, paramPriceTag);
      return this;
    }

    public PlayMediaAction setItemRating(double paramDouble)
    {
      this.hasItemRating = true;
      this.itemRating_ = paramDouble;
      return this;
    }

    public PlayMediaAction setItemRemainingRentalSeconds(long paramLong)
    {
      this.hasItemRemainingRentalSeconds = true;
      this.itemRemainingRentalSeconds_ = paramLong;
      return this;
    }

    public PlayMediaAction setMediaSource(int paramInt)
    {
      this.hasMediaSource = true;
      this.mediaSource_ = paramInt;
      return this;
    }

    public PlayMediaAction setMovieItem(MovieItem paramMovieItem)
    {
      if (paramMovieItem == null)
        throw new NullPointerException();
      this.hasMovieItem = true;
      this.movieItem_ = paramMovieItem;
      return this;
    }

    public PlayMediaAction setMusicItem(MusicItem paramMusicItem)
    {
      if (paramMusicItem == null)
        throw new NullPointerException();
      this.hasMusicItem = true;
      this.musicItem_ = paramMusicItem;
      return this;
    }

    public PlayMediaAction setName(String paramString)
    {
      this.hasName = true;
      this.name_ = paramString;
      return this;
    }

    public PlayMediaAction setSuggestedQuery(String paramString)
    {
      this.hasSuggestedQuery = true;
      this.suggestedQuery_ = paramString;
      return this;
    }

    public PlayMediaAction setTarget(String paramString)
    {
      this.hasTarget = true;
      this.target_ = paramString;
      return this;
    }

    public PlayMediaAction setUrl(String paramString)
    {
      this.hasUrl = true;
      this.url_ = paramString;
      return this;
    }

    public void writeTo(CodedOutputStreamMicro paramCodedOutputStreamMicro)
      throws IOException
    {
      if (hasName())
        paramCodedOutputStreamMicro.writeString(1, getName());
      if (hasMediaSource())
        paramCodedOutputStreamMicro.writeInt32(3, getMediaSource());
      if (hasUrl())
        paramCodedOutputStreamMicro.writeString(4, getUrl());
      if (hasTarget())
        paramCodedOutputStreamMicro.writeString(5, getTarget());
      if (hasMusicItem())
        paramCodedOutputStreamMicro.writeMessage(6, getMusicItem());
      if (hasMovieItem())
        paramCodedOutputStreamMicro.writeMessage(7, getMovieItem());
      if (hasBookItem())
        paramCodedOutputStreamMicro.writeMessage(8, getBookItem());
      if (hasSuggestedQuery())
        paramCodedOutputStreamMicro.writeString(9, getSuggestedQuery());
      if (hasItemImage())
        paramCodedOutputStreamMicro.writeBytes(10, getItemImage());
      if (hasItemImageUrl())
        paramCodedOutputStreamMicro.writeString(11, getItemImageUrl());
      if (hasItemPreviewUrl())
        paramCodedOutputStreamMicro.writeString(12, getItemPreviewUrl());
      if (hasItemOwnedByUser())
        paramCodedOutputStreamMicro.writeBool(13, getItemOwnedByUser());
      if (hasItemRemainingRentalSeconds())
        paramCodedOutputStreamMicro.writeInt64(14, getItemRemainingRentalSeconds());
      Iterator localIterator1 = getItemPriceTagList().iterator();
      while (localIterator1.hasNext())
        paramCodedOutputStreamMicro.writeMessage(15, (PriceTag)localIterator1.next());
      if (hasItemRating())
        paramCodedOutputStreamMicro.writeDouble(16, getItemRating());
      if (hasItemNumberOfRatings())
        paramCodedOutputStreamMicro.writeInt32(17, getItemNumberOfRatings());
      if (hasFinskyDocid())
        paramCodedOutputStreamMicro.writeString(18, getFinskyDocid());
      if (hasFinskyFetchDocid())
        paramCodedOutputStreamMicro.writeString(19, getFinskyFetchDocid());
      if (hasIsFromSoundSearch())
        paramCodedOutputStreamMicro.writeBool(20, getIsFromSoundSearch());
      if (hasAppItem())
        paramCodedOutputStreamMicro.writeMessage(21, getAppItem());
      Iterator localIterator2 = getIntentFlagList().iterator();
      while (localIterator2.hasNext())
        paramCodedOutputStreamMicro.writeInt32(22, ((Integer)localIterator2.next()).intValue());
    }

    public static final class AppItem extends MessageMicro
    {
      public static final int DEVELOPER_FIELD_NUMBER = 3;
      public static final int NAME_FIELD_NUMBER = 1;
      public static final int PACKAGE_NAME_FIELD_NUMBER = 2;
      private int cachedSize = -1;
      private String developer_ = "";
      private boolean hasDeveloper;
      private boolean hasName;
      private boolean hasPackageName;
      private String name_ = "";
      private String packageName_ = "";

      public final AppItem clear()
      {
        clearName();
        clearPackageName();
        clearDeveloper();
        this.cachedSize = -1;
        return this;
      }

      public AppItem clearDeveloper()
      {
        this.hasDeveloper = false;
        this.developer_ = "";
        return this;
      }

      public AppItem clearName()
      {
        this.hasName = false;
        this.name_ = "";
        return this;
      }

      public AppItem clearPackageName()
      {
        this.hasPackageName = false;
        this.packageName_ = "";
        return this;
      }

      public int getCachedSize()
      {
        if (this.cachedSize < 0)
          getSerializedSize();
        return this.cachedSize;
      }

      public String getDeveloper()
      {
        return this.developer_;
      }

      public String getName()
      {
        return this.name_;
      }

      public String getPackageName()
      {
        return this.packageName_;
      }

      public int getSerializedSize()
      {
        boolean bool = hasName();
        int i = 0;
        if (bool)
          i = 0 + CodedOutputStreamMicro.computeStringSize(1, getName());
        if (hasPackageName())
          i += CodedOutputStreamMicro.computeStringSize(2, getPackageName());
        if (hasDeveloper())
          i += CodedOutputStreamMicro.computeStringSize(3, getDeveloper());
        this.cachedSize = i;
        return i;
      }

      public boolean hasDeveloper()
      {
        return this.hasDeveloper;
      }

      public boolean hasName()
      {
        return this.hasName;
      }

      public boolean hasPackageName()
      {
        return this.hasPackageName;
      }

      public final boolean isInitialized()
      {
        return true;
      }

      public AppItem mergeFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
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
          case 18:
            setPackageName(paramCodedInputStreamMicro.readString());
            break;
          case 26:
          }
          setDeveloper(paramCodedInputStreamMicro.readString());
        }
      }

      public AppItem parseFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
        throws IOException
      {
        return new AppItem().mergeFrom(paramCodedInputStreamMicro);
      }

      public AppItem parseFrom(byte[] paramArrayOfByte)
        throws InvalidProtocolBufferMicroException
      {
        return (AppItem)new AppItem().mergeFrom(paramArrayOfByte);
      }

      public AppItem setDeveloper(String paramString)
      {
        this.hasDeveloper = true;
        this.developer_ = paramString;
        return this;
      }

      public AppItem setName(String paramString)
      {
        this.hasName = true;
        this.name_ = paramString;
        return this;
      }

      public AppItem setPackageName(String paramString)
      {
        this.hasPackageName = true;
        this.packageName_ = paramString;
        return this;
      }

      public void writeTo(CodedOutputStreamMicro paramCodedOutputStreamMicro)
        throws IOException
      {
        if (hasName())
          paramCodedOutputStreamMicro.writeString(1, getName());
        if (hasPackageName())
          paramCodedOutputStreamMicro.writeString(2, getPackageName());
        if (hasDeveloper())
          paramCodedOutputStreamMicro.writeString(3, getDeveloper());
      }
    }

    public static final class BookItem extends MessageMicro
    {
      public static final int AUTHOR_FIELD_NUMBER = 1;
      public static final int BOOK_APP_URL_FIELD_NUMBER = 6;
      public static final int GENRE_FIELD_NUMBER = 3;
      public static final int TITLE_FIELD_NUMBER = 2;
      private String author_ = "";
      private String bookAppUrl_ = "";
      private int cachedSize = -1;
      private String genre_ = "";
      private boolean hasAuthor;
      private boolean hasBookAppUrl;
      private boolean hasGenre;
      private boolean hasTitle;
      private String title_ = "";

      public final BookItem clear()
      {
        clearAuthor();
        clearTitle();
        clearGenre();
        clearBookAppUrl();
        this.cachedSize = -1;
        return this;
      }

      public BookItem clearAuthor()
      {
        this.hasAuthor = false;
        this.author_ = "";
        return this;
      }

      public BookItem clearBookAppUrl()
      {
        this.hasBookAppUrl = false;
        this.bookAppUrl_ = "";
        return this;
      }

      public BookItem clearGenre()
      {
        this.hasGenre = false;
        this.genre_ = "";
        return this;
      }

      public BookItem clearTitle()
      {
        this.hasTitle = false;
        this.title_ = "";
        return this;
      }

      public String getAuthor()
      {
        return this.author_;
      }

      public String getBookAppUrl()
      {
        return this.bookAppUrl_;
      }

      public int getCachedSize()
      {
        if (this.cachedSize < 0)
          getSerializedSize();
        return this.cachedSize;
      }

      public String getGenre()
      {
        return this.genre_;
      }

      public int getSerializedSize()
      {
        boolean bool = hasAuthor();
        int i = 0;
        if (bool)
          i = 0 + CodedOutputStreamMicro.computeStringSize(1, getAuthor());
        if (hasTitle())
          i += CodedOutputStreamMicro.computeStringSize(2, getTitle());
        if (hasGenre())
          i += CodedOutputStreamMicro.computeStringSize(3, getGenre());
        if (hasBookAppUrl())
          i += CodedOutputStreamMicro.computeStringSize(6, getBookAppUrl());
        this.cachedSize = i;
        return i;
      }

      public String getTitle()
      {
        return this.title_;
      }

      public boolean hasAuthor()
      {
        return this.hasAuthor;
      }

      public boolean hasBookAppUrl()
      {
        return this.hasBookAppUrl;
      }

      public boolean hasGenre()
      {
        return this.hasGenre;
      }

      public boolean hasTitle()
      {
        return this.hasTitle;
      }

      public final boolean isInitialized()
      {
        return true;
      }

      public BookItem mergeFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
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
            setAuthor(paramCodedInputStreamMicro.readString());
            break;
          case 18:
            setTitle(paramCodedInputStreamMicro.readString());
            break;
          case 26:
            setGenre(paramCodedInputStreamMicro.readString());
            break;
          case 50:
          }
          setBookAppUrl(paramCodedInputStreamMicro.readString());
        }
      }

      public BookItem parseFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
        throws IOException
      {
        return new BookItem().mergeFrom(paramCodedInputStreamMicro);
      }

      public BookItem parseFrom(byte[] paramArrayOfByte)
        throws InvalidProtocolBufferMicroException
      {
        return (BookItem)new BookItem().mergeFrom(paramArrayOfByte);
      }

      public BookItem setAuthor(String paramString)
      {
        this.hasAuthor = true;
        this.author_ = paramString;
        return this;
      }

      public BookItem setBookAppUrl(String paramString)
      {
        this.hasBookAppUrl = true;
        this.bookAppUrl_ = paramString;
        return this;
      }

      public BookItem setGenre(String paramString)
      {
        this.hasGenre = true;
        this.genre_ = paramString;
        return this;
      }

      public BookItem setTitle(String paramString)
      {
        this.hasTitle = true;
        this.title_ = paramString;
        return this;
      }

      public void writeTo(CodedOutputStreamMicro paramCodedOutputStreamMicro)
        throws IOException
      {
        if (hasAuthor())
          paramCodedOutputStreamMicro.writeString(1, getAuthor());
        if (hasTitle())
          paramCodedOutputStreamMicro.writeString(2, getTitle());
        if (hasGenre())
          paramCodedOutputStreamMicro.writeString(3, getGenre());
        if (hasBookAppUrl())
          paramCodedOutputStreamMicro.writeString(6, getBookAppUrl());
      }
    }

    public static final class MovieItem extends MessageMicro
    {
      public static final int GENRE_FIELD_NUMBER = 3;
      public static final int MOVIE_APP_URL_FIELD_NUMBER = 6;
      public static final int PLAY_TIME_MINUTES_FIELD_NUMBER = 2;
      public static final int RELEASE_DATE_FIELD_NUMBER = 4;
      public static final int TITLE_FIELD_NUMBER = 1;
      private int cachedSize = -1;
      private String genre_ = "";
      private boolean hasGenre;
      private boolean hasMovieAppUrl;
      private boolean hasPlayTimeMinutes;
      private boolean hasReleaseDate;
      private boolean hasTitle;
      private String movieAppUrl_ = "";
      private int playTimeMinutes_ = 0;
      private ActionDateTimeProtos.ActionDate releaseDate_ = null;
      private String title_ = "";

      public final MovieItem clear()
      {
        clearTitle();
        clearPlayTimeMinutes();
        clearGenre();
        clearReleaseDate();
        clearMovieAppUrl();
        this.cachedSize = -1;
        return this;
      }

      public MovieItem clearGenre()
      {
        this.hasGenre = false;
        this.genre_ = "";
        return this;
      }

      public MovieItem clearMovieAppUrl()
      {
        this.hasMovieAppUrl = false;
        this.movieAppUrl_ = "";
        return this;
      }

      public MovieItem clearPlayTimeMinutes()
      {
        this.hasPlayTimeMinutes = false;
        this.playTimeMinutes_ = 0;
        return this;
      }

      public MovieItem clearReleaseDate()
      {
        this.hasReleaseDate = false;
        this.releaseDate_ = null;
        return this;
      }

      public MovieItem clearTitle()
      {
        this.hasTitle = false;
        this.title_ = "";
        return this;
      }

      public int getCachedSize()
      {
        if (this.cachedSize < 0)
          getSerializedSize();
        return this.cachedSize;
      }

      public String getGenre()
      {
        return this.genre_;
      }

      public String getMovieAppUrl()
      {
        return this.movieAppUrl_;
      }

      public int getPlayTimeMinutes()
      {
        return this.playTimeMinutes_;
      }

      public ActionDateTimeProtos.ActionDate getReleaseDate()
      {
        return this.releaseDate_;
      }

      public int getSerializedSize()
      {
        boolean bool = hasTitle();
        int i = 0;
        if (bool)
          i = 0 + CodedOutputStreamMicro.computeStringSize(1, getTitle());
        if (hasPlayTimeMinutes())
          i += CodedOutputStreamMicro.computeInt32Size(2, getPlayTimeMinutes());
        if (hasGenre())
          i += CodedOutputStreamMicro.computeStringSize(3, getGenre());
        if (hasReleaseDate())
          i += CodedOutputStreamMicro.computeMessageSize(4, getReleaseDate());
        if (hasMovieAppUrl())
          i += CodedOutputStreamMicro.computeStringSize(6, getMovieAppUrl());
        this.cachedSize = i;
        return i;
      }

      public String getTitle()
      {
        return this.title_;
      }

      public boolean hasGenre()
      {
        return this.hasGenre;
      }

      public boolean hasMovieAppUrl()
      {
        return this.hasMovieAppUrl;
      }

      public boolean hasPlayTimeMinutes()
      {
        return this.hasPlayTimeMinutes;
      }

      public boolean hasReleaseDate()
      {
        return this.hasReleaseDate;
      }

      public boolean hasTitle()
      {
        return this.hasTitle;
      }

      public final boolean isInitialized()
      {
        return true;
      }

      public MovieItem mergeFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
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
            setTitle(paramCodedInputStreamMicro.readString());
            break;
          case 16:
            setPlayTimeMinutes(paramCodedInputStreamMicro.readInt32());
            break;
          case 26:
            setGenre(paramCodedInputStreamMicro.readString());
            break;
          case 34:
            ActionDateTimeProtos.ActionDate localActionDate = new ActionDateTimeProtos.ActionDate();
            paramCodedInputStreamMicro.readMessage(localActionDate);
            setReleaseDate(localActionDate);
            break;
          case 50:
          }
          setMovieAppUrl(paramCodedInputStreamMicro.readString());
        }
      }

      public MovieItem parseFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
        throws IOException
      {
        return new MovieItem().mergeFrom(paramCodedInputStreamMicro);
      }

      public MovieItem parseFrom(byte[] paramArrayOfByte)
        throws InvalidProtocolBufferMicroException
      {
        return (MovieItem)new MovieItem().mergeFrom(paramArrayOfByte);
      }

      public MovieItem setGenre(String paramString)
      {
        this.hasGenre = true;
        this.genre_ = paramString;
        return this;
      }

      public MovieItem setMovieAppUrl(String paramString)
      {
        this.hasMovieAppUrl = true;
        this.movieAppUrl_ = paramString;
        return this;
      }

      public MovieItem setPlayTimeMinutes(int paramInt)
      {
        this.hasPlayTimeMinutes = true;
        this.playTimeMinutes_ = paramInt;
        return this;
      }

      public MovieItem setReleaseDate(ActionDateTimeProtos.ActionDate paramActionDate)
      {
        if (paramActionDate == null)
          throw new NullPointerException();
        this.hasReleaseDate = true;
        this.releaseDate_ = paramActionDate;
        return this;
      }

      public MovieItem setTitle(String paramString)
      {
        this.hasTitle = true;
        this.title_ = paramString;
        return this;
      }

      public void writeTo(CodedOutputStreamMicro paramCodedOutputStreamMicro)
        throws IOException
      {
        if (hasTitle())
          paramCodedOutputStreamMicro.writeString(1, getTitle());
        if (hasPlayTimeMinutes())
          paramCodedOutputStreamMicro.writeInt32(2, getPlayTimeMinutes());
        if (hasGenre())
          paramCodedOutputStreamMicro.writeString(3, getGenre());
        if (hasReleaseDate())
          paramCodedOutputStreamMicro.writeMessage(4, getReleaseDate());
        if (hasMovieAppUrl())
          paramCodedOutputStreamMicro.writeString(6, getMovieAppUrl());
      }
    }

    public static final class MusicItem extends MessageMicro
    {
      public static final int ALBUM_FIELD_NUMBER = 2;
      public static final int ARTIST_FIELD_NUMBER = 1;
      public static final int GENRE_FIELD_NUMBER = 4;
      public static final int IS_EXPLICIT_FIELD_NUMBER = 5;
      public static final int SONG_FIELD_NUMBER = 3;
      private String album_ = "";
      private String artist_ = "";
      private int cachedSize = -1;
      private String genre_ = "";
      private boolean hasAlbum;
      private boolean hasArtist;
      private boolean hasGenre;
      private boolean hasIsExplicit;
      private boolean hasSong;
      private boolean isExplicit_ = false;
      private String song_ = "";

      public final MusicItem clear()
      {
        clearArtist();
        clearAlbum();
        clearSong();
        clearGenre();
        clearIsExplicit();
        this.cachedSize = -1;
        return this;
      }

      public MusicItem clearAlbum()
      {
        this.hasAlbum = false;
        this.album_ = "";
        return this;
      }

      public MusicItem clearArtist()
      {
        this.hasArtist = false;
        this.artist_ = "";
        return this;
      }

      public MusicItem clearGenre()
      {
        this.hasGenre = false;
        this.genre_ = "";
        return this;
      }

      public MusicItem clearIsExplicit()
      {
        this.hasIsExplicit = false;
        this.isExplicit_ = false;
        return this;
      }

      public MusicItem clearSong()
      {
        this.hasSong = false;
        this.song_ = "";
        return this;
      }

      public String getAlbum()
      {
        return this.album_;
      }

      public String getArtist()
      {
        return this.artist_;
      }

      public int getCachedSize()
      {
        if (this.cachedSize < 0)
          getSerializedSize();
        return this.cachedSize;
      }

      public String getGenre()
      {
        return this.genre_;
      }

      public boolean getIsExplicit()
      {
        return this.isExplicit_;
      }

      public int getSerializedSize()
      {
        boolean bool = hasArtist();
        int i = 0;
        if (bool)
          i = 0 + CodedOutputStreamMicro.computeStringSize(1, getArtist());
        if (hasAlbum())
          i += CodedOutputStreamMicro.computeStringSize(2, getAlbum());
        if (hasSong())
          i += CodedOutputStreamMicro.computeStringSize(3, getSong());
        if (hasGenre())
          i += CodedOutputStreamMicro.computeStringSize(4, getGenre());
        if (hasIsExplicit())
          i += CodedOutputStreamMicro.computeBoolSize(5, getIsExplicit());
        this.cachedSize = i;
        return i;
      }

      public String getSong()
      {
        return this.song_;
      }

      public boolean hasAlbum()
      {
        return this.hasAlbum;
      }

      public boolean hasArtist()
      {
        return this.hasArtist;
      }

      public boolean hasGenre()
      {
        return this.hasGenre;
      }

      public boolean hasIsExplicit()
      {
        return this.hasIsExplicit;
      }

      public boolean hasSong()
      {
        return this.hasSong;
      }

      public final boolean isInitialized()
      {
        return true;
      }

      public MusicItem mergeFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
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
            setArtist(paramCodedInputStreamMicro.readString());
            break;
          case 18:
            setAlbum(paramCodedInputStreamMicro.readString());
            break;
          case 26:
            setSong(paramCodedInputStreamMicro.readString());
            break;
          case 34:
            setGenre(paramCodedInputStreamMicro.readString());
            break;
          case 40:
          }
          setIsExplicit(paramCodedInputStreamMicro.readBool());
        }
      }

      public MusicItem parseFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
        throws IOException
      {
        return new MusicItem().mergeFrom(paramCodedInputStreamMicro);
      }

      public MusicItem parseFrom(byte[] paramArrayOfByte)
        throws InvalidProtocolBufferMicroException
      {
        return (MusicItem)new MusicItem().mergeFrom(paramArrayOfByte);
      }

      public MusicItem setAlbum(String paramString)
      {
        this.hasAlbum = true;
        this.album_ = paramString;
        return this;
      }

      public MusicItem setArtist(String paramString)
      {
        this.hasArtist = true;
        this.artist_ = paramString;
        return this;
      }

      public MusicItem setGenre(String paramString)
      {
        this.hasGenre = true;
        this.genre_ = paramString;
        return this;
      }

      public MusicItem setIsExplicit(boolean paramBoolean)
      {
        this.hasIsExplicit = true;
        this.isExplicit_ = paramBoolean;
        return this;
      }

      public MusicItem setSong(String paramString)
      {
        this.hasSong = true;
        this.song_ = paramString;
        return this;
      }

      public void writeTo(CodedOutputStreamMicro paramCodedOutputStreamMicro)
        throws IOException
      {
        if (hasArtist())
          paramCodedOutputStreamMicro.writeString(1, getArtist());
        if (hasAlbum())
          paramCodedOutputStreamMicro.writeString(2, getAlbum());
        if (hasSong())
          paramCodedOutputStreamMicro.writeString(3, getSong());
        if (hasGenre())
          paramCodedOutputStreamMicro.writeString(4, getGenre());
        if (hasIsExplicit())
          paramCodedOutputStreamMicro.writeBool(5, getIsExplicit());
      }
    }

    public static final class PriceTag extends MessageMicro
    {
      public static final int PRICE_FIELD_NUMBER = 2;
      public static final int PRICE_TYPE_FIELD_NUMBER = 1;
      private int cachedSize = -1;
      private boolean hasPrice;
      private boolean hasPriceType;
      private String priceType_ = "";
      private String price_ = "";

      public final PriceTag clear()
      {
        clearPriceType();
        clearPrice();
        this.cachedSize = -1;
        return this;
      }

      public PriceTag clearPrice()
      {
        this.hasPrice = false;
        this.price_ = "";
        return this;
      }

      public PriceTag clearPriceType()
      {
        this.hasPriceType = false;
        this.priceType_ = "";
        return this;
      }

      public int getCachedSize()
      {
        if (this.cachedSize < 0)
          getSerializedSize();
        return this.cachedSize;
      }

      public String getPrice()
      {
        return this.price_;
      }

      public String getPriceType()
      {
        return this.priceType_;
      }

      public int getSerializedSize()
      {
        boolean bool = hasPriceType();
        int i = 0;
        if (bool)
          i = 0 + CodedOutputStreamMicro.computeStringSize(1, getPriceType());
        if (hasPrice())
          i += CodedOutputStreamMicro.computeStringSize(2, getPrice());
        this.cachedSize = i;
        return i;
      }

      public boolean hasPrice()
      {
        return this.hasPrice;
      }

      public boolean hasPriceType()
      {
        return this.hasPriceType;
      }

      public final boolean isInitialized()
      {
        return true;
      }

      public PriceTag mergeFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
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
            setPriceType(paramCodedInputStreamMicro.readString());
            break;
          case 18:
          }
          setPrice(paramCodedInputStreamMicro.readString());
        }
      }

      public PriceTag parseFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
        throws IOException
      {
        return new PriceTag().mergeFrom(paramCodedInputStreamMicro);
      }

      public PriceTag parseFrom(byte[] paramArrayOfByte)
        throws InvalidProtocolBufferMicroException
      {
        return (PriceTag)new PriceTag().mergeFrom(paramArrayOfByte);
      }

      public PriceTag setPrice(String paramString)
      {
        this.hasPrice = true;
        this.price_ = paramString;
        return this;
      }

      public PriceTag setPriceType(String paramString)
      {
        this.hasPriceType = true;
        this.priceType_ = paramString;
        return this;
      }

      public void writeTo(CodedOutputStreamMicro paramCodedOutputStreamMicro)
        throws IOException
      {
        if (hasPriceType())
          paramCodedOutputStreamMicro.writeString(1, getPriceType());
        if (hasPrice())
          paramCodedOutputStreamMicro.writeString(2, getPrice());
      }
    }
  }

  public static final class SMSAction extends MessageMicro
  {
    public static final int CONTACT_FIELD_NUMBER = 2;
    public static final int CONTACT_NAME_FIELD_NUMBER = 1;
    public static final int MESSAGE_BODY_FIELD_NUMBER = 3;
    public static final int MESSAGE_BODY_SPAN_FIELD_NUMBER = 4;
    public static final int RECIPIENT_FIELD_NUMBER = 5;
    private int cachedSize = -1;
    private String contactName_ = "";
    private ActionV2Protos.ActionContact contact_ = null;
    private boolean hasContact;
    private boolean hasContactName;
    private boolean hasMessageBody;
    private List<SpanProtos.Span> messageBodySpan_ = Collections.emptyList();
    private String messageBody_ = "";
    private List<ActionV2Protos.ActionContactGroup> recipient_ = Collections.emptyList();

    public static SMSAction parseFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
      throws IOException
    {
      return new SMSAction().mergeFrom(paramCodedInputStreamMicro);
    }

    public static SMSAction parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferMicroException
    {
      return (SMSAction)new SMSAction().mergeFrom(paramArrayOfByte);
    }

    public SMSAction addMessageBodySpan(SpanProtos.Span paramSpan)
    {
      if (paramSpan == null)
        throw new NullPointerException();
      if (this.messageBodySpan_.isEmpty())
        this.messageBodySpan_ = new ArrayList();
      this.messageBodySpan_.add(paramSpan);
      return this;
    }

    public SMSAction addRecipient(ActionV2Protos.ActionContactGroup paramActionContactGroup)
    {
      if (paramActionContactGroup == null)
        throw new NullPointerException();
      if (this.recipient_.isEmpty())
        this.recipient_ = new ArrayList();
      this.recipient_.add(paramActionContactGroup);
      return this;
    }

    public final SMSAction clear()
    {
      clearContactName();
      clearContact();
      clearRecipient();
      clearMessageBody();
      clearMessageBodySpan();
      this.cachedSize = -1;
      return this;
    }

    public SMSAction clearContact()
    {
      this.hasContact = false;
      this.contact_ = null;
      return this;
    }

    public SMSAction clearContactName()
    {
      this.hasContactName = false;
      this.contactName_ = "";
      return this;
    }

    public SMSAction clearMessageBody()
    {
      this.hasMessageBody = false;
      this.messageBody_ = "";
      return this;
    }

    public SMSAction clearMessageBodySpan()
    {
      this.messageBodySpan_ = Collections.emptyList();
      return this;
    }

    public SMSAction clearRecipient()
    {
      this.recipient_ = Collections.emptyList();
      return this;
    }

    public int getCachedSize()
    {
      if (this.cachedSize < 0)
        getSerializedSize();
      return this.cachedSize;
    }

    public ActionV2Protos.ActionContact getContact()
    {
      return this.contact_;
    }

    public String getContactName()
    {
      return this.contactName_;
    }

    public String getMessageBody()
    {
      return this.messageBody_;
    }

    public SpanProtos.Span getMessageBodySpan(int paramInt)
    {
      return (SpanProtos.Span)this.messageBodySpan_.get(paramInt);
    }

    public int getMessageBodySpanCount()
    {
      return this.messageBodySpan_.size();
    }

    public List<SpanProtos.Span> getMessageBodySpanList()
    {
      return this.messageBodySpan_;
    }

    public ActionV2Protos.ActionContactGroup getRecipient(int paramInt)
    {
      return (ActionV2Protos.ActionContactGroup)this.recipient_.get(paramInt);
    }

    public int getRecipientCount()
    {
      return this.recipient_.size();
    }

    public List<ActionV2Protos.ActionContactGroup> getRecipientList()
    {
      return this.recipient_;
    }

    public int getSerializedSize()
    {
      boolean bool = hasContactName();
      int i = 0;
      if (bool)
        i = 0 + CodedOutputStreamMicro.computeStringSize(1, getContactName());
      if (hasContact())
        i += CodedOutputStreamMicro.computeMessageSize(2, getContact());
      if (hasMessageBody())
        i += CodedOutputStreamMicro.computeStringSize(3, getMessageBody());
      Iterator localIterator1 = getMessageBodySpanList().iterator();
      while (localIterator1.hasNext())
        i += CodedOutputStreamMicro.computeMessageSize(4, (SpanProtos.Span)localIterator1.next());
      Iterator localIterator2 = getRecipientList().iterator();
      while (localIterator2.hasNext())
        i += CodedOutputStreamMicro.computeMessageSize(5, (ActionV2Protos.ActionContactGroup)localIterator2.next());
      this.cachedSize = i;
      return i;
    }

    public boolean hasContact()
    {
      return this.hasContact;
    }

    public boolean hasContactName()
    {
      return this.hasContactName;
    }

    public boolean hasMessageBody()
    {
      return this.hasMessageBody;
    }

    public final boolean isInitialized()
    {
      return true;
    }

    public SMSAction mergeFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
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
          setContactName(paramCodedInputStreamMicro.readString());
          break;
        case 18:
          ActionV2Protos.ActionContact localActionContact = new ActionV2Protos.ActionContact();
          paramCodedInputStreamMicro.readMessage(localActionContact);
          setContact(localActionContact);
          break;
        case 26:
          setMessageBody(paramCodedInputStreamMicro.readString());
          break;
        case 34:
          SpanProtos.Span localSpan = new SpanProtos.Span();
          paramCodedInputStreamMicro.readMessage(localSpan);
          addMessageBodySpan(localSpan);
          break;
        case 42:
        }
        ActionV2Protos.ActionContactGroup localActionContactGroup = new ActionV2Protos.ActionContactGroup();
        paramCodedInputStreamMicro.readMessage(localActionContactGroup);
        addRecipient(localActionContactGroup);
      }
    }

    public SMSAction setContact(ActionV2Protos.ActionContact paramActionContact)
    {
      if (paramActionContact == null)
        throw new NullPointerException();
      this.hasContact = true;
      this.contact_ = paramActionContact;
      return this;
    }

    public SMSAction setContactName(String paramString)
    {
      this.hasContactName = true;
      this.contactName_ = paramString;
      return this;
    }

    public SMSAction setMessageBody(String paramString)
    {
      this.hasMessageBody = true;
      this.messageBody_ = paramString;
      return this;
    }

    public SMSAction setMessageBodySpan(int paramInt, SpanProtos.Span paramSpan)
    {
      if (paramSpan == null)
        throw new NullPointerException();
      this.messageBodySpan_.set(paramInt, paramSpan);
      return this;
    }

    public SMSAction setRecipient(int paramInt, ActionV2Protos.ActionContactGroup paramActionContactGroup)
    {
      if (paramActionContactGroup == null)
        throw new NullPointerException();
      this.recipient_.set(paramInt, paramActionContactGroup);
      return this;
    }

    public void writeTo(CodedOutputStreamMicro paramCodedOutputStreamMicro)
      throws IOException
    {
      if (hasContactName())
        paramCodedOutputStreamMicro.writeString(1, getContactName());
      if (hasContact())
        paramCodedOutputStreamMicro.writeMessage(2, getContact());
      if (hasMessageBody())
        paramCodedOutputStreamMicro.writeString(3, getMessageBody());
      Iterator localIterator1 = getMessageBodySpanList().iterator();
      while (localIterator1.hasNext())
        paramCodedOutputStreamMicro.writeMessage(4, (SpanProtos.Span)localIterator1.next());
      Iterator localIterator2 = getRecipientList().iterator();
      while (localIterator2.hasNext())
        paramCodedOutputStreamMicro.writeMessage(5, (ActionV2Protos.ActionContactGroup)localIterator2.next());
    }
  }

  public static final class SelfNoteAction extends MessageMicro
  {
    public static final int BODY_FIELD_NUMBER = 2;
    public static final int BODY_SPAN_FIELD_NUMBER = 4;
    public static final int DEPRECATED_SUBJECT_FIELD_NUMBER = 1;
    public static final int DEPRECATED_SUBJECT_SPAN_FIELD_NUMBER = 3;
    private SpanProtos.Span bodySpan_ = null;
    private String body_ = "";
    private int cachedSize = -1;
    private SpanProtos.Span dEPRECATEDSubjectSpan_ = null;
    private String dEPRECATEDSubject_ = "";
    private boolean hasBody;
    private boolean hasBodySpan;
    private boolean hasDEPRECATEDSubject;
    private boolean hasDEPRECATEDSubjectSpan;

    public static SelfNoteAction parseFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
      throws IOException
    {
      return new SelfNoteAction().mergeFrom(paramCodedInputStreamMicro);
    }

    public static SelfNoteAction parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferMicroException
    {
      return (SelfNoteAction)new SelfNoteAction().mergeFrom(paramArrayOfByte);
    }

    public final SelfNoteAction clear()
    {
      clearDEPRECATEDSubject();
      clearDEPRECATEDSubjectSpan();
      clearBody();
      clearBodySpan();
      this.cachedSize = -1;
      return this;
    }

    public SelfNoteAction clearBody()
    {
      this.hasBody = false;
      this.body_ = "";
      return this;
    }

    public SelfNoteAction clearBodySpan()
    {
      this.hasBodySpan = false;
      this.bodySpan_ = null;
      return this;
    }

    public SelfNoteAction clearDEPRECATEDSubject()
    {
      this.hasDEPRECATEDSubject = false;
      this.dEPRECATEDSubject_ = "";
      return this;
    }

    public SelfNoteAction clearDEPRECATEDSubjectSpan()
    {
      this.hasDEPRECATEDSubjectSpan = false;
      this.dEPRECATEDSubjectSpan_ = null;
      return this;
    }

    public String getBody()
    {
      return this.body_;
    }

    public SpanProtos.Span getBodySpan()
    {
      return this.bodySpan_;
    }

    public int getCachedSize()
    {
      if (this.cachedSize < 0)
        getSerializedSize();
      return this.cachedSize;
    }

    public String getDEPRECATEDSubject()
    {
      return this.dEPRECATEDSubject_;
    }

    public SpanProtos.Span getDEPRECATEDSubjectSpan()
    {
      return this.dEPRECATEDSubjectSpan_;
    }

    public int getSerializedSize()
    {
      boolean bool = hasDEPRECATEDSubject();
      int i = 0;
      if (bool)
        i = 0 + CodedOutputStreamMicro.computeStringSize(1, getDEPRECATEDSubject());
      if (hasBody())
        i += CodedOutputStreamMicro.computeStringSize(2, getBody());
      if (hasDEPRECATEDSubjectSpan())
        i += CodedOutputStreamMicro.computeMessageSize(3, getDEPRECATEDSubjectSpan());
      if (hasBodySpan())
        i += CodedOutputStreamMicro.computeMessageSize(4, getBodySpan());
      this.cachedSize = i;
      return i;
    }

    public boolean hasBody()
    {
      return this.hasBody;
    }

    public boolean hasBodySpan()
    {
      return this.hasBodySpan;
    }

    public boolean hasDEPRECATEDSubject()
    {
      return this.hasDEPRECATEDSubject;
    }

    public boolean hasDEPRECATEDSubjectSpan()
    {
      return this.hasDEPRECATEDSubjectSpan;
    }

    public final boolean isInitialized()
    {
      return true;
    }

    public SelfNoteAction mergeFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
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
          setDEPRECATEDSubject(paramCodedInputStreamMicro.readString());
          break;
        case 18:
          setBody(paramCodedInputStreamMicro.readString());
          break;
        case 26:
          SpanProtos.Span localSpan2 = new SpanProtos.Span();
          paramCodedInputStreamMicro.readMessage(localSpan2);
          setDEPRECATEDSubjectSpan(localSpan2);
          break;
        case 34:
        }
        SpanProtos.Span localSpan1 = new SpanProtos.Span();
        paramCodedInputStreamMicro.readMessage(localSpan1);
        setBodySpan(localSpan1);
      }
    }

    public SelfNoteAction setBody(String paramString)
    {
      this.hasBody = true;
      this.body_ = paramString;
      return this;
    }

    public SelfNoteAction setBodySpan(SpanProtos.Span paramSpan)
    {
      if (paramSpan == null)
        throw new NullPointerException();
      this.hasBodySpan = true;
      this.bodySpan_ = paramSpan;
      return this;
    }

    public SelfNoteAction setDEPRECATEDSubject(String paramString)
    {
      this.hasDEPRECATEDSubject = true;
      this.dEPRECATEDSubject_ = paramString;
      return this;
    }

    public SelfNoteAction setDEPRECATEDSubjectSpan(SpanProtos.Span paramSpan)
    {
      if (paramSpan == null)
        throw new NullPointerException();
      this.hasDEPRECATEDSubjectSpan = true;
      this.dEPRECATEDSubjectSpan_ = paramSpan;
      return this;
    }

    public void writeTo(CodedOutputStreamMicro paramCodedOutputStreamMicro)
      throws IOException
    {
      if (hasDEPRECATEDSubject())
        paramCodedOutputStreamMicro.writeString(1, getDEPRECATEDSubject());
      if (hasBody())
        paramCodedOutputStreamMicro.writeString(2, getBody());
      if (hasDEPRECATEDSubjectSpan())
        paramCodedOutputStreamMicro.writeMessage(3, getDEPRECATEDSubjectSpan());
      if (hasBodySpan())
        paramCodedOutputStreamMicro.writeMessage(4, getBodySpan());
    }
  }

  public static final class SetAlarmAction extends MessageMicro
  {
    public static final int ALARM_LABEL_FIELD_NUMBER = 1;
    public static final int ALARM_LABEL_SPAN_FIELD_NUMBER = 2;
    public static final int DATE_FIELD_NUMBER = 4;
    public static final int SECONDS_FROM_NOW_FIELD_NUMBER = 5;
    public static final int TIME_FIELD_NUMBER = 3;
    private SpanProtos.Span alarmLabelSpan_ = null;
    private String alarmLabel_ = "";
    private int cachedSize = -1;
    private ActionDateTimeProtos.ActionDate date_ = null;
    private boolean hasAlarmLabel;
    private boolean hasAlarmLabelSpan;
    private boolean hasDate;
    private boolean hasSecondsFromNow;
    private boolean hasTime;
    private int secondsFromNow_ = 0;
    private ActionDateTimeProtos.ActionTime time_ = null;

    public static SetAlarmAction parseFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
      throws IOException
    {
      return new SetAlarmAction().mergeFrom(paramCodedInputStreamMicro);
    }

    public static SetAlarmAction parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferMicroException
    {
      return (SetAlarmAction)new SetAlarmAction().mergeFrom(paramArrayOfByte);
    }

    public final SetAlarmAction clear()
    {
      clearAlarmLabel();
      clearAlarmLabelSpan();
      clearTime();
      clearDate();
      clearSecondsFromNow();
      this.cachedSize = -1;
      return this;
    }

    public SetAlarmAction clearAlarmLabel()
    {
      this.hasAlarmLabel = false;
      this.alarmLabel_ = "";
      return this;
    }

    public SetAlarmAction clearAlarmLabelSpan()
    {
      this.hasAlarmLabelSpan = false;
      this.alarmLabelSpan_ = null;
      return this;
    }

    public SetAlarmAction clearDate()
    {
      this.hasDate = false;
      this.date_ = null;
      return this;
    }

    public SetAlarmAction clearSecondsFromNow()
    {
      this.hasSecondsFromNow = false;
      this.secondsFromNow_ = 0;
      return this;
    }

    public SetAlarmAction clearTime()
    {
      this.hasTime = false;
      this.time_ = null;
      return this;
    }

    public String getAlarmLabel()
    {
      return this.alarmLabel_;
    }

    public SpanProtos.Span getAlarmLabelSpan()
    {
      return this.alarmLabelSpan_;
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

    public int getSecondsFromNow()
    {
      return this.secondsFromNow_;
    }

    public int getSerializedSize()
    {
      boolean bool = hasAlarmLabel();
      int i = 0;
      if (bool)
        i = 0 + CodedOutputStreamMicro.computeStringSize(1, getAlarmLabel());
      if (hasAlarmLabelSpan())
        i += CodedOutputStreamMicro.computeMessageSize(2, getAlarmLabelSpan());
      if (hasTime())
        i += CodedOutputStreamMicro.computeMessageSize(3, getTime());
      if (hasDate())
        i += CodedOutputStreamMicro.computeMessageSize(4, getDate());
      if (hasSecondsFromNow())
        i += CodedOutputStreamMicro.computeInt32Size(5, getSecondsFromNow());
      this.cachedSize = i;
      return i;
    }

    public ActionDateTimeProtos.ActionTime getTime()
    {
      return this.time_;
    }

    public boolean hasAlarmLabel()
    {
      return this.hasAlarmLabel;
    }

    public boolean hasAlarmLabelSpan()
    {
      return this.hasAlarmLabelSpan;
    }

    public boolean hasDate()
    {
      return this.hasDate;
    }

    public boolean hasSecondsFromNow()
    {
      return this.hasSecondsFromNow;
    }

    public boolean hasTime()
    {
      return this.hasTime;
    }

    public final boolean isInitialized()
    {
      return true;
    }

    public SetAlarmAction mergeFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
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
          setAlarmLabel(paramCodedInputStreamMicro.readString());
          break;
        case 18:
          SpanProtos.Span localSpan = new SpanProtos.Span();
          paramCodedInputStreamMicro.readMessage(localSpan);
          setAlarmLabelSpan(localSpan);
          break;
        case 26:
          ActionDateTimeProtos.ActionTime localActionTime = new ActionDateTimeProtos.ActionTime();
          paramCodedInputStreamMicro.readMessage(localActionTime);
          setTime(localActionTime);
          break;
        case 34:
          ActionDateTimeProtos.ActionDate localActionDate = new ActionDateTimeProtos.ActionDate();
          paramCodedInputStreamMicro.readMessage(localActionDate);
          setDate(localActionDate);
          break;
        case 40:
        }
        setSecondsFromNow(paramCodedInputStreamMicro.readInt32());
      }
    }

    public SetAlarmAction setAlarmLabel(String paramString)
    {
      this.hasAlarmLabel = true;
      this.alarmLabel_ = paramString;
      return this;
    }

    public SetAlarmAction setAlarmLabelSpan(SpanProtos.Span paramSpan)
    {
      if (paramSpan == null)
        throw new NullPointerException();
      this.hasAlarmLabelSpan = true;
      this.alarmLabelSpan_ = paramSpan;
      return this;
    }

    public SetAlarmAction setDate(ActionDateTimeProtos.ActionDate paramActionDate)
    {
      if (paramActionDate == null)
        throw new NullPointerException();
      this.hasDate = true;
      this.date_ = paramActionDate;
      return this;
    }

    public SetAlarmAction setSecondsFromNow(int paramInt)
    {
      this.hasSecondsFromNow = true;
      this.secondsFromNow_ = paramInt;
      return this;
    }

    public SetAlarmAction setTime(ActionDateTimeProtos.ActionTime paramActionTime)
    {
      if (paramActionTime == null)
        throw new NullPointerException();
      this.hasTime = true;
      this.time_ = paramActionTime;
      return this;
    }

    public void writeTo(CodedOutputStreamMicro paramCodedOutputStreamMicro)
      throws IOException
    {
      if (hasAlarmLabel())
        paramCodedOutputStreamMicro.writeString(1, getAlarmLabel());
      if (hasAlarmLabelSpan())
        paramCodedOutputStreamMicro.writeMessage(2, getAlarmLabelSpan());
      if (hasTime())
        paramCodedOutputStreamMicro.writeMessage(3, getTime());
      if (hasDate())
        paramCodedOutputStreamMicro.writeMessage(4, getDate());
      if (hasSecondsFromNow())
        paramCodedOutputStreamMicro.writeInt32(5, getSecondsFromNow());
    }
  }

  public static final class ShowCalendarEventAction extends MessageMicro
  {
    public static final int CALENDAR_EVENT_FIELD_NUMBER = 1;
    private int cachedSize = -1;
    private CalendarProtos.CalendarEvent calendarEvent_ = null;
    private boolean hasCalendarEvent;

    public static ShowCalendarEventAction parseFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
      throws IOException
    {
      return new ShowCalendarEventAction().mergeFrom(paramCodedInputStreamMicro);
    }

    public static ShowCalendarEventAction parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferMicroException
    {
      return (ShowCalendarEventAction)new ShowCalendarEventAction().mergeFrom(paramArrayOfByte);
    }

    public final ShowCalendarEventAction clear()
    {
      clearCalendarEvent();
      this.cachedSize = -1;
      return this;
    }

    public ShowCalendarEventAction clearCalendarEvent()
    {
      this.hasCalendarEvent = false;
      this.calendarEvent_ = null;
      return this;
    }

    public int getCachedSize()
    {
      if (this.cachedSize < 0)
        getSerializedSize();
      return this.cachedSize;
    }

    public CalendarProtos.CalendarEvent getCalendarEvent()
    {
      return this.calendarEvent_;
    }

    public int getSerializedSize()
    {
      boolean bool = hasCalendarEvent();
      int i = 0;
      if (bool)
        i = 0 + CodedOutputStreamMicro.computeMessageSize(1, getCalendarEvent());
      this.cachedSize = i;
      return i;
    }

    public boolean hasCalendarEvent()
    {
      return this.hasCalendarEvent;
    }

    public final boolean isInitialized()
    {
      return true;
    }

    public ShowCalendarEventAction mergeFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
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
        CalendarProtos.CalendarEvent localCalendarEvent = new CalendarProtos.CalendarEvent();
        paramCodedInputStreamMicro.readMessage(localCalendarEvent);
        setCalendarEvent(localCalendarEvent);
      }
    }

    public ShowCalendarEventAction setCalendarEvent(CalendarProtos.CalendarEvent paramCalendarEvent)
    {
      if (paramCalendarEvent == null)
        throw new NullPointerException();
      this.hasCalendarEvent = true;
      this.calendarEvent_ = paramCalendarEvent;
      return this;
    }

    public void writeTo(CodedOutputStreamMicro paramCodedOutputStreamMicro)
      throws IOException
    {
      if (hasCalendarEvent())
        paramCodedOutputStreamMicro.writeMessage(1, getCalendarEvent());
    }
  }

  public static final class ShowContactInformationAction extends MessageMicro
  {
    public static final int CONTACT_FIELD_NUMBER = 1;
    public static final int HAS_MOONSHINE_CONTACT_RESULTS_FIELD_NUMBER = 5;
    public static final int SHOW_EMAIL_FIELD_NUMBER = 3;
    public static final int SHOW_PHONE_FIELD_NUMBER = 2;
    public static final int SHOW_POSTAL_ADDRESS_FIELD_NUMBER = 4;
    private int cachedSize = -1;
    private List<ActionV2Protos.ActionContact> contact_ = Collections.emptyList();
    private boolean hasHasMoonshineContactResults;
    private boolean hasMoonshineContactResults_ = false;
    private boolean hasShowEmail;
    private boolean hasShowPhone;
    private boolean hasShowPostalAddress;
    private boolean showEmail_ = false;
    private boolean showPhone_ = false;
    private boolean showPostalAddress_ = false;

    public static ShowContactInformationAction parseFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
      throws IOException
    {
      return new ShowContactInformationAction().mergeFrom(paramCodedInputStreamMicro);
    }

    public static ShowContactInformationAction parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferMicroException
    {
      return (ShowContactInformationAction)new ShowContactInformationAction().mergeFrom(paramArrayOfByte);
    }

    public ShowContactInformationAction addContact(ActionV2Protos.ActionContact paramActionContact)
    {
      if (paramActionContact == null)
        throw new NullPointerException();
      if (this.contact_.isEmpty())
        this.contact_ = new ArrayList();
      this.contact_.add(paramActionContact);
      return this;
    }

    public final ShowContactInformationAction clear()
    {
      clearContact();
      clearShowPhone();
      clearShowEmail();
      clearShowPostalAddress();
      clearHasMoonshineContactResults();
      this.cachedSize = -1;
      return this;
    }

    public ShowContactInformationAction clearContact()
    {
      this.contact_ = Collections.emptyList();
      return this;
    }

    public ShowContactInformationAction clearHasMoonshineContactResults()
    {
      this.hasHasMoonshineContactResults = false;
      this.hasMoonshineContactResults_ = false;
      return this;
    }

    public ShowContactInformationAction clearShowEmail()
    {
      this.hasShowEmail = false;
      this.showEmail_ = false;
      return this;
    }

    public ShowContactInformationAction clearShowPhone()
    {
      this.hasShowPhone = false;
      this.showPhone_ = false;
      return this;
    }

    public ShowContactInformationAction clearShowPostalAddress()
    {
      this.hasShowPostalAddress = false;
      this.showPostalAddress_ = false;
      return this;
    }

    public int getCachedSize()
    {
      if (this.cachedSize < 0)
        getSerializedSize();
      return this.cachedSize;
    }

    public ActionV2Protos.ActionContact getContact(int paramInt)
    {
      return (ActionV2Protos.ActionContact)this.contact_.get(paramInt);
    }

    public int getContactCount()
    {
      return this.contact_.size();
    }

    public List<ActionV2Protos.ActionContact> getContactList()
    {
      return this.contact_;
    }

    public boolean getHasMoonshineContactResults()
    {
      return this.hasMoonshineContactResults_;
    }

    public int getSerializedSize()
    {
      int i = 0;
      Iterator localIterator = getContactList().iterator();
      while (localIterator.hasNext())
        i += CodedOutputStreamMicro.computeMessageSize(1, (ActionV2Protos.ActionContact)localIterator.next());
      if (hasShowPhone())
        i += CodedOutputStreamMicro.computeBoolSize(2, getShowPhone());
      if (hasShowEmail())
        i += CodedOutputStreamMicro.computeBoolSize(3, getShowEmail());
      if (hasShowPostalAddress())
        i += CodedOutputStreamMicro.computeBoolSize(4, getShowPostalAddress());
      if (hasHasMoonshineContactResults())
        i += CodedOutputStreamMicro.computeBoolSize(5, getHasMoonshineContactResults());
      this.cachedSize = i;
      return i;
    }

    public boolean getShowEmail()
    {
      return this.showEmail_;
    }

    public boolean getShowPhone()
    {
      return this.showPhone_;
    }

    public boolean getShowPostalAddress()
    {
      return this.showPostalAddress_;
    }

    public boolean hasHasMoonshineContactResults()
    {
      return this.hasHasMoonshineContactResults;
    }

    public boolean hasShowEmail()
    {
      return this.hasShowEmail;
    }

    public boolean hasShowPhone()
    {
      return this.hasShowPhone;
    }

    public boolean hasShowPostalAddress()
    {
      return this.hasShowPostalAddress;
    }

    public final boolean isInitialized()
    {
      return true;
    }

    public ShowContactInformationAction mergeFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
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
          ActionV2Protos.ActionContact localActionContact = new ActionV2Protos.ActionContact();
          paramCodedInputStreamMicro.readMessage(localActionContact);
          addContact(localActionContact);
          break;
        case 16:
          setShowPhone(paramCodedInputStreamMicro.readBool());
          break;
        case 24:
          setShowEmail(paramCodedInputStreamMicro.readBool());
          break;
        case 32:
          setShowPostalAddress(paramCodedInputStreamMicro.readBool());
          break;
        case 40:
        }
        setHasMoonshineContactResults(paramCodedInputStreamMicro.readBool());
      }
    }

    public ShowContactInformationAction setContact(int paramInt, ActionV2Protos.ActionContact paramActionContact)
    {
      if (paramActionContact == null)
        throw new NullPointerException();
      this.contact_.set(paramInt, paramActionContact);
      return this;
    }

    public ShowContactInformationAction setHasMoonshineContactResults(boolean paramBoolean)
    {
      this.hasHasMoonshineContactResults = true;
      this.hasMoonshineContactResults_ = paramBoolean;
      return this;
    }

    public ShowContactInformationAction setShowEmail(boolean paramBoolean)
    {
      this.hasShowEmail = true;
      this.showEmail_ = paramBoolean;
      return this;
    }

    public ShowContactInformationAction setShowPhone(boolean paramBoolean)
    {
      this.hasShowPhone = true;
      this.showPhone_ = paramBoolean;
      return this;
    }

    public ShowContactInformationAction setShowPostalAddress(boolean paramBoolean)
    {
      this.hasShowPostalAddress = true;
      this.showPostalAddress_ = paramBoolean;
      return this;
    }

    public void writeTo(CodedOutputStreamMicro paramCodedOutputStreamMicro)
      throws IOException
    {
      Iterator localIterator = getContactList().iterator();
      while (localIterator.hasNext())
        paramCodedOutputStreamMicro.writeMessage(1, (ActionV2Protos.ActionContact)localIterator.next());
      if (hasShowPhone())
        paramCodedOutputStreamMicro.writeBool(2, getShowPhone());
      if (hasShowEmail())
        paramCodedOutputStreamMicro.writeBool(3, getShowEmail());
      if (hasShowPostalAddress())
        paramCodedOutputStreamMicro.writeBool(4, getShowPostalAddress());
      if (hasHasMoonshineContactResults())
        paramCodedOutputStreamMicro.writeBool(5, getHasMoonshineContactResults());
    }
  }

  public static final class ShowStreetView extends MessageMicro
  {
    public static final int LOCATION_FIELD_NUMBER = 1;
    private int cachedSize = -1;
    private boolean hasLocation;
    private ActionV2Protos.Location location_ = null;

    public static ShowStreetView parseFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
      throws IOException
    {
      return new ShowStreetView().mergeFrom(paramCodedInputStreamMicro);
    }

    public static ShowStreetView parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferMicroException
    {
      return (ShowStreetView)new ShowStreetView().mergeFrom(paramArrayOfByte);
    }

    public final ShowStreetView clear()
    {
      clearLocation();
      this.cachedSize = -1;
      return this;
    }

    public ShowStreetView clearLocation()
    {
      this.hasLocation = false;
      this.location_ = null;
      return this;
    }

    public int getCachedSize()
    {
      if (this.cachedSize < 0)
        getSerializedSize();
      return this.cachedSize;
    }

    public ActionV2Protos.Location getLocation()
    {
      return this.location_;
    }

    public int getSerializedSize()
    {
      boolean bool = hasLocation();
      int i = 0;
      if (bool)
        i = 0 + CodedOutputStreamMicro.computeMessageSize(1, getLocation());
      this.cachedSize = i;
      return i;
    }

    public boolean hasLocation()
    {
      return this.hasLocation;
    }

    public final boolean isInitialized()
    {
      return true;
    }

    public ShowStreetView mergeFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
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
        ActionV2Protos.Location localLocation = new ActionV2Protos.Location();
        paramCodedInputStreamMicro.readMessage(localLocation);
        setLocation(localLocation);
      }
    }

    public ShowStreetView setLocation(ActionV2Protos.Location paramLocation)
    {
      if (paramLocation == null)
        throw new NullPointerException();
      this.hasLocation = true;
      this.location_ = paramLocation;
      return this;
    }

    public void writeTo(CodedOutputStreamMicro paramCodedOutputStreamMicro)
      throws IOException
    {
      if (hasLocation())
        paramCodedOutputStreamMicro.writeMessage(1, getLocation());
    }
  }

  public static final class SoundSearchAction extends MessageMicro
  {
    private int cachedSize = -1;

    public static SoundSearchAction parseFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
      throws IOException
    {
      return new SoundSearchAction().mergeFrom(paramCodedInputStreamMicro);
    }

    public static SoundSearchAction parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferMicroException
    {
      return (SoundSearchAction)new SoundSearchAction().mergeFrom(paramArrayOfByte);
    }

    public final SoundSearchAction clear()
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

    public SoundSearchAction mergeFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
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

  public static final class TranslationConsoleString extends MessageMicro
  {
    public static final int MESSAGE_ID_FIELD_NUMBER = 2;
    public static final int SET_ID_FIELD_NUMBER = 1;
    public static final int TEXT_FIELD_NUMBER = 3;
    private int cachedSize = -1;
    private boolean hasMessageId;
    private boolean hasSetId;
    private boolean hasText;
    private int messageId_ = 0;
    private int setId_ = 54;
    private String text_ = "";

    public static TranslationConsoleString parseFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
      throws IOException
    {
      return new TranslationConsoleString().mergeFrom(paramCodedInputStreamMicro);
    }

    public static TranslationConsoleString parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferMicroException
    {
      return (TranslationConsoleString)new TranslationConsoleString().mergeFrom(paramArrayOfByte);
    }

    public final TranslationConsoleString clear()
    {
      clearSetId();
      clearMessageId();
      clearText();
      this.cachedSize = -1;
      return this;
    }

    public TranslationConsoleString clearMessageId()
    {
      this.hasMessageId = false;
      this.messageId_ = 0;
      return this;
    }

    public TranslationConsoleString clearSetId()
    {
      this.hasSetId = false;
      this.setId_ = 54;
      return this;
    }

    public TranslationConsoleString clearText()
    {
      this.hasText = false;
      this.text_ = "";
      return this;
    }

    public int getCachedSize()
    {
      if (this.cachedSize < 0)
        getSerializedSize();
      return this.cachedSize;
    }

    public int getMessageId()
    {
      return this.messageId_;
    }

    public int getSerializedSize()
    {
      boolean bool = hasSetId();
      int i = 0;
      if (bool)
        i = 0 + CodedOutputStreamMicro.computeInt32Size(1, getSetId());
      if (hasMessageId())
        i += CodedOutputStreamMicro.computeInt32Size(2, getMessageId());
      if (hasText())
        i += CodedOutputStreamMicro.computeStringSize(3, getText());
      this.cachedSize = i;
      return i;
    }

    public int getSetId()
    {
      return this.setId_;
    }

    public String getText()
    {
      return this.text_;
    }

    public boolean hasMessageId()
    {
      return this.hasMessageId;
    }

    public boolean hasSetId()
    {
      return this.hasSetId;
    }

    public boolean hasText()
    {
      return this.hasText;
    }

    public final boolean isInitialized()
    {
      return true;
    }

    public TranslationConsoleString mergeFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
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
          setSetId(paramCodedInputStreamMicro.readInt32());
          break;
        case 16:
          setMessageId(paramCodedInputStreamMicro.readInt32());
          break;
        case 26:
        }
        setText(paramCodedInputStreamMicro.readString());
      }
    }

    public TranslationConsoleString setMessageId(int paramInt)
    {
      this.hasMessageId = true;
      this.messageId_ = paramInt;
      return this;
    }

    public TranslationConsoleString setSetId(int paramInt)
    {
      this.hasSetId = true;
      this.setId_ = paramInt;
      return this;
    }

    public TranslationConsoleString setText(String paramString)
    {
      this.hasText = true;
      this.text_ = paramString;
      return this;
    }

    public void writeTo(CodedOutputStreamMicro paramCodedOutputStreamMicro)
      throws IOException
    {
      if (hasSetId())
        paramCodedOutputStreamMicro.writeInt32(1, getSetId());
      if (hasMessageId())
        paramCodedOutputStreamMicro.writeInt32(2, getMessageId());
      if (hasText())
        paramCodedOutputStreamMicro.writeString(3, getText());
    }
  }

  public static final class UnsupportedAction extends MessageMicro
  {
    public static final int EXPLANATION_FIELD_NUMBER = 1;
    private int cachedSize = -1;
    private String explanation_ = "";
    private boolean hasExplanation;

    public static UnsupportedAction parseFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
      throws IOException
    {
      return new UnsupportedAction().mergeFrom(paramCodedInputStreamMicro);
    }

    public static UnsupportedAction parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferMicroException
    {
      return (UnsupportedAction)new UnsupportedAction().mergeFrom(paramArrayOfByte);
    }

    public final UnsupportedAction clear()
    {
      clearExplanation();
      this.cachedSize = -1;
      return this;
    }

    public UnsupportedAction clearExplanation()
    {
      this.hasExplanation = false;
      this.explanation_ = "";
      return this;
    }

    public int getCachedSize()
    {
      if (this.cachedSize < 0)
        getSerializedSize();
      return this.cachedSize;
    }

    public String getExplanation()
    {
      return this.explanation_;
    }

    public int getSerializedSize()
    {
      boolean bool = hasExplanation();
      int i = 0;
      if (bool)
        i = 0 + CodedOutputStreamMicro.computeStringSize(1, getExplanation());
      this.cachedSize = i;
      return i;
    }

    public boolean hasExplanation()
    {
      return this.hasExplanation;
    }

    public final boolean isInitialized()
    {
      return true;
    }

    public UnsupportedAction mergeFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
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
        setExplanation(paramCodedInputStreamMicro.readString());
      }
    }

    public UnsupportedAction setExplanation(String paramString)
    {
      this.hasExplanation = true;
      this.explanation_ = paramString;
      return this;
    }

    public void writeTo(CodedOutputStreamMicro paramCodedOutputStreamMicro)
      throws IOException
    {
      if (hasExplanation())
        paramCodedOutputStreamMicro.writeString(1, getExplanation());
    }
  }

  public static final class UpdateSocialNetworkAction extends MessageMicro
  {
    public static final int SOCIAL_NETWORK_FACEBOOK = 0;
    public static final int SOCIAL_NETWORK_FIELD_NUMBER = 3;
    public static final int SOCIAL_NETWORK_GOOGLE_PLUS = 1;
    public static final int SOCIAL_NETWORK_TWITTER = 2;
    public static final int STATUS_MESSAGE_FIELD_NUMBER = 1;
    public static final int STATUS_MESSAGE_SPAN_FIELD_NUMBER = 2;
    private int cachedSize = -1;
    private boolean hasSocialNetwork;
    private boolean hasStatusMessage;
    private boolean hasStatusMessageSpan;
    private int socialNetwork_ = 0;
    private SpanProtos.Span statusMessageSpan_ = null;
    private String statusMessage_ = "";

    public static UpdateSocialNetworkAction parseFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
      throws IOException
    {
      return new UpdateSocialNetworkAction().mergeFrom(paramCodedInputStreamMicro);
    }

    public static UpdateSocialNetworkAction parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferMicroException
    {
      return (UpdateSocialNetworkAction)new UpdateSocialNetworkAction().mergeFrom(paramArrayOfByte);
    }

    public final UpdateSocialNetworkAction clear()
    {
      clearStatusMessage();
      clearStatusMessageSpan();
      clearSocialNetwork();
      this.cachedSize = -1;
      return this;
    }

    public UpdateSocialNetworkAction clearSocialNetwork()
    {
      this.hasSocialNetwork = false;
      this.socialNetwork_ = 0;
      return this;
    }

    public UpdateSocialNetworkAction clearStatusMessage()
    {
      this.hasStatusMessage = false;
      this.statusMessage_ = "";
      return this;
    }

    public UpdateSocialNetworkAction clearStatusMessageSpan()
    {
      this.hasStatusMessageSpan = false;
      this.statusMessageSpan_ = null;
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
      boolean bool = hasStatusMessage();
      int i = 0;
      if (bool)
        i = 0 + CodedOutputStreamMicro.computeStringSize(1, getStatusMessage());
      if (hasStatusMessageSpan())
        i += CodedOutputStreamMicro.computeMessageSize(2, getStatusMessageSpan());
      if (hasSocialNetwork())
        i += CodedOutputStreamMicro.computeInt32Size(3, getSocialNetwork());
      this.cachedSize = i;
      return i;
    }

    public int getSocialNetwork()
    {
      return this.socialNetwork_;
    }

    public String getStatusMessage()
    {
      return this.statusMessage_;
    }

    public SpanProtos.Span getStatusMessageSpan()
    {
      return this.statusMessageSpan_;
    }

    public boolean hasSocialNetwork()
    {
      return this.hasSocialNetwork;
    }

    public boolean hasStatusMessage()
    {
      return this.hasStatusMessage;
    }

    public boolean hasStatusMessageSpan()
    {
      return this.hasStatusMessageSpan;
    }

    public final boolean isInitialized()
    {
      return true;
    }

    public UpdateSocialNetworkAction mergeFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
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
          setStatusMessage(paramCodedInputStreamMicro.readString());
          break;
        case 18:
          SpanProtos.Span localSpan = new SpanProtos.Span();
          paramCodedInputStreamMicro.readMessage(localSpan);
          setStatusMessageSpan(localSpan);
          break;
        case 24:
        }
        setSocialNetwork(paramCodedInputStreamMicro.readInt32());
      }
    }

    public UpdateSocialNetworkAction setSocialNetwork(int paramInt)
    {
      this.hasSocialNetwork = true;
      this.socialNetwork_ = paramInt;
      return this;
    }

    public UpdateSocialNetworkAction setStatusMessage(String paramString)
    {
      this.hasStatusMessage = true;
      this.statusMessage_ = paramString;
      return this;
    }

    public UpdateSocialNetworkAction setStatusMessageSpan(SpanProtos.Span paramSpan)
    {
      if (paramSpan == null)
        throw new NullPointerException();
      this.hasStatusMessageSpan = true;
      this.statusMessageSpan_ = paramSpan;
      return this;
    }

    public void writeTo(CodedOutputStreamMicro paramCodedOutputStreamMicro)
      throws IOException
    {
      if (hasStatusMessage())
        paramCodedOutputStreamMicro.writeString(1, getStatusMessage());
      if (hasStatusMessageSpan())
        paramCodedOutputStreamMicro.writeMessage(2, getStatusMessageSpan());
      if (hasSocialNetwork())
        paramCodedOutputStreamMicro.writeInt32(3, getSocialNetwork());
    }
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.majel.proto.ActionV2Protos
 * JD-Core Version:    0.6.2
 */
package com.google.protobuf;

import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

public final class Descriptors
{
  private static String computeFullName(FileDescriptor paramFileDescriptor, Descriptor paramDescriptor, String paramString)
  {
    if (paramDescriptor != null)
      paramString = paramDescriptor.getFullName() + '.' + paramString;
    while (paramFileDescriptor.getPackage().length() <= 0)
      return paramString;
    return paramFileDescriptor.getPackage() + '.' + paramString;
  }

  public static final class Descriptor
    implements Descriptors.GenericDescriptor
  {
    private final Descriptor containingType;
    private final Descriptors.EnumDescriptor[] enumTypes;
    private final Descriptors.FieldDescriptor[] extensions;
    private final Descriptors.FieldDescriptor[] fields;
    private final Descriptors.FileDescriptor file;
    private final String fullName;
    private final int index;
    private final Descriptor[] nestedTypes;
    private DescriptorProtos.DescriptorProto proto;

    private Descriptor(DescriptorProtos.DescriptorProto paramDescriptorProto, Descriptors.FileDescriptor paramFileDescriptor, Descriptor paramDescriptor, int paramInt)
      throws Descriptors.DescriptorValidationException
    {
      this.index = paramInt;
      this.proto = paramDescriptorProto;
      this.fullName = Descriptors.computeFullName(paramFileDescriptor, paramDescriptor, paramDescriptorProto.getName());
      this.file = paramFileDescriptor;
      this.containingType = paramDescriptor;
      this.nestedTypes = new Descriptor[paramDescriptorProto.getNestedTypeCount()];
      for (int i = 0; i < paramDescriptorProto.getNestedTypeCount(); i++)
        this.nestedTypes[i] = new Descriptor(paramDescriptorProto.getNestedType(i), paramFileDescriptor, this, i);
      this.enumTypes = new Descriptors.EnumDescriptor[paramDescriptorProto.getEnumTypeCount()];
      for (int j = 0; j < paramDescriptorProto.getEnumTypeCount(); j++)
        this.enumTypes[j] = new Descriptors.EnumDescriptor(paramDescriptorProto.getEnumType(j), paramFileDescriptor, this, j, null);
      this.fields = new Descriptors.FieldDescriptor[paramDescriptorProto.getFieldCount()];
      for (int k = 0; k < paramDescriptorProto.getFieldCount(); k++)
        this.fields[k] = new Descriptors.FieldDescriptor(paramDescriptorProto.getField(k), paramFileDescriptor, this, k, false, null);
      this.extensions = new Descriptors.FieldDescriptor[paramDescriptorProto.getExtensionCount()];
      for (int m = 0; m < paramDescriptorProto.getExtensionCount(); m++)
        this.extensions[m] = new Descriptors.FieldDescriptor(paramDescriptorProto.getExtension(m), paramFileDescriptor, this, m, true, null);
      Descriptors.FileDescriptor.access$1200(paramFileDescriptor).addSymbol(this);
    }

    private void crossLink()
      throws Descriptors.DescriptorValidationException
    {
      Descriptor[] arrayOfDescriptor = this.nestedTypes;
      int i = arrayOfDescriptor.length;
      for (int j = 0; j < i; j++)
        arrayOfDescriptor[j].crossLink();
      Descriptors.FieldDescriptor[] arrayOfFieldDescriptor1 = this.fields;
      int k = arrayOfFieldDescriptor1.length;
      for (int m = 0; m < k; m++)
        Descriptors.FieldDescriptor.access$700(arrayOfFieldDescriptor1[m]);
      Descriptors.FieldDescriptor[] arrayOfFieldDescriptor2 = this.extensions;
      int n = arrayOfFieldDescriptor2.length;
      for (int i1 = 0; i1 < n; i1++)
        Descriptors.FieldDescriptor.access$700(arrayOfFieldDescriptor2[i1]);
    }

    private void setProto(DescriptorProtos.DescriptorProto paramDescriptorProto)
    {
      this.proto = paramDescriptorProto;
      for (int i = 0; i < this.nestedTypes.length; i++)
        this.nestedTypes[i].setProto(paramDescriptorProto.getNestedType(i));
      for (int j = 0; j < this.enumTypes.length; j++)
        Descriptors.EnumDescriptor.access$900(this.enumTypes[j], paramDescriptorProto.getEnumType(j));
      for (int k = 0; k < this.fields.length; k++)
        Descriptors.FieldDescriptor.access$1100(this.fields[k], paramDescriptorProto.getField(k));
      for (int m = 0; m < this.extensions.length; m++)
        Descriptors.FieldDescriptor.access$1100(this.extensions[m], paramDescriptorProto.getExtension(m));
    }

    public Descriptors.EnumDescriptor findEnumTypeByName(String paramString)
    {
      Descriptors.GenericDescriptor localGenericDescriptor = Descriptors.FileDescriptor.access$1200(this.file).findSymbol(this.fullName + '.' + paramString);
      if ((localGenericDescriptor != null) && ((localGenericDescriptor instanceof Descriptors.EnumDescriptor)))
        return (Descriptors.EnumDescriptor)localGenericDescriptor;
      return null;
    }

    public Descriptors.FieldDescriptor findFieldByName(String paramString)
    {
      Descriptors.GenericDescriptor localGenericDescriptor = Descriptors.FileDescriptor.access$1200(this.file).findSymbol(this.fullName + '.' + paramString);
      if ((localGenericDescriptor != null) && ((localGenericDescriptor instanceof Descriptors.FieldDescriptor)))
        return (Descriptors.FieldDescriptor)localGenericDescriptor;
      return null;
    }

    public Descriptors.FieldDescriptor findFieldByNumber(int paramInt)
    {
      return (Descriptors.FieldDescriptor)Descriptors.DescriptorPool.access$1300(Descriptors.FileDescriptor.access$1200(this.file)).get(new Descriptors.DescriptorPool.DescriptorIntPair(this, paramInt));
    }

    public Descriptor findNestedTypeByName(String paramString)
    {
      Descriptors.GenericDescriptor localGenericDescriptor = Descriptors.FileDescriptor.access$1200(this.file).findSymbol(this.fullName + '.' + paramString);
      if ((localGenericDescriptor != null) && ((localGenericDescriptor instanceof Descriptor)))
        return (Descriptor)localGenericDescriptor;
      return null;
    }

    public Descriptor getContainingType()
    {
      return this.containingType;
    }

    public List<Descriptors.EnumDescriptor> getEnumTypes()
    {
      return Collections.unmodifiableList(Arrays.asList(this.enumTypes));
    }

    public List<Descriptors.FieldDescriptor> getExtensions()
    {
      return Collections.unmodifiableList(Arrays.asList(this.extensions));
    }

    public List<Descriptors.FieldDescriptor> getFields()
    {
      return Collections.unmodifiableList(Arrays.asList(this.fields));
    }

    public Descriptors.FileDescriptor getFile()
    {
      return this.file;
    }

    public String getFullName()
    {
      return this.fullName;
    }

    public int getIndex()
    {
      return this.index;
    }

    public String getName()
    {
      return this.proto.getName();
    }

    public List<Descriptor> getNestedTypes()
    {
      return Collections.unmodifiableList(Arrays.asList(this.nestedTypes));
    }

    public DescriptorProtos.MessageOptions getOptions()
    {
      return this.proto.getOptions();
    }

    public boolean isExtensionNumber(int paramInt)
    {
      Iterator localIterator = this.proto.getExtensionRangeList().iterator();
      while (localIterator.hasNext())
      {
        DescriptorProtos.DescriptorProto.ExtensionRange localExtensionRange = (DescriptorProtos.DescriptorProto.ExtensionRange)localIterator.next();
        if ((localExtensionRange.getStart() <= paramInt) && (paramInt < localExtensionRange.getEnd()))
          return true;
      }
      return false;
    }

    public DescriptorProtos.DescriptorProto toProto()
    {
      return this.proto;
    }
  }

  private static final class DescriptorPool
  {
    private final Set<Descriptors.FileDescriptor> dependencies = new HashSet();
    private final Map<String, Descriptors.GenericDescriptor> descriptorsByName = new HashMap();
    private final Map<DescriptorIntPair, Descriptors.EnumValueDescriptor> enumValuesByNumber = new HashMap();
    private final Map<DescriptorIntPair, Descriptors.FieldDescriptor> fieldsByNumber = new HashMap();

    static
    {
      if (!Descriptors.class.desiredAssertionStatus());
      for (boolean bool = true; ; bool = false)
      {
        $assertionsDisabled = bool;
        return;
      }
    }

    DescriptorPool(Descriptors.FileDescriptor[] paramArrayOfFileDescriptor)
    {
      for (int i = 0; i < paramArrayOfFileDescriptor.length; i++)
      {
        this.dependencies.add(paramArrayOfFileDescriptor[i]);
        importPublicDependencies(paramArrayOfFileDescriptor[i]);
      }
      Iterator localIterator = this.dependencies.iterator();
      while (localIterator.hasNext())
      {
        Descriptors.FileDescriptor localFileDescriptor = (Descriptors.FileDescriptor)localIterator.next();
        try
        {
          addPackage(localFileDescriptor.getPackage(), localFileDescriptor);
        }
        catch (Descriptors.DescriptorValidationException localDescriptorValidationException)
        {
        }
        if (!$assertionsDisabled)
          throw new AssertionError();
      }
    }

    private void importPublicDependencies(Descriptors.FileDescriptor paramFileDescriptor)
    {
      Iterator localIterator = paramFileDescriptor.getPublicDependencies().iterator();
      while (localIterator.hasNext())
      {
        Descriptors.FileDescriptor localFileDescriptor = (Descriptors.FileDescriptor)localIterator.next();
        if (this.dependencies.add(localFileDescriptor))
          importPublicDependencies(localFileDescriptor);
      }
    }

    static void validateSymbolName(Descriptors.GenericDescriptor paramGenericDescriptor)
      throws Descriptors.DescriptorValidationException
    {
      String str = paramGenericDescriptor.getName();
      if (str.length() == 0)
        throw new Descriptors.DescriptorValidationException(paramGenericDescriptor, "Missing name.", null);
      int i = 1;
      int j = 0;
      if (j < str.length())
      {
        char c = str.charAt(j);
        if (c >= '')
          i = 0;
        if ((Character.isLetter(c)) || (c == '_') || ((Character.isDigit(c)) && (j > 0)));
        while (true)
        {
          j++;
          break;
          i = 0;
        }
      }
      if (i == 0)
        throw new Descriptors.DescriptorValidationException(paramGenericDescriptor, '"' + str + "\" is not a valid identifier.", null);
    }

    void addEnumValueByNumber(Descriptors.EnumValueDescriptor paramEnumValueDescriptor)
    {
      DescriptorIntPair localDescriptorIntPair = new DescriptorIntPair(paramEnumValueDescriptor.getType(), paramEnumValueDescriptor.getNumber());
      Descriptors.EnumValueDescriptor localEnumValueDescriptor = (Descriptors.EnumValueDescriptor)this.enumValuesByNumber.put(localDescriptorIntPair, paramEnumValueDescriptor);
      if (localEnumValueDescriptor != null)
        this.enumValuesByNumber.put(localDescriptorIntPair, localEnumValueDescriptor);
    }

    void addFieldByNumber(Descriptors.FieldDescriptor paramFieldDescriptor)
      throws Descriptors.DescriptorValidationException
    {
      DescriptorIntPair localDescriptorIntPair = new DescriptorIntPair(paramFieldDescriptor.getContainingType(), paramFieldDescriptor.getNumber());
      Descriptors.FieldDescriptor localFieldDescriptor = (Descriptors.FieldDescriptor)this.fieldsByNumber.put(localDescriptorIntPair, paramFieldDescriptor);
      if (localFieldDescriptor != null)
      {
        this.fieldsByNumber.put(localDescriptorIntPair, localFieldDescriptor);
        throw new Descriptors.DescriptorValidationException(paramFieldDescriptor, "Field number " + paramFieldDescriptor.getNumber() + " has already been used in \"" + paramFieldDescriptor.getContainingType().getFullName() + "\" by field \"" + localFieldDescriptor.getName() + "\".", null);
      }
    }

    void addPackage(String paramString, Descriptors.FileDescriptor paramFileDescriptor)
      throws Descriptors.DescriptorValidationException
    {
      int i = paramString.lastIndexOf('.');
      if (i == -1);
      for (String str = paramString; ; str = paramString.substring(i + 1))
      {
        Descriptors.GenericDescriptor localGenericDescriptor = (Descriptors.GenericDescriptor)this.descriptorsByName.put(paramString, new PackageDescriptor(str, paramString, paramFileDescriptor));
        if (localGenericDescriptor == null)
          break;
        this.descriptorsByName.put(paramString, localGenericDescriptor);
        if ((localGenericDescriptor instanceof PackageDescriptor))
          break;
        throw new Descriptors.DescriptorValidationException(paramFileDescriptor, '"' + str + "\" is already defined (as something other than a " + "package) in file \"" + localGenericDescriptor.getFile().getName() + "\".", null);
        addPackage(paramString.substring(0, i), paramFileDescriptor);
      }
    }

    void addSymbol(Descriptors.GenericDescriptor paramGenericDescriptor)
      throws Descriptors.DescriptorValidationException
    {
      validateSymbolName(paramGenericDescriptor);
      String str = paramGenericDescriptor.getFullName();
      int i = str.lastIndexOf('.');
      Descriptors.GenericDescriptor localGenericDescriptor = (Descriptors.GenericDescriptor)this.descriptorsByName.put(str, paramGenericDescriptor);
      if (localGenericDescriptor != null)
      {
        this.descriptorsByName.put(str, localGenericDescriptor);
        if (paramGenericDescriptor.getFile() == localGenericDescriptor.getFile())
        {
          if (i == -1)
            throw new Descriptors.DescriptorValidationException(paramGenericDescriptor, '"' + str + "\" is already defined.", null);
          throw new Descriptors.DescriptorValidationException(paramGenericDescriptor, '"' + str.substring(i + 1) + "\" is already defined in \"" + str.substring(0, i) + "\".", null);
        }
        throw new Descriptors.DescriptorValidationException(paramGenericDescriptor, '"' + str + "\" is already defined in file \"" + localGenericDescriptor.getFile().getName() + "\".", null);
      }
    }

    Descriptors.GenericDescriptor findSymbol(String paramString)
    {
      return findSymbol(paramString, SearchFilter.ALL_SYMBOLS);
    }

    Descriptors.GenericDescriptor findSymbol(String paramString, SearchFilter paramSearchFilter)
    {
      Descriptors.GenericDescriptor localGenericDescriptor1 = (Descriptors.GenericDescriptor)this.descriptorsByName.get(paramString);
      if ((localGenericDescriptor1 != null) && ((paramSearchFilter == SearchFilter.ALL_SYMBOLS) || ((paramSearchFilter == SearchFilter.TYPES_ONLY) && (isType(localGenericDescriptor1))) || ((paramSearchFilter == SearchFilter.AGGREGATES_ONLY) && (isAggregate(localGenericDescriptor1)))))
        return localGenericDescriptor1;
      Iterator localIterator = this.dependencies.iterator();
      while (localIterator.hasNext())
      {
        Descriptors.GenericDescriptor localGenericDescriptor2 = (Descriptors.GenericDescriptor)Descriptors.FileDescriptor.access$1200((Descriptors.FileDescriptor)localIterator.next()).descriptorsByName.get(paramString);
        if ((localGenericDescriptor2 != null) && ((paramSearchFilter == SearchFilter.ALL_SYMBOLS) || ((paramSearchFilter == SearchFilter.TYPES_ONLY) && (isType(localGenericDescriptor2))) || ((paramSearchFilter == SearchFilter.AGGREGATES_ONLY) && (isAggregate(localGenericDescriptor2)))))
          return localGenericDescriptor2;
      }
      return null;
    }

    boolean isAggregate(Descriptors.GenericDescriptor paramGenericDescriptor)
    {
      return ((paramGenericDescriptor instanceof Descriptors.Descriptor)) || ((paramGenericDescriptor instanceof Descriptors.EnumDescriptor)) || ((paramGenericDescriptor instanceof PackageDescriptor)) || ((paramGenericDescriptor instanceof Descriptors.ServiceDescriptor));
    }

    boolean isType(Descriptors.GenericDescriptor paramGenericDescriptor)
    {
      return ((paramGenericDescriptor instanceof Descriptors.Descriptor)) || ((paramGenericDescriptor instanceof Descriptors.EnumDescriptor));
    }

    Descriptors.GenericDescriptor lookupSymbol(String paramString, Descriptors.GenericDescriptor paramGenericDescriptor, SearchFilter paramSearchFilter)
      throws Descriptors.DescriptorValidationException
    {
      Descriptors.GenericDescriptor localGenericDescriptor;
      if (paramString.startsWith("."))
      {
        localGenericDescriptor = findSymbol(paramString.substring(1), paramSearchFilter);
        if (localGenericDescriptor == null)
          throw new Descriptors.DescriptorValidationException(paramGenericDescriptor, '"' + paramString + "\" is not defined.", null);
      }
      else
      {
        int i = paramString.indexOf('.');
        String str;
        label79: StringBuilder localStringBuilder;
        if (i == -1)
        {
          str = paramString;
          localStringBuilder = new StringBuilder(paramGenericDescriptor.getFullName());
        }
        while (true)
        {
          int j = localStringBuilder.lastIndexOf(".");
          if (j == -1)
          {
            localGenericDescriptor = findSymbol(paramString, paramSearchFilter);
            break;
            str = paramString.substring(0, i);
            break label79;
          }
          localStringBuilder.setLength(j + 1);
          localStringBuilder.append(str);
          localGenericDescriptor = findSymbol(localStringBuilder.toString(), SearchFilter.AGGREGATES_ONLY);
          if (localGenericDescriptor != null)
          {
            if (i == -1)
              break;
            localStringBuilder.setLength(j + 1);
            localStringBuilder.append(paramString);
            localGenericDescriptor = findSymbol(localStringBuilder.toString(), paramSearchFilter);
            break;
          }
          localStringBuilder.setLength(j);
        }
      }
      return localGenericDescriptor;
    }

    private static final class DescriptorIntPair
    {
      private final Descriptors.GenericDescriptor descriptor;
      private final int number;

      DescriptorIntPair(Descriptors.GenericDescriptor paramGenericDescriptor, int paramInt)
      {
        this.descriptor = paramGenericDescriptor;
        this.number = paramInt;
      }

      public boolean equals(Object paramObject)
      {
        if (!(paramObject instanceof DescriptorIntPair));
        DescriptorIntPair localDescriptorIntPair;
        do
        {
          return false;
          localDescriptorIntPair = (DescriptorIntPair)paramObject;
        }
        while ((this.descriptor != localDescriptorIntPair.descriptor) || (this.number != localDescriptorIntPair.number));
        return true;
      }

      public int hashCode()
      {
        return 65535 * this.descriptor.hashCode() + this.number;
      }
    }

    private static final class PackageDescriptor
      implements Descriptors.GenericDescriptor
    {
      private final Descriptors.FileDescriptor file;
      private final String fullName;
      private final String name;

      PackageDescriptor(String paramString1, String paramString2, Descriptors.FileDescriptor paramFileDescriptor)
      {
        this.file = paramFileDescriptor;
        this.fullName = paramString2;
        this.name = paramString1;
      }

      public Descriptors.FileDescriptor getFile()
      {
        return this.file;
      }

      public String getFullName()
      {
        return this.fullName;
      }

      public String getName()
      {
        return this.name;
      }

      public Message toProto()
      {
        return this.file.toProto();
      }
    }

    static enum SearchFilter
    {
      static
      {
        AGGREGATES_ONLY = new SearchFilter("AGGREGATES_ONLY", 1);
        ALL_SYMBOLS = new SearchFilter("ALL_SYMBOLS", 2);
        SearchFilter[] arrayOfSearchFilter = new SearchFilter[3];
        arrayOfSearchFilter[0] = TYPES_ONLY;
        arrayOfSearchFilter[1] = AGGREGATES_ONLY;
        arrayOfSearchFilter[2] = ALL_SYMBOLS;
      }
    }
  }

  public static class DescriptorValidationException extends Exception
  {
    private static final long serialVersionUID = 5750205775490483148L;
    private final String description;
    private final String name;
    private final Message proto;

    private DescriptorValidationException(Descriptors.FileDescriptor paramFileDescriptor, String paramString)
    {
      super();
      this.name = paramFileDescriptor.getName();
      this.proto = paramFileDescriptor.toProto();
      this.description = paramString;
    }

    private DescriptorValidationException(Descriptors.GenericDescriptor paramGenericDescriptor, String paramString)
    {
      super();
      this.name = paramGenericDescriptor.getFullName();
      this.proto = paramGenericDescriptor.toProto();
      this.description = paramString;
    }

    private DescriptorValidationException(Descriptors.GenericDescriptor paramGenericDescriptor, String paramString, Throwable paramThrowable)
    {
      this(paramGenericDescriptor, paramString);
      initCause(paramThrowable);
    }

    public String getDescription()
    {
      return this.description;
    }

    public Message getProblemProto()
    {
      return this.proto;
    }

    public String getProblemSymbolName()
    {
      return this.name;
    }
  }

  public static final class EnumDescriptor
    implements Descriptors.GenericDescriptor, Internal.EnumLiteMap<Descriptors.EnumValueDescriptor>
  {
    private final Descriptors.Descriptor containingType;
    private final Descriptors.FileDescriptor file;
    private final String fullName;
    private final int index;
    private DescriptorProtos.EnumDescriptorProto proto;
    private Descriptors.EnumValueDescriptor[] values;

    private EnumDescriptor(DescriptorProtos.EnumDescriptorProto paramEnumDescriptorProto, Descriptors.FileDescriptor paramFileDescriptor, Descriptors.Descriptor paramDescriptor, int paramInt)
      throws Descriptors.DescriptorValidationException
    {
      this.index = paramInt;
      this.proto = paramEnumDescriptorProto;
      this.fullName = Descriptors.computeFullName(paramFileDescriptor, paramDescriptor, paramEnumDescriptorProto.getName());
      this.file = paramFileDescriptor;
      this.containingType = paramDescriptor;
      if (paramEnumDescriptorProto.getValueCount() == 0)
        throw new Descriptors.DescriptorValidationException(this, "Enums must contain at least one value.", null);
      this.values = new Descriptors.EnumValueDescriptor[paramEnumDescriptorProto.getValueCount()];
      for (int i = 0; i < paramEnumDescriptorProto.getValueCount(); i++)
        this.values[i] = new Descriptors.EnumValueDescriptor(paramEnumDescriptorProto.getValue(i), paramFileDescriptor, this, i, null);
      Descriptors.FileDescriptor.access$1200(paramFileDescriptor).addSymbol(this);
    }

    private void setProto(DescriptorProtos.EnumDescriptorProto paramEnumDescriptorProto)
    {
      this.proto = paramEnumDescriptorProto;
      for (int i = 0; i < this.values.length; i++)
        Descriptors.EnumValueDescriptor.access$2000(this.values[i], paramEnumDescriptorProto.getValue(i));
    }

    public Descriptors.EnumValueDescriptor findValueByName(String paramString)
    {
      Descriptors.GenericDescriptor localGenericDescriptor = Descriptors.FileDescriptor.access$1200(this.file).findSymbol(this.fullName + '.' + paramString);
      if ((localGenericDescriptor != null) && ((localGenericDescriptor instanceof Descriptors.EnumValueDescriptor)))
        return (Descriptors.EnumValueDescriptor)localGenericDescriptor;
      return null;
    }

    public Descriptors.EnumValueDescriptor findValueByNumber(int paramInt)
    {
      return (Descriptors.EnumValueDescriptor)Descriptors.FileDescriptor.access$1200(this.file).enumValuesByNumber.get(new Descriptors.DescriptorPool.DescriptorIntPair(this, paramInt));
    }

    public Descriptors.Descriptor getContainingType()
    {
      return this.containingType;
    }

    public Descriptors.FileDescriptor getFile()
    {
      return this.file;
    }

    public String getFullName()
    {
      return this.fullName;
    }

    public int getIndex()
    {
      return this.index;
    }

    public String getName()
    {
      return this.proto.getName();
    }

    public DescriptorProtos.EnumOptions getOptions()
    {
      return this.proto.getOptions();
    }

    public List<Descriptors.EnumValueDescriptor> getValues()
    {
      return Collections.unmodifiableList(Arrays.asList(this.values));
    }

    public DescriptorProtos.EnumDescriptorProto toProto()
    {
      return this.proto;
    }
  }

  public static final class EnumValueDescriptor
    implements Descriptors.GenericDescriptor, Internal.EnumLite
  {
    private final Descriptors.FileDescriptor file;
    private final String fullName;
    private final int index;
    private DescriptorProtos.EnumValueDescriptorProto proto;
    private final Descriptors.EnumDescriptor type;

    private EnumValueDescriptor(DescriptorProtos.EnumValueDescriptorProto paramEnumValueDescriptorProto, Descriptors.FileDescriptor paramFileDescriptor, Descriptors.EnumDescriptor paramEnumDescriptor, int paramInt)
      throws Descriptors.DescriptorValidationException
    {
      this.index = paramInt;
      this.proto = paramEnumValueDescriptorProto;
      this.file = paramFileDescriptor;
      this.type = paramEnumDescriptor;
      this.fullName = (paramEnumDescriptor.getFullName() + '.' + paramEnumValueDescriptorProto.getName());
      Descriptors.FileDescriptor.access$1200(paramFileDescriptor).addSymbol(this);
      Descriptors.FileDescriptor.access$1200(paramFileDescriptor).addEnumValueByNumber(this);
    }

    private void setProto(DescriptorProtos.EnumValueDescriptorProto paramEnumValueDescriptorProto)
    {
      this.proto = paramEnumValueDescriptorProto;
    }

    public Descriptors.FileDescriptor getFile()
    {
      return this.file;
    }

    public String getFullName()
    {
      return this.fullName;
    }

    public int getIndex()
    {
      return this.index;
    }

    public String getName()
    {
      return this.proto.getName();
    }

    public int getNumber()
    {
      return this.proto.getNumber();
    }

    public DescriptorProtos.EnumValueOptions getOptions()
    {
      return this.proto.getOptions();
    }

    public Descriptors.EnumDescriptor getType()
    {
      return this.type;
    }

    public DescriptorProtos.EnumValueDescriptorProto toProto()
    {
      return this.proto;
    }
  }

  public static final class FieldDescriptor
    implements Descriptors.GenericDescriptor, Comparable<FieldDescriptor>, FieldSet.FieldDescriptorLite<FieldDescriptor>
  {
    private static final WireFormat.FieldType[] table = WireFormat.FieldType.values();
    private Descriptors.Descriptor containingType;
    private Object defaultValue;
    private Descriptors.EnumDescriptor enumType;
    private final Descriptors.Descriptor extensionScope;
    private final Descriptors.FileDescriptor file;
    private final String fullName;
    private final int index;
    private Descriptors.Descriptor messageType;
    private DescriptorProtos.FieldDescriptorProto proto;
    private Type type;

    static
    {
      if (Type.values().length != DescriptorProtos.FieldDescriptorProto.Type.values().length)
        throw new RuntimeException("descriptor.proto has a new declared type but Desrciptors.java wasn't updated.");
    }

    private FieldDescriptor(DescriptorProtos.FieldDescriptorProto paramFieldDescriptorProto, Descriptors.FileDescriptor paramFileDescriptor, Descriptors.Descriptor paramDescriptor, int paramInt, boolean paramBoolean)
      throws Descriptors.DescriptorValidationException
    {
      this.index = paramInt;
      this.proto = paramFieldDescriptorProto;
      this.fullName = Descriptors.computeFullName(paramFileDescriptor, paramDescriptor, paramFieldDescriptorProto.getName());
      this.file = paramFileDescriptor;
      if (paramFieldDescriptorProto.hasType())
        this.type = Type.valueOf(paramFieldDescriptorProto.getType());
      if (getNumber() <= 0)
        throw new Descriptors.DescriptorValidationException(this, "Field numbers must be positive integers.", null);
      if ((paramFieldDescriptorProto.getOptions().getPacked()) && (!isPackable()))
        throw new Descriptors.DescriptorValidationException(this, "[packed = true] can only be specified for repeated primitive fields.", null);
      if (paramBoolean)
      {
        if (!paramFieldDescriptorProto.hasExtendee())
          throw new Descriptors.DescriptorValidationException(this, "FieldDescriptorProto.extendee not set for extension field.", null);
        this.containingType = null;
        if (paramDescriptor != null)
          this.extensionScope = paramDescriptor;
      }
      while (true)
      {
        Descriptors.FileDescriptor.access$1200(paramFileDescriptor).addSymbol(this);
        return;
        this.extensionScope = null;
        continue;
        if (paramFieldDescriptorProto.hasExtendee())
          throw new Descriptors.DescriptorValidationException(this, "FieldDescriptorProto.extendee set for non-extension field.", null);
        this.containingType = paramDescriptor;
        this.extensionScope = null;
      }
    }

    private void crossLink()
      throws Descriptors.DescriptorValidationException
    {
      if (this.proto.hasExtendee())
      {
        Descriptors.GenericDescriptor localGenericDescriptor2 = Descriptors.FileDescriptor.access$1200(this.file).lookupSymbol(this.proto.getExtendee(), this, Descriptors.DescriptorPool.SearchFilter.TYPES_ONLY);
        if (!(localGenericDescriptor2 instanceof Descriptors.Descriptor))
          throw new Descriptors.DescriptorValidationException(this, '"' + this.proto.getExtendee() + "\" is not a message type.", null);
        this.containingType = ((Descriptors.Descriptor)localGenericDescriptor2);
        if (!getContainingType().isExtensionNumber(getNumber()))
          throw new Descriptors.DescriptorValidationException(this, '"' + getContainingType().getFullName() + "\" does not declare " + getNumber() + " as an extension number.", null);
      }
      if (this.proto.hasTypeName())
      {
        Descriptors.GenericDescriptor localGenericDescriptor1 = Descriptors.FileDescriptor.access$1200(this.file).lookupSymbol(this.proto.getTypeName(), this, Descriptors.DescriptorPool.SearchFilter.TYPES_ONLY);
        if (!this.proto.hasType())
        {
          if (!(localGenericDescriptor1 instanceof Descriptors.Descriptor))
            break label272;
          this.type = Type.MESSAGE;
        }
        while (getJavaType() == JavaType.MESSAGE)
          if (!(localGenericDescriptor1 instanceof Descriptors.Descriptor))
          {
            throw new Descriptors.DescriptorValidationException(this, '"' + this.proto.getTypeName() + "\" is not a message type.", null);
            label272: if ((localGenericDescriptor1 instanceof Descriptors.EnumDescriptor))
              this.type = Type.ENUM;
            else
              throw new Descriptors.DescriptorValidationException(this, '"' + this.proto.getTypeName() + "\" is not a type.", null);
          }
          else
          {
            this.messageType = ((Descriptors.Descriptor)localGenericDescriptor1);
            if (!this.proto.hasDefaultValue())
              break label428;
            throw new Descriptors.DescriptorValidationException(this, "Messages can't have default values.", null);
          }
        if (getJavaType() == JavaType.ENUM)
        {
          if (!(localGenericDescriptor1 instanceof Descriptors.EnumDescriptor))
            throw new Descriptors.DescriptorValidationException(this, '"' + this.proto.getTypeName() + "\" is not an enum type.", null);
          this.enumType = ((Descriptors.EnumDescriptor)localGenericDescriptor1);
        }
      }
      while (true)
        label428: if (this.proto.hasDefaultValue())
          if (isRepeated())
          {
            throw new Descriptors.DescriptorValidationException(this, "Repeated fields cannot have default values.", null);
            throw new Descriptors.DescriptorValidationException(this, "Field with primitive type has type_name.", null);
            if ((getJavaType() != JavaType.MESSAGE) && (getJavaType() != JavaType.ENUM))
              continue;
            throw new Descriptors.DescriptorValidationException(this, "Field with message or enum type missing type_name.", null);
          }
      while (true)
      {
        try
        {
          int i = Descriptors.1.$SwitchMap$com$google$protobuf$Descriptors$FieldDescriptor$Type[getType().ordinal()];
          switch (i)
          {
          default:
            if (!isExtension())
              Descriptors.FileDescriptor.access$1200(this.file).addFieldByNumber(this);
            if ((this.containingType == null) || (!this.containingType.getOptions().getMessageSetWireFormat()))
              return;
            if (!isExtension())
              break;
            if ((isOptional()) && (getType() == Type.MESSAGE))
              return;
            throw new Descriptors.DescriptorValidationException(this, "Extensions of MessageSets must be optional messages.", null);
          case 1:
          case 2:
          case 3:
            this.defaultValue = Integer.valueOf(TextFormat.parseInt32(this.proto.getDefaultValue()));
            continue;
          case 4:
          case 5:
          case 6:
          case 7:
          case 8:
          case 9:
          case 10:
          case 11:
          case 12:
          case 13:
          case 14:
          case 15:
          case 16:
          case 17:
          case 18:
          }
        }
        catch (NumberFormatException localNumberFormatException)
        {
          throw new Descriptors.DescriptorValidationException(this, "Could not parse default value: \"" + this.proto.getDefaultValue() + '"', localNumberFormatException, null);
        }
        this.defaultValue = Integer.valueOf(TextFormat.parseUInt32(this.proto.getDefaultValue()));
        continue;
        this.defaultValue = Long.valueOf(TextFormat.parseInt64(this.proto.getDefaultValue()));
        continue;
        this.defaultValue = Long.valueOf(TextFormat.parseUInt64(this.proto.getDefaultValue()));
        continue;
        if (this.proto.getDefaultValue().equals("inf"))
        {
          this.defaultValue = Float.valueOf((1.0F / 1.0F));
        }
        else if (this.proto.getDefaultValue().equals("-inf"))
        {
          this.defaultValue = Float.valueOf((1.0F / -1.0F));
        }
        else if (this.proto.getDefaultValue().equals("nan"))
        {
          this.defaultValue = Float.valueOf((0.0F / 0.0F));
        }
        else
        {
          this.defaultValue = Float.valueOf(this.proto.getDefaultValue());
          continue;
          if (this.proto.getDefaultValue().equals("inf"))
          {
            this.defaultValue = Double.valueOf((1.0D / 0.0D));
          }
          else if (this.proto.getDefaultValue().equals("-inf"))
          {
            this.defaultValue = Double.valueOf((-1.0D / 0.0D));
          }
          else if (this.proto.getDefaultValue().equals("nan"))
          {
            this.defaultValue = Double.valueOf((0.0D / 0.0D));
          }
          else
          {
            this.defaultValue = Double.valueOf(this.proto.getDefaultValue());
            continue;
            this.defaultValue = Boolean.valueOf(this.proto.getDefaultValue());
            continue;
            this.defaultValue = this.proto.getDefaultValue();
            continue;
            try
            {
              this.defaultValue = TextFormat.unescapeBytes(this.proto.getDefaultValue());
            }
            catch (TextFormat.InvalidEscapeSequenceException localInvalidEscapeSequenceException)
            {
              throw new Descriptors.DescriptorValidationException(this, "Couldn't parse default value: " + localInvalidEscapeSequenceException.getMessage(), localInvalidEscapeSequenceException, null);
            }
            this.defaultValue = this.enumType.findValueByName(this.proto.getDefaultValue());
            if (this.defaultValue == null)
            {
              throw new Descriptors.DescriptorValidationException(this, "Unknown enum default value: \"" + this.proto.getDefaultValue() + '"', null);
              throw new Descriptors.DescriptorValidationException(this, "Message type had default value.", null);
              if (isRepeated())
                this.defaultValue = Collections.emptyList();
              else
                switch (Descriptors.1.$SwitchMap$com$google$protobuf$Descriptors$FieldDescriptor$JavaType[getJavaType().ordinal()])
                {
                default:
                  this.defaultValue = getJavaType().defaultDefault;
                  break;
                case 1:
                  this.defaultValue = this.enumType.getValues().get(0);
                  break;
                case 2:
                  this.defaultValue = null;
                }
            }
          }
        }
      }
      throw new Descriptors.DescriptorValidationException(this, "MessageSets cannot have fields, only extensions.", null);
    }

    private void setProto(DescriptorProtos.FieldDescriptorProto paramFieldDescriptorProto)
    {
      this.proto = paramFieldDescriptorProto;
    }

    public int compareTo(FieldDescriptor paramFieldDescriptor)
    {
      if (paramFieldDescriptor.containingType != this.containingType)
        throw new IllegalArgumentException("FieldDescriptors can only be compared to other FieldDescriptors for fields of the same message type.");
      return getNumber() - paramFieldDescriptor.getNumber();
    }

    public Descriptors.Descriptor getContainingType()
    {
      return this.containingType;
    }

    public Object getDefaultValue()
    {
      if (getJavaType() == JavaType.MESSAGE)
        throw new UnsupportedOperationException("FieldDescriptor.getDefaultValue() called on an embedded message field.");
      return this.defaultValue;
    }

    public Descriptors.EnumDescriptor getEnumType()
    {
      if (getJavaType() != JavaType.ENUM)
        throw new UnsupportedOperationException("This field is not of enum type.");
      return this.enumType;
    }

    public Descriptors.Descriptor getExtensionScope()
    {
      if (!isExtension())
        throw new UnsupportedOperationException("This field is not an extension.");
      return this.extensionScope;
    }

    public Descriptors.FileDescriptor getFile()
    {
      return this.file;
    }

    public String getFullName()
    {
      return this.fullName;
    }

    public int getIndex()
    {
      return this.index;
    }

    public JavaType getJavaType()
    {
      return this.type.getJavaType();
    }

    public WireFormat.JavaType getLiteJavaType()
    {
      return getLiteType().getJavaType();
    }

    public WireFormat.FieldType getLiteType()
    {
      return table[this.type.ordinal()];
    }

    public Descriptors.Descriptor getMessageType()
    {
      if (getJavaType() != JavaType.MESSAGE)
        throw new UnsupportedOperationException("This field is not of message type.");
      return this.messageType;
    }

    public String getName()
    {
      return this.proto.getName();
    }

    public int getNumber()
    {
      return this.proto.getNumber();
    }

    public DescriptorProtos.FieldOptions getOptions()
    {
      return this.proto.getOptions();
    }

    public Type getType()
    {
      return this.type;
    }

    public boolean hasDefaultValue()
    {
      return this.proto.hasDefaultValue();
    }

    public MessageLite.Builder internalMergeFrom(MessageLite.Builder paramBuilder, MessageLite paramMessageLite)
    {
      return ((Message.Builder)paramBuilder).mergeFrom((Message)paramMessageLite);
    }

    public MutableMessageLite internalMergeFrom(MutableMessageLite paramMutableMessageLite1, MutableMessageLite paramMutableMessageLite2)
    {
      return ((MutableMessage)paramMutableMessageLite1).mergeFrom((MutableMessage)paramMutableMessageLite2);
    }

    public boolean isExtension()
    {
      return this.proto.hasExtendee();
    }

    public boolean isOptional()
    {
      return this.proto.getLabel() == DescriptorProtos.FieldDescriptorProto.Label.LABEL_OPTIONAL;
    }

    public boolean isPackable()
    {
      return (isRepeated()) && (getLiteType().isPackable());
    }

    public boolean isPacked()
    {
      return getOptions().getPacked();
    }

    public boolean isRepeated()
    {
      return this.proto.getLabel() == DescriptorProtos.FieldDescriptorProto.Label.LABEL_REPEATED;
    }

    public boolean isRequired()
    {
      return this.proto.getLabel() == DescriptorProtos.FieldDescriptorProto.Label.LABEL_REQUIRED;
    }

    public DescriptorProtos.FieldDescriptorProto toProto()
    {
      return this.proto;
    }

    public static enum JavaType
    {
      private final Object defaultDefault;

      static
      {
        FLOAT = new JavaType("FLOAT", 2, Float.valueOf(0.0F));
        DOUBLE = new JavaType("DOUBLE", 3, Double.valueOf(0.0D));
        BOOLEAN = new JavaType("BOOLEAN", 4, Boolean.valueOf(false));
        STRING = new JavaType("STRING", 5, "");
        BYTE_STRING = new JavaType("BYTE_STRING", 6, ByteString.EMPTY);
        ENUM = new JavaType("ENUM", 7, null);
        MESSAGE = new JavaType("MESSAGE", 8, null);
        JavaType[] arrayOfJavaType = new JavaType[9];
        arrayOfJavaType[0] = INT;
        arrayOfJavaType[1] = LONG;
        arrayOfJavaType[2] = FLOAT;
        arrayOfJavaType[3] = DOUBLE;
        arrayOfJavaType[4] = BOOLEAN;
        arrayOfJavaType[5] = STRING;
        arrayOfJavaType[6] = BYTE_STRING;
        arrayOfJavaType[7] = ENUM;
        arrayOfJavaType[8] = MESSAGE;
      }

      private JavaType(Object paramObject)
      {
        this.defaultDefault = paramObject;
      }
    }

    public static enum Type
    {
      private Descriptors.FieldDescriptor.JavaType javaType;

      static
      {
        INT32 = new Type("INT32", 4, Descriptors.FieldDescriptor.JavaType.INT);
        FIXED64 = new Type("FIXED64", 5, Descriptors.FieldDescriptor.JavaType.LONG);
        FIXED32 = new Type("FIXED32", 6, Descriptors.FieldDescriptor.JavaType.INT);
        BOOL = new Type("BOOL", 7, Descriptors.FieldDescriptor.JavaType.BOOLEAN);
        STRING = new Type("STRING", 8, Descriptors.FieldDescriptor.JavaType.STRING);
        GROUP = new Type("GROUP", 9, Descriptors.FieldDescriptor.JavaType.MESSAGE);
        MESSAGE = new Type("MESSAGE", 10, Descriptors.FieldDescriptor.JavaType.MESSAGE);
        BYTES = new Type("BYTES", 11, Descriptors.FieldDescriptor.JavaType.BYTE_STRING);
        UINT32 = new Type("UINT32", 12, Descriptors.FieldDescriptor.JavaType.INT);
        ENUM = new Type("ENUM", 13, Descriptors.FieldDescriptor.JavaType.ENUM);
        SFIXED32 = new Type("SFIXED32", 14, Descriptors.FieldDescriptor.JavaType.INT);
        SFIXED64 = new Type("SFIXED64", 15, Descriptors.FieldDescriptor.JavaType.LONG);
        SINT32 = new Type("SINT32", 16, Descriptors.FieldDescriptor.JavaType.INT);
        SINT64 = new Type("SINT64", 17, Descriptors.FieldDescriptor.JavaType.LONG);
        Type[] arrayOfType = new Type[18];
        arrayOfType[0] = DOUBLE;
        arrayOfType[1] = FLOAT;
        arrayOfType[2] = INT64;
        arrayOfType[3] = UINT64;
        arrayOfType[4] = INT32;
        arrayOfType[5] = FIXED64;
        arrayOfType[6] = FIXED32;
        arrayOfType[7] = BOOL;
        arrayOfType[8] = STRING;
        arrayOfType[9] = GROUP;
        arrayOfType[10] = MESSAGE;
        arrayOfType[11] = BYTES;
        arrayOfType[12] = UINT32;
        arrayOfType[13] = ENUM;
        arrayOfType[14] = SFIXED32;
        arrayOfType[15] = SFIXED64;
        arrayOfType[16] = SINT32;
        arrayOfType[17] = SINT64;
      }

      private Type(Descriptors.FieldDescriptor.JavaType paramJavaType)
      {
        this.javaType = paramJavaType;
      }

      public static Type valueOf(DescriptorProtos.FieldDescriptorProto.Type paramType)
      {
        return values()[(-1 + paramType.getNumber())];
      }

      public Descriptors.FieldDescriptor.JavaType getJavaType()
      {
        return this.javaType;
      }

      public DescriptorProtos.FieldDescriptorProto.Type toProto()
      {
        return DescriptorProtos.FieldDescriptorProto.Type.valueOf(1 + ordinal());
      }
    }
  }

  public static final class FileDescriptor
  {
    private final FileDescriptor[] dependencies;
    private final Descriptors.EnumDescriptor[] enumTypes;
    private final Descriptors.FieldDescriptor[] extensions;
    private final Descriptors.Descriptor[] messageTypes;
    private final Descriptors.DescriptorPool pool;
    private DescriptorProtos.FileDescriptorProto proto;
    private final FileDescriptor[] publicDependencies;
    private final Descriptors.ServiceDescriptor[] services;

    private FileDescriptor(DescriptorProtos.FileDescriptorProto paramFileDescriptorProto, FileDescriptor[] paramArrayOfFileDescriptor, Descriptors.DescriptorPool paramDescriptorPool)
      throws Descriptors.DescriptorValidationException
    {
      this.pool = paramDescriptorPool;
      this.proto = paramFileDescriptorProto;
      this.dependencies = ((FileDescriptor[])paramArrayOfFileDescriptor.clone());
      this.publicDependencies = new FileDescriptor[paramFileDescriptorProto.getPublicDependencyCount()];
      for (int i = 0; i < paramFileDescriptorProto.getPublicDependencyCount(); i++)
      {
        int i1 = paramFileDescriptorProto.getPublicDependency(i);
        if ((i1 < 0) || (i1 >= this.dependencies.length))
          throw new Descriptors.DescriptorValidationException(this, "Invalid public dependency index.", null);
        this.publicDependencies[i] = this.dependencies[paramFileDescriptorProto.getPublicDependency(i)];
      }
      paramDescriptorPool.addPackage(getPackage(), this);
      this.messageTypes = new Descriptors.Descriptor[paramFileDescriptorProto.getMessageTypeCount()];
      for (int j = 0; j < paramFileDescriptorProto.getMessageTypeCount(); j++)
        this.messageTypes[j] = new Descriptors.Descriptor(paramFileDescriptorProto.getMessageType(j), this, null, j, null);
      this.enumTypes = new Descriptors.EnumDescriptor[paramFileDescriptorProto.getEnumTypeCount()];
      for (int k = 0; k < paramFileDescriptorProto.getEnumTypeCount(); k++)
        this.enumTypes[k] = new Descriptors.EnumDescriptor(paramFileDescriptorProto.getEnumType(k), this, null, k, null);
      this.services = new Descriptors.ServiceDescriptor[paramFileDescriptorProto.getServiceCount()];
      for (int m = 0; m < paramFileDescriptorProto.getServiceCount(); m++)
        this.services[m] = new Descriptors.ServiceDescriptor(paramFileDescriptorProto.getService(m), this, m, null);
      this.extensions = new Descriptors.FieldDescriptor[paramFileDescriptorProto.getExtensionCount()];
      for (int n = 0; n < paramFileDescriptorProto.getExtensionCount(); n++)
        this.extensions[n] = new Descriptors.FieldDescriptor(paramFileDescriptorProto.getExtension(n), this, null, n, true, null);
    }

    public static FileDescriptor buildFrom(DescriptorProtos.FileDescriptorProto paramFileDescriptorProto, FileDescriptor[] paramArrayOfFileDescriptor)
      throws Descriptors.DescriptorValidationException
    {
      FileDescriptor localFileDescriptor = new FileDescriptor(paramFileDescriptorProto, paramArrayOfFileDescriptor, new Descriptors.DescriptorPool(paramArrayOfFileDescriptor));
      if (paramArrayOfFileDescriptor.length != paramFileDescriptorProto.getDependencyCount())
        throw new Descriptors.DescriptorValidationException(localFileDescriptor, "Dependencies passed to FileDescriptor.buildFrom() don't match those listed in the FileDescriptorProto.", null);
      for (int i = 0; i < paramFileDescriptorProto.getDependencyCount(); i++)
        if (!paramArrayOfFileDescriptor[i].getName().equals(paramFileDescriptorProto.getDependency(i)))
          throw new Descriptors.DescriptorValidationException(localFileDescriptor, "Dependencies passed to FileDescriptor.buildFrom() don't match those listed in the FileDescriptorProto.", null);
      localFileDescriptor.crossLink();
      return localFileDescriptor;
    }

    private void crossLink()
      throws Descriptors.DescriptorValidationException
    {
      Descriptors.Descriptor[] arrayOfDescriptor = this.messageTypes;
      int i = arrayOfDescriptor.length;
      for (int j = 0; j < i; j++)
        arrayOfDescriptor[j].crossLink();
      Descriptors.ServiceDescriptor[] arrayOfServiceDescriptor = this.services;
      int k = arrayOfServiceDescriptor.length;
      for (int m = 0; m < k; m++)
        Descriptors.ServiceDescriptor.access$600(arrayOfServiceDescriptor[m]);
      Descriptors.FieldDescriptor[] arrayOfFieldDescriptor = this.extensions;
      int n = arrayOfFieldDescriptor.length;
      for (int i1 = 0; i1 < n; i1++)
        arrayOfFieldDescriptor[i1].crossLink();
    }

    // ERROR //
    public static void internalBuildGeneratedFileFrom(String[] paramArrayOfString, FileDescriptor[] paramArrayOfFileDescriptor, InternalDescriptorAssigner paramInternalDescriptorAssigner)
    {
      // Byte code:
      //   0: new 170	java/lang/StringBuilder
      //   3: dup
      //   4: invokespecial 171	java/lang/StringBuilder:<init>	()V
      //   7: astore_3
      //   8: aload_0
      //   9: arraylength
      //   10: istore 4
      //   12: iconst_0
      //   13: istore 5
      //   15: iload 5
      //   17: iload 4
      //   19: if_icmpge +18 -> 37
      //   22: aload_3
      //   23: aload_0
      //   24: iload 5
      //   26: aaload
      //   27: invokevirtual 175	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
      //   30: pop
      //   31: iinc 5 1
      //   34: goto -19 -> 15
      //   37: aload_3
      //   38: invokevirtual 178	java/lang/StringBuilder:toString	()Ljava/lang/String;
      //   41: ldc 180
      //   43: invokevirtual 184	java/lang/String:getBytes	(Ljava/lang/String;)[B
      //   46: astore 7
      //   48: aload 7
      //   50: invokestatic 188	com/google/protobuf/DescriptorProtos$FileDescriptorProto:parseFrom	([B)Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;
      //   53: astore 9
      //   55: aload 9
      //   57: aload_1
      //   58: invokestatic 190	com/google/protobuf/Descriptors$FileDescriptor:buildFrom	(Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;[Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/Descriptors$FileDescriptor;
      //   61: astore 11
      //   63: aload_2
      //   64: aload 11
      //   66: invokeinterface 196 2 0
      //   71: astore 12
      //   73: aload 12
      //   75: ifnull +19 -> 94
      //   78: aload 7
      //   80: aload 12
      //   82: invokestatic 199	com/google/protobuf/DescriptorProtos$FileDescriptorProto:parseFrom	([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;
      //   85: astore 14
      //   87: aload 11
      //   89: aload 14
      //   91: invokespecial 203	com/google/protobuf/Descriptors$FileDescriptor:setProto	(Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;)V
      //   94: return
      //   95: astore 6
      //   97: new 205	java/lang/RuntimeException
      //   100: dup
      //   101: ldc 207
      //   103: aload 6
      //   105: invokespecial 210	java/lang/RuntimeException:<init>	(Ljava/lang/String;Ljava/lang/Throwable;)V
      //   108: athrow
      //   109: astore 8
      //   111: new 212	java/lang/IllegalArgumentException
      //   114: dup
      //   115: ldc 214
      //   117: aload 8
      //   119: invokespecial 215	java/lang/IllegalArgumentException:<init>	(Ljava/lang/String;Ljava/lang/Throwable;)V
      //   122: athrow
      //   123: astore 10
      //   125: new 212	java/lang/IllegalArgumentException
      //   128: dup
      //   129: new 170	java/lang/StringBuilder
      //   132: dup
      //   133: invokespecial 171	java/lang/StringBuilder:<init>	()V
      //   136: ldc 217
      //   138: invokevirtual 175	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
      //   141: aload 9
      //   143: invokevirtual 218	com/google/protobuf/DescriptorProtos$FileDescriptorProto:getName	()Ljava/lang/String;
      //   146: invokevirtual 175	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
      //   149: ldc 220
      //   151: invokevirtual 175	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
      //   154: invokevirtual 178	java/lang/StringBuilder:toString	()Ljava/lang/String;
      //   157: aload 10
      //   159: invokespecial 215	java/lang/IllegalArgumentException:<init>	(Ljava/lang/String;Ljava/lang/Throwable;)V
      //   162: athrow
      //   163: astore 13
      //   165: new 212	java/lang/IllegalArgumentException
      //   168: dup
      //   169: ldc 214
      //   171: aload 13
      //   173: invokespecial 215	java/lang/IllegalArgumentException:<init>	(Ljava/lang/String;Ljava/lang/Throwable;)V
      //   176: athrow
      //
      // Exception table:
      //   from	to	target	type
      //   37	48	95	java/io/UnsupportedEncodingException
      //   48	55	109	com/google/protobuf/InvalidProtocolBufferException
      //   55	63	123	com/google/protobuf/Descriptors$DescriptorValidationException
      //   78	87	163	com/google/protobuf/InvalidProtocolBufferException
    }

    public static void internalUpdateFileDescriptor(FileDescriptor paramFileDescriptor, ExtensionRegistry paramExtensionRegistry)
    {
      ByteString localByteString = paramFileDescriptor.proto.toByteString();
      try
      {
        DescriptorProtos.FileDescriptorProto localFileDescriptorProto = DescriptorProtos.FileDescriptorProto.parseFrom(localByteString, paramExtensionRegistry);
        paramFileDescriptor.setProto(localFileDescriptorProto);
        return;
      }
      catch (InvalidProtocolBufferException localInvalidProtocolBufferException)
      {
        throw new IllegalArgumentException("Failed to parse protocol buffer descriptor for generated code.", localInvalidProtocolBufferException);
      }
    }

    private void setProto(DescriptorProtos.FileDescriptorProto paramFileDescriptorProto)
    {
      this.proto = paramFileDescriptorProto;
      for (int i = 0; i < this.messageTypes.length; i++)
        this.messageTypes[i].setProto(paramFileDescriptorProto.getMessageType(i));
      for (int j = 0; j < this.enumTypes.length; j++)
        this.enumTypes[j].setProto(paramFileDescriptorProto.getEnumType(j));
      for (int k = 0; k < this.services.length; k++)
        Descriptors.ServiceDescriptor.access$1000(this.services[k], paramFileDescriptorProto.getService(k));
      for (int m = 0; m < this.extensions.length; m++)
        this.extensions[m].setProto(paramFileDescriptorProto.getExtension(m));
    }

    public Descriptors.EnumDescriptor findEnumTypeByName(String paramString)
    {
      if (paramString.indexOf('.') != -1)
        return null;
      if (getPackage().length() > 0)
        paramString = getPackage() + '.' + paramString;
      Descriptors.GenericDescriptor localGenericDescriptor = this.pool.findSymbol(paramString);
      if ((localGenericDescriptor != null) && ((localGenericDescriptor instanceof Descriptors.EnumDescriptor)) && (localGenericDescriptor.getFile() == this))
        return (Descriptors.EnumDescriptor)localGenericDescriptor;
      return null;
    }

    public Descriptors.FieldDescriptor findExtensionByName(String paramString)
    {
      if (paramString.indexOf('.') != -1)
        return null;
      if (getPackage().length() > 0)
        paramString = getPackage() + '.' + paramString;
      Descriptors.GenericDescriptor localGenericDescriptor = this.pool.findSymbol(paramString);
      if ((localGenericDescriptor != null) && ((localGenericDescriptor instanceof Descriptors.FieldDescriptor)) && (localGenericDescriptor.getFile() == this))
        return (Descriptors.FieldDescriptor)localGenericDescriptor;
      return null;
    }

    public Descriptors.Descriptor findMessageTypeByName(String paramString)
    {
      if (paramString.indexOf('.') != -1)
        return null;
      if (getPackage().length() > 0)
        paramString = getPackage() + '.' + paramString;
      Descriptors.GenericDescriptor localGenericDescriptor = this.pool.findSymbol(paramString);
      if ((localGenericDescriptor != null) && ((localGenericDescriptor instanceof Descriptors.Descriptor)) && (localGenericDescriptor.getFile() == this))
        return (Descriptors.Descriptor)localGenericDescriptor;
      return null;
    }

    public Descriptors.ServiceDescriptor findServiceByName(String paramString)
    {
      if (paramString.indexOf('.') != -1)
        return null;
      if (getPackage().length() > 0)
        paramString = getPackage() + '.' + paramString;
      Descriptors.GenericDescriptor localGenericDescriptor = this.pool.findSymbol(paramString);
      if ((localGenericDescriptor != null) && ((localGenericDescriptor instanceof Descriptors.ServiceDescriptor)) && (localGenericDescriptor.getFile() == this))
        return (Descriptors.ServiceDescriptor)localGenericDescriptor;
      return null;
    }

    public List<FileDescriptor> getDependencies()
    {
      return Collections.unmodifiableList(Arrays.asList(this.dependencies));
    }

    public List<Descriptors.EnumDescriptor> getEnumTypes()
    {
      return Collections.unmodifiableList(Arrays.asList(this.enumTypes));
    }

    public List<Descriptors.FieldDescriptor> getExtensions()
    {
      return Collections.unmodifiableList(Arrays.asList(this.extensions));
    }

    public List<Descriptors.Descriptor> getMessageTypes()
    {
      return Collections.unmodifiableList(Arrays.asList(this.messageTypes));
    }

    public String getName()
    {
      return this.proto.getName();
    }

    public DescriptorProtos.FileOptions getOptions()
    {
      return this.proto.getOptions();
    }

    public String getPackage()
    {
      return this.proto.getPackage();
    }

    public List<FileDescriptor> getPublicDependencies()
    {
      return Collections.unmodifiableList(Arrays.asList(this.publicDependencies));
    }

    public List<Descriptors.ServiceDescriptor> getServices()
    {
      return Collections.unmodifiableList(Arrays.asList(this.services));
    }

    public DescriptorProtos.FileDescriptorProto toProto()
    {
      return this.proto;
    }

    public static abstract interface InternalDescriptorAssigner
    {
      public abstract ExtensionRegistry assignDescriptors(Descriptors.FileDescriptor paramFileDescriptor);
    }
  }

  private static abstract interface GenericDescriptor
  {
    public abstract Descriptors.FileDescriptor getFile();

    public abstract String getFullName();

    public abstract String getName();

    public abstract Message toProto();
  }

  public static final class MethodDescriptor
    implements Descriptors.GenericDescriptor
  {
    private final Descriptors.FileDescriptor file;
    private final String fullName;
    private final int index;
    private Descriptors.Descriptor inputType;
    private Descriptors.Descriptor outputType;
    private DescriptorProtos.MethodDescriptorProto proto;
    private final Descriptors.ServiceDescriptor service;

    private MethodDescriptor(DescriptorProtos.MethodDescriptorProto paramMethodDescriptorProto, Descriptors.FileDescriptor paramFileDescriptor, Descriptors.ServiceDescriptor paramServiceDescriptor, int paramInt)
      throws Descriptors.DescriptorValidationException
    {
      this.index = paramInt;
      this.proto = paramMethodDescriptorProto;
      this.file = paramFileDescriptor;
      this.service = paramServiceDescriptor;
      this.fullName = (paramServiceDescriptor.getFullName() + '.' + paramMethodDescriptorProto.getName());
      paramFileDescriptor.pool.addSymbol(this);
    }

    private void crossLink()
      throws Descriptors.DescriptorValidationException
    {
      Descriptors.GenericDescriptor localGenericDescriptor1 = this.file.pool.lookupSymbol(this.proto.getInputType(), this, Descriptors.DescriptorPool.SearchFilter.TYPES_ONLY);
      if (!(localGenericDescriptor1 instanceof Descriptors.Descriptor))
        throw new Descriptors.DescriptorValidationException(this, '"' + this.proto.getInputType() + "\" is not a message type.", null);
      this.inputType = ((Descriptors.Descriptor)localGenericDescriptor1);
      Descriptors.GenericDescriptor localGenericDescriptor2 = this.file.pool.lookupSymbol(this.proto.getOutputType(), this, Descriptors.DescriptorPool.SearchFilter.TYPES_ONLY);
      if (!(localGenericDescriptor2 instanceof Descriptors.Descriptor))
        throw new Descriptors.DescriptorValidationException(this, '"' + this.proto.getOutputType() + "\" is not a message type.", null);
      this.outputType = ((Descriptors.Descriptor)localGenericDescriptor2);
    }

    private void setProto(DescriptorProtos.MethodDescriptorProto paramMethodDescriptorProto)
    {
      this.proto = paramMethodDescriptorProto;
    }

    public Descriptors.FileDescriptor getFile()
    {
      return this.file;
    }

    public String getFullName()
    {
      return this.fullName;
    }

    public int getIndex()
    {
      return this.index;
    }

    public Descriptors.Descriptor getInputType()
    {
      return this.inputType;
    }

    public String getName()
    {
      return this.proto.getName();
    }

    public DescriptorProtos.MethodOptions getOptions()
    {
      return this.proto.getOptions();
    }

    public Descriptors.Descriptor getOutputType()
    {
      return this.outputType;
    }

    public Descriptors.ServiceDescriptor getService()
    {
      return this.service;
    }

    public DescriptorProtos.MethodDescriptorProto toProto()
    {
      return this.proto;
    }
  }

  public static final class ServiceDescriptor
    implements Descriptors.GenericDescriptor
  {
    private final Descriptors.FileDescriptor file;
    private final String fullName;
    private final int index;
    private Descriptors.MethodDescriptor[] methods;
    private DescriptorProtos.ServiceDescriptorProto proto;

    private ServiceDescriptor(DescriptorProtos.ServiceDescriptorProto paramServiceDescriptorProto, Descriptors.FileDescriptor paramFileDescriptor, int paramInt)
      throws Descriptors.DescriptorValidationException
    {
      this.index = paramInt;
      this.proto = paramServiceDescriptorProto;
      this.fullName = Descriptors.computeFullName(paramFileDescriptor, null, paramServiceDescriptorProto.getName());
      this.file = paramFileDescriptor;
      this.methods = new Descriptors.MethodDescriptor[paramServiceDescriptorProto.getMethodCount()];
      for (int i = 0; i < paramServiceDescriptorProto.getMethodCount(); i++)
        this.methods[i] = new Descriptors.MethodDescriptor(paramServiceDescriptorProto.getMethod(i), paramFileDescriptor, this, i, null);
      paramFileDescriptor.pool.addSymbol(this);
    }

    private void crossLink()
      throws Descriptors.DescriptorValidationException
    {
      Descriptors.MethodDescriptor[] arrayOfMethodDescriptor = this.methods;
      int i = arrayOfMethodDescriptor.length;
      for (int j = 0; j < i; j++)
        arrayOfMethodDescriptor[j].crossLink();
    }

    private void setProto(DescriptorProtos.ServiceDescriptorProto paramServiceDescriptorProto)
    {
      this.proto = paramServiceDescriptorProto;
      for (int i = 0; i < this.methods.length; i++)
        this.methods[i].setProto(paramServiceDescriptorProto.getMethod(i));
    }

    public Descriptors.MethodDescriptor findMethodByName(String paramString)
    {
      Descriptors.GenericDescriptor localGenericDescriptor = this.file.pool.findSymbol(this.fullName + '.' + paramString);
      if ((localGenericDescriptor != null) && ((localGenericDescriptor instanceof Descriptors.MethodDescriptor)))
        return (Descriptors.MethodDescriptor)localGenericDescriptor;
      return null;
    }

    public Descriptors.FileDescriptor getFile()
    {
      return this.file;
    }

    public String getFullName()
    {
      return this.fullName;
    }

    public int getIndex()
    {
      return this.index;
    }

    public List<Descriptors.MethodDescriptor> getMethods()
    {
      return Collections.unmodifiableList(Arrays.asList(this.methods));
    }

    public String getName()
    {
      return this.proto.getName();
    }

    public DescriptorProtos.ServiceOptions getOptions()
    {
      return this.proto.getOptions();
    }

    public DescriptorProtos.ServiceDescriptorProto toProto()
    {
      return this.proto;
    }
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.protobuf.Descriptors
 * JD-Core Version:    0.6.2
 */
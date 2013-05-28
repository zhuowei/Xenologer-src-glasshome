package com.google.i18n.phonenumbers;

import java.util.HashSet;
import java.util.Set;

public class AlternateFormatsCountryCodeSet
{
  static Set<Integer> getCountryCodeSet()
  {
    HashSet localHashSet = new HashSet(8);
    localHashSet.add(Integer.valueOf(43));
    localHashSet.add(Integer.valueOf(44));
    localHashSet.add(Integer.valueOf(49));
    localHashSet.add(Integer.valueOf(55));
    localHashSet.add(Integer.valueOf(61));
    localHashSet.add(Integer.valueOf(81));
    return localHashSet;
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.i18n.phonenumbers.AlternateFormatsCountryCodeSet
 * JD-Core Version:    0.6.2
 */
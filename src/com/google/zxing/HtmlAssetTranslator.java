package com.google.zxing;

import java.io.File;
import java.io.FileFilter;
import java.io.FilenameFilter;
import java.io.IOException;
import java.io.PrintStream;
import java.net.URI;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Queue;
import java.util.regex.Pattern;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.NamedNodeMap;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
import org.w3c.dom.Text;
import org.w3c.dom.bootstrap.DOMImplementationRegistry;
import org.w3c.dom.ls.DOMImplementationLS;
import org.w3c.dom.ls.LSSerializer;
import org.xml.sax.SAXException;

public final class HtmlAssetTranslator
{
  private static final Pattern COMMA = Pattern.compile(",");

  public static void main(String[] paramArrayOfString)
    throws IOException
  {
    if (paramArrayOfString.length < 3)
      System.err.println("Usage: HtmlAssetTranslator android/assets/ (all|lang1[,lang2 ...]) (all|file1.html[ file2.html ...])");
    while (true)
    {
      return;
      File localFile = new File(paramArrayOfString[0]);
      Collection localCollection1 = parseLanguagesToTranslate(localFile, paramArrayOfString[1]);
      Collection localCollection2 = parseFileNamesToTranslate(localFile, Arrays.asList(paramArrayOfString).subList(2, paramArrayOfString.length));
      Iterator localIterator = localCollection1.iterator();
      while (localIterator.hasNext())
        translateOneLanguage(localFile, (String)localIterator.next(), localCollection2);
    }
  }

  private static Collection<String> parseFileNamesToTranslate(File paramFile, List<String> paramList)
  {
    ArrayList localArrayList = new ArrayList();
    if ("all".equals(paramList.get(0)))
    {
      File[] arrayOfFile = new File(paramFile, "html-en").listFiles(new FileFilter()
      {
        public boolean accept(File paramAnonymousFile)
        {
          return (paramAnonymousFile.isFile()) && (paramAnonymousFile.getName().endsWith(".html"));
        }
      });
      int i = arrayOfFile.length;
      for (int j = 0; j < i; j++)
        localArrayList.add(arrayOfFile[j].getName());
    }
    Iterator localIterator = paramList.iterator();
    while (localIterator.hasNext())
      localArrayList.add((String)localIterator.next());
    return localArrayList;
  }

  private static Collection<String> parseLanguagesToTranslate(File paramFile, CharSequence paramCharSequence)
  {
    ArrayList localArrayList = new ArrayList();
    if ("all".equals(paramCharSequence))
    {
      File[] arrayOfFile = paramFile.listFiles(new FileFilter()
      {
        public boolean accept(File paramAnonymousFile)
        {
          return (paramAnonymousFile.isDirectory()) && (paramAnonymousFile.getName().startsWith("html-")) && (!"html-en".equals(paramAnonymousFile.getName()));
        }
      });
      int i = arrayOfFile.length;
      for (int j = 0; j < i; j++)
        localArrayList.add(arrayOfFile[j].getName().substring(5));
    }
    localArrayList.addAll(Arrays.asList(COMMA.split(paramCharSequence)));
    return localArrayList;
  }

  private static boolean shouldTranslate(Node paramNode)
  {
    NamedNodeMap localNamedNodeMap = paramNode.getAttributes();
    if (localNamedNodeMap != null)
    {
      Node localNode = localNamedNodeMap.getNamedItem("class");
      if (localNode != null)
      {
        String str2 = localNode.getTextContent();
        if ((str2 == null) || (!str2.contains("notranslate")));
      }
    }
    while (true)
    {
      return false;
      if (!"script".equalsIgnoreCase(paramNode.getNodeName()))
      {
        String str1 = paramNode.getTextContent();
        if (str1 != null)
          for (int i = 0; i < str1.length(); i++)
            if (Character.isLetter(str1.charAt(i)))
              return true;
      }
    }
  }

  private static void translateOneFile(String paramString1, File paramFile1, File paramFile2, String paramString2)
    throws IOException
  {
    File localFile = new File(paramFile1, paramFile2.getName());
    DocumentBuilderFactory localDocumentBuilderFactory = DocumentBuilderFactory.newInstance();
    Document localDocument;
    Element localElement1;
    while (true)
    {
      Node localNode;
      try
      {
        localDocument = localDocumentBuilderFactory.newDocumentBuilder().parse(paramFile2);
        localElement1 = localDocument.getDocumentElement();
        localElement1.normalize();
        localLinkedList = new LinkedList();
        localLinkedList.add(localElement1);
        if (localLinkedList.isEmpty())
          break;
        localNode = (Node)localLinkedList.poll();
        if (shouldTranslate(localNode))
        {
          NodeList localNodeList = localNode.getChildNodes();
          int i = 0;
          if (i < localNodeList.getLength())
          {
            localLinkedList.add(localNodeList.item(i));
            i++;
            continue;
          }
        }
      }
      catch (ParserConfigurationException localParserConfigurationException)
      {
        LinkedList localLinkedList;
        IllegalStateException localIllegalStateException1 = new IllegalStateException(localParserConfigurationException);
        throw localIllegalStateException1;
      }
      catch (SAXException localSAXException)
      {
        IOException localIOException = new IOException(localSAXException);
        throw localIOException;
      }
      if (localNode.getNodeType() == 3)
      {
        String str1 = localNode.getTextContent();
        if (!str1.trim().isEmpty())
        {
          String str2 = StringsResourceTranslator.translateString(str1, paramString1);
          localNode.setTextContent(' ' + str2 + ' ');
        }
      }
    }
    Text localText = localDocument.createTextNode(paramString2);
    Element localElement2 = localDocument.createElement("p");
    localElement2.appendChild(localText);
    localElement1.getElementsByTagName("body").item(0).appendChild(localElement2);
    try
    {
      DOMImplementationRegistry localDOMImplementationRegistry = DOMImplementationRegistry.newInstance();
      ((DOMImplementationLS)localDOMImplementationRegistry.getDOMImplementation("LS")).createLSSerializer().writeToURI(localDocument, localFile.toURI().toString());
      return;
    }
    catch (ClassNotFoundException localClassNotFoundException)
    {
      IllegalStateException localIllegalStateException4 = new IllegalStateException(localClassNotFoundException);
      throw localIllegalStateException4;
    }
    catch (InstantiationException localInstantiationException)
    {
      IllegalStateException localIllegalStateException3 = new IllegalStateException(localInstantiationException);
      throw localIllegalStateException3;
    }
    catch (IllegalAccessException localIllegalAccessException)
    {
      IllegalStateException localIllegalStateException2 = new IllegalStateException(localIllegalAccessException);
      throw localIllegalStateException2;
    }
  }

  private static void translateOneLanguage(File paramFile, String paramString, Collection<String> paramCollection)
    throws IOException
  {
    File localFile1 = new File(paramFile, "html-" + paramString);
    localFile1.mkdirs();
    File localFile2 = new File(paramFile, "html-en");
    String str = StringsResourceTranslator.translateString("Translated by Google Translate.", paramString);
    File[] arrayOfFile = localFile2.listFiles(new FilenameFilter()
    {
      public boolean accept(File paramAnonymousFile, String paramAnonymousString)
      {
        return (paramAnonymousString.endsWith(".html")) && ((this.val$filesToTranslate.isEmpty()) || (this.val$filesToTranslate.contains(paramAnonymousString)));
      }
    });
    int i = arrayOfFile.length;
    for (int j = 0; j < i; j++)
      translateOneFile(paramString, localFile1, arrayOfFile[j], str);
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.zxing.HtmlAssetTranslator
 * JD-Core Version:    0.6.2
 */
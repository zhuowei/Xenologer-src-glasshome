.class public final Lcom/google/zxing/StringsResourceTranslator;
.super Ljava/lang/Object;
.source "StringsResourceTranslator.java"


# static fields
.field private static final APACHE_2_LICENSE:Ljava/lang/String; = "<!--\n Copyright (C) 2013 ZXing authors\n\n Licensed under the Apache License, Version 2.0 (the \"License\");\n you may not use this file except in compliance with the License.\n You may obtain a copy of the License at\n\n      http://www.apache.org/licenses/LICENSE-2.0\n\n Unless required by applicable law or agreed to in writing, software\n distributed under the License is distributed on an \"AS IS\" BASIS,\n WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.\n See the License for the specific language governing permissions and\n limitations under the License.\n -->\n"

.field private static final API_KEY:Ljava/lang/String; = "INSERT-YOUR-KEY"

.field private static final ENTRY_PATTERN:Ljava/util/regex/Pattern;

.field private static final LANGUAGE_CODE_MASSAGINGS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final STRINGS_FILE_NAME_PATTERN:Ljava/util/regex/Pattern;

.field private static final TRANSLATE_RESPONSE_PATTERN:Ljava/util/regex/Pattern;

.field private static final UTF8:Ljava/nio/charset/Charset;

.field private static final VALUES_DIR_PATTERN:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 58
    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/StringsResourceTranslator;->UTF8:Ljava/nio/charset/Charset;

    .line 59
    const-string v0, "<string name=\"([^\"]+)\".*>([^<]+)</string>"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/StringsResourceTranslator;->ENTRY_PATTERN:Ljava/util/regex/Pattern;

    .line 60
    const-string v0, "values-(.+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/StringsResourceTranslator;->STRINGS_FILE_NAME_PATTERN:Ljava/util/regex/Pattern;

    .line 61
    const-string v0, "translatedText\":\\s*\"([^\"]+)\""

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/StringsResourceTranslator;->TRANSLATE_RESPONSE_PATTERN:Ljava/util/regex/Pattern;

    .line 62
    const-string v0, "values-[a-z]{2}(-[a-zA-Z]{2,3})?"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/StringsResourceTranslator;->VALUES_DIR_PATTERN:Ljava/util/regex/Pattern;

    .line 81
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lcom/google/zxing/StringsResourceTranslator;->LANGUAGE_CODE_MASSAGINGS:Ljava/util/Map;

    .line 83
    sget-object v0, Lcom/google/zxing/StringsResourceTranslator;->LANGUAGE_CODE_MASSAGINGS:Ljava/util/Map;

    const-string v1, "zh-rCN"

    const-string v2, "zh-cn"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    sget-object v0, Lcom/google/zxing/StringsResourceTranslator;->LANGUAGE_CODE_MASSAGINGS:Ljava/util/Map;

    const-string v1, "zh-rTW"

    const-string v2, "zh-tw"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/util/regex/Pattern;
    .locals 1

    .prologue
    .line 54
    sget-object v0, Lcom/google/zxing/StringsResourceTranslator;->VALUES_DIR_PATTERN:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method private static fetch(Ljava/net/URL;)Ljava/lang/CharSequence;
    .locals 9
    .parameter "translateURL"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 210
    invoke-virtual {p0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    .line 211
    .local v2, connection:Ljava/net/URLConnection;
    invoke-virtual {v2}, Ljava/net/URLConnection;->connect()V

    .line 212
    new-instance v5, Ljava/lang/StringBuilder;

    const/16 v6, 0xc8

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 213
    .local v5, translateResult:Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .line 215
    .local v3, in:Ljava/io/Reader;
    :try_start_0
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    invoke-virtual {v2}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    sget-object v8, Lcom/google/zxing/StringsResourceTranslator;->UTF8:Ljava/nio/charset/Charset;

    invoke-direct {v6, v7, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v4, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 216
    .end local v3           #in:Ljava/io/Reader;
    .local v4, in:Ljava/io/Reader;
    const/16 v6, 0x400

    :try_start_1
    new-array v0, v6, [C

    .line 218
    .local v0, buffer:[C
    :goto_0
    invoke-virtual {v4, v0}, Ljava/io/Reader;->read([C)I

    move-result v1

    .local v1, charsRead:I
    if-lez v1, :cond_0

    .line 219
    const/4 v6, 0x0

    invoke-virtual {v5, v0, v6, v1}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 222
    .end local v0           #buffer:[C
    .end local v1           #charsRead:I
    :catchall_0
    move-exception v6

    move-object v3, v4

    .end local v4           #in:Ljava/io/Reader;
    .restart local v3       #in:Ljava/io/Reader;
    :goto_1
    invoke-static {v3}, Lcom/google/zxing/StringsResourceTranslator;->quietClose(Ljava/io/Closeable;)V

    throw v6

    .end local v3           #in:Ljava/io/Reader;
    .restart local v0       #buffer:[C
    .restart local v1       #charsRead:I
    .restart local v4       #in:Ljava/io/Reader;
    :cond_0
    invoke-static {v4}, Lcom/google/zxing/StringsResourceTranslator;->quietClose(Ljava/io/Closeable;)V

    .line 224
    return-object v5

    .line 222
    .end local v0           #buffer:[C
    .end local v1           #charsRead:I
    .end local v4           #in:Ljava/io/Reader;
    .restart local v3       #in:Ljava/io/Reader;
    :catchall_1
    move-exception v6

    goto :goto_1
.end method

.method public static main([Ljava/lang/String;)V
    .locals 13
    .parameter "args"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 91
    new-instance v4, Ljava/io/File;

    const/4 v10, 0x0

    aget-object v10, p0, v10

    invoke-direct {v4, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 92
    .local v4, resDir:Ljava/io/File;
    new-instance v9, Ljava/io/File;

    const-string v10, "values"

    invoke-direct {v9, v4, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 93
    .local v9, valueDir:Ljava/io/File;
    new-instance v5, Ljava/io/File;

    const-string v10, "strings.xml"

    invoke-direct {v5, v9, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 94
    .local v5, stringsFile:Ljava/io/File;
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    const/4 v11, 0x1

    array-length v12, p0

    invoke-interface {v10, v11, v12}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    .line 96
    .local v1, forceRetranslation:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    new-instance v10, Lcom/google/zxing/StringsResourceTranslator$1;

    invoke-direct {v10}, Lcom/google/zxing/StringsResourceTranslator$1;-><init>()V

    invoke-virtual {v4, v10}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v8

    .line 102
    .local v8, translatedValuesDirs:[Ljava/io/File;
    move-object v0, v8

    .local v0, arr$:[Ljava/io/File;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v7, v0, v2

    .line 103
    .local v7, translatedValuesDir:Ljava/io/File;
    new-instance v6, Ljava/io/File;

    const-string v10, "strings.xml"

    invoke-direct {v6, v7, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 104
    .local v6, translatedStringsFile:Ljava/io/File;
    invoke-static {v5, v6, v1}, Lcom/google/zxing/StringsResourceTranslator;->translate(Ljava/io/File;Ljava/io/File;Ljava/util/Collection;)V

    .line 102
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 107
    .end local v6           #translatedStringsFile:Ljava/io/File;
    .end local v7           #translatedValuesDir:Ljava/io/File;
    :cond_0
    return-void
.end method

.method private static quietClose(Ljava/io/Closeable;)V
    .locals 1
    .parameter "closeable"

    .prologue
    .line 251
    if-eqz p0, :cond_0

    .line 253
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 258
    :cond_0
    :goto_0
    return-void

    .line 254
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static readLines(Ljava/io/File;)Ljava/util/SortedMap;
    .locals 10
    .parameter "file"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/SortedMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 228
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 229
    .local v0, entries:Ljava/util/SortedMap;,"Ljava/util/SortedMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_0

    .line 246
    :goto_0
    return-object v0

    .line 232
    :cond_0
    const/4 v4, 0x0

    .line 234
    .local v4, reader:Ljava/io/BufferedReader;
    :try_start_0
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/InputStreamReader;

    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    sget-object v9, Lcom/google/zxing/StringsResourceTranslator;->UTF8:Ljava/nio/charset/Charset;

    invoke-direct {v7, v8, v9}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v5, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 236
    .end local v4           #reader:Ljava/io/BufferedReader;
    .local v5, reader:Ljava/io/BufferedReader;
    :cond_1
    :goto_1
    :try_start_1
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .local v2, line:Ljava/lang/String;
    if-eqz v2, :cond_2

    .line 237
    sget-object v7, Lcom/google/zxing/StringsResourceTranslator;->ENTRY_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v7, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 238
    .local v3, m:Ljava/util/regex/Matcher;
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 239
    const/4 v7, 0x1

    invoke-virtual {v3, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    .line 240
    .local v1, key:Ljava/lang/String;
    const/4 v7, 0x2

    invoke-virtual {v3, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    .line 241
    .local v6, value:Ljava/lang/String;
    invoke-interface {v0, v1, v6}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 246
    .end local v1           #key:Ljava/lang/String;
    .end local v2           #line:Ljava/lang/String;
    .end local v3           #m:Ljava/util/regex/Matcher;
    .end local v6           #value:Ljava/lang/String;
    :catchall_0
    move-exception v7

    move-object v4, v5

    .end local v5           #reader:Ljava/io/BufferedReader;
    .restart local v4       #reader:Ljava/io/BufferedReader;
    :goto_2
    invoke-static {v4}, Lcom/google/zxing/StringsResourceTranslator;->quietClose(Ljava/io/Closeable;)V

    throw v7

    .end local v4           #reader:Ljava/io/BufferedReader;
    .restart local v2       #line:Ljava/lang/String;
    .restart local v5       #reader:Ljava/io/BufferedReader;
    :cond_2
    invoke-static {v5}, Lcom/google/zxing/StringsResourceTranslator;->quietClose(Ljava/io/Closeable;)V

    goto :goto_0

    .end local v2           #line:Ljava/lang/String;
    .end local v5           #reader:Ljava/io/BufferedReader;
    .restart local v4       #reader:Ljava/io/BufferedReader;
    :catchall_1
    move-exception v7

    goto :goto_2
.end method

.method private static translate(Ljava/io/File;Ljava/io/File;Ljava/util/Collection;)V
    .locals 19
    .parameter "englishFile"
    .parameter "translatedFile"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/io/File;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 113
    .local p2, forceRetranslation:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-static/range {p0 .. p0}, Lcom/google/zxing/StringsResourceTranslator;->readLines(Ljava/io/File;)Ljava/util/SortedMap;

    move-result-object v2

    .line 114
    .local v2, english:Ljava/util/SortedMap;,"Ljava/util/SortedMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static/range {p1 .. p1}, Lcom/google/zxing/StringsResourceTranslator;->readLines(Ljava/io/File;)Ljava/util/SortedMap;

    move-result-object v13

    .line 115
    .local v13, translated:Ljava/util/SortedMap;,"Ljava/util/SortedMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    .line 117
    .local v10, parentName:Ljava/lang/String;
    sget-object v16, Lcom/google/zxing/StringsResourceTranslator;->STRINGS_FILE_NAME_PATTERN:Ljava/util/regex/Pattern;

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v12

    .line 118
    .local v12, stringsFileNameMatcher:Ljava/util/regex/Matcher;
    invoke-virtual {v12}, Ljava/util/regex/Matcher;->find()Z

    .line 119
    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    .line 120
    .local v6, language:Ljava/lang/String;
    sget-object v16, Lcom/google/zxing/StringsResourceTranslator;->LANGUAGE_CODE_MASSAGINGS:Ljava/util/Map;

    move-object/from16 v0, v16

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 121
    .local v7, massagedLanguage:Ljava/lang/String;
    if-eqz v7, :cond_0

    .line 122
    move-object v6, v7

    .line 125
    :cond_0
    sget-object v16, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Translating "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 127
    const-string v16, ".xml"

    move-object/from16 v0, v16

    invoke-static {v10, v0}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v11

    .line 128
    .local v11, resultTempFile:Ljava/io/File;
    invoke-virtual {v11}, Ljava/io/File;->deleteOnExit()V

    .line 130
    const/4 v1, 0x0

    .line 131
    .local v1, anyChange:Z
    const/4 v8, 0x0

    .line 133
    .local v8, out:Ljava/io/Writer;
    :try_start_0
    new-instance v9, Ljava/io/BufferedWriter;

    new-instance v16, Ljava/io/OutputStreamWriter;

    new-instance v17, Ljava/io/FileOutputStream;

    move-object/from16 v0, v17

    invoke-direct {v0, v11}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    sget-object v18, Lcom/google/zxing/StringsResourceTranslator;->UTF8:Ljava/nio/charset/Charset;

    invoke-direct/range {v16 .. v18}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    move-object/from16 v0, v16

    invoke-direct {v9, v0}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 134
    .end local v8           #out:Ljava/io/Writer;
    .local v9, out:Ljava/io/Writer;
    :try_start_1
    const-string v16, "<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n"

    move-object/from16 v0, v16

    invoke-virtual {v9, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 135
    const-string v16, "<!--\n Copyright (C) 2013 ZXing authors\n\n Licensed under the Apache License, Version 2.0 (the \"License\");\n you may not use this file except in compliance with the License.\n You may obtain a copy of the License at\n\n      http://www.apache.org/licenses/LICENSE-2.0\n\n Unless required by applicable law or agreed to in writing, software\n distributed under the License is distributed on an \"AS IS\" BASIS,\n WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.\n See the License for the specific language governing permissions and\n limitations under the License.\n -->\n"

    move-object/from16 v0, v16

    invoke-virtual {v9, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 136
    const-string v16, "<resources>\n"

    move-object/from16 v0, v16

    invoke-virtual {v9, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 138
    invoke-interface {v2}, Ljava/util/SortedMap;->entrySet()Ljava/util/Set;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 139
    .local v3, englishEntry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 140
    .local v5, key:Ljava/lang/String;
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 141
    .local v15, value:Ljava/lang/String;
    const-string v16, "  <string name=\""

    move-object/from16 v0, v16

    invoke-virtual {v9, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 142
    invoke-virtual {v9, v5}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 143
    const/16 v16, 0x22

    move/from16 v0, v16

    invoke-virtual {v9, v0}, Ljava/io/Writer;->write(I)V

    .line 144
    const-string v16, "%s"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_1

    const-string v16, "%f"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v16

    if-eqz v16, :cond_2

    .line 146
    :cond_1
    const-string v16, " formatted=\"false\""

    move-object/from16 v0, v16

    invoke-virtual {v9, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 148
    :cond_2
    const/16 v16, 0x3e

    move/from16 v0, v16

    invoke-virtual {v9, v0}, Ljava/io/Writer;->write(I)V

    .line 150
    invoke-interface {v13, v5}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 151
    .local v14, translatedString:Ljava/lang/String;
    if-eqz v14, :cond_3

    move-object/from16 v0, p2

    invoke-interface {v0, v5}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_4

    .line 152
    :cond_3
    const/4 v1, 0x1

    .line 153
    invoke-static {v15, v6}, Lcom/google/zxing/StringsResourceTranslator;->translateString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 155
    :cond_4
    invoke-virtual {v9, v14}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 157
    const-string v16, "</string>\n"

    move-object/from16 v0, v16

    invoke-virtual {v9, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 164
    .end local v3           #englishEntry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v5           #key:Ljava/lang/String;
    .end local v14           #translatedString:Ljava/lang/String;
    .end local v15           #value:Ljava/lang/String;
    :catchall_0
    move-exception v16

    move-object v8, v9

    .end local v9           #out:Ljava/io/Writer;
    .restart local v8       #out:Ljava/io/Writer;
    :goto_1
    invoke-static {v8}, Lcom/google/zxing/StringsResourceTranslator;->quietClose(Ljava/io/Closeable;)V

    throw v16

    .line 160
    .end local v8           #out:Ljava/io/Writer;
    .restart local v4       #i$:Ljava/util/Iterator;
    .restart local v9       #out:Ljava/io/Writer;
    :cond_5
    :try_start_2
    const-string v16, "</resources>\n"

    move-object/from16 v0, v16

    invoke-virtual {v9, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 161
    invoke-virtual {v9}, Ljava/io/Writer;->flush()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 164
    invoke-static {v9}, Lcom/google/zxing/StringsResourceTranslator;->quietClose(Ljava/io/Closeable;)V

    .line 167
    if-eqz v1, :cond_6

    .line 168
    sget-object v16, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v17, "  Writing translations"

    invoke-virtual/range {v16 .. v17}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 169
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->delete()Z

    .line 170
    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 174
    :goto_2
    return-void

    .line 172
    :cond_6
    invoke-virtual {v11}, Ljava/io/File;->delete()Z

    goto :goto_2

    .line 164
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v9           #out:Ljava/io/Writer;
    .restart local v8       #out:Ljava/io/Writer;
    :catchall_1
    move-exception v16

    goto :goto_1
.end method

.method static translateString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "english"
    .parameter "language"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 177
    const-string v5, "en"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 206
    .end local p0
    :goto_0
    return-object p0

    .line 180
    .restart local p0
    :cond_0
    sget-object v5, Lcom/google/zxing/StringsResourceTranslator;->LANGUAGE_CODE_MASSAGINGS:Ljava/util/Map;

    invoke-interface {v5, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 181
    .local v1, massagedLanguage:Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 182
    move-object p1, v1

    .line 184
    :cond_1
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  Need translation for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 186
    new-instance v3, Ljava/net/URL;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "https://www.googleapis.com/language/translate/v2?key=INSERT-YOUR-KEY&q="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "UTF-8"

    invoke-static {p0, v6}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "&source=en&target="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 190
    .local v3, translateURL:Ljava/net/URL;
    invoke-static {v3}, Lcom/google/zxing/StringsResourceTranslator;->fetch(Ljava/net/URL;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 191
    .local v2, translateResult:Ljava/lang/CharSequence;
    sget-object v5, Lcom/google/zxing/StringsResourceTranslator;->TRANSLATE_RESPONSE_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v5, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 192
    .local v0, m:Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-nez v5, :cond_2

    .line 193
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v6, "No translate result"

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 194
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v5, v2}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    goto :goto_0

    .line 197
    :cond_2
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    .line 198
    .local v4, translation:Ljava/lang/String;
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  Got translation "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 201
    const-string v5, "\\\\u0026quot;"

    const-string v6, "\""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 202
    const-string v5, "\\\\u0026#39;"

    const-string v6, "\'"

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 203
    const-string v5, "\\\\u200b"

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 204
    const-string v5, "&amp;quot;"

    const-string v6, "\""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 205
    const-string v5, "&amp;#39;"

    const-string v6, "\'"

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object p0, v4

    .line 206
    goto/16 :goto_0
.end method

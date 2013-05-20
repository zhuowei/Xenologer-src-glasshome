.class public final Lcom/google/zxing/client/j2se/GUIRunner;
.super Ljavax/swing/JFrame;
.source "GUIRunner.java"


# instance fields
.field private final imageLabel:Ljavax/swing/JLabel;

.field private final textArea:Ljavax/swing/JTextArea;


# direct methods
.method private constructor <init>()V
    .locals 5

    .prologue
    const/16 v4, 0x190

    .line 54
    invoke-direct {p0}, Ljavax/swing/JFrame;-><init>()V

    .line 55
    new-instance v1, Ljavax/swing/JLabel;

    invoke-direct {v1}, Ljavax/swing/JLabel;-><init>()V

    iput-object v1, p0, Lcom/google/zxing/client/j2se/GUIRunner;->imageLabel:Ljavax/swing/JLabel;

    .line 56
    new-instance v1, Ljavax/swing/JTextArea;

    invoke-direct {v1}, Ljavax/swing/JTextArea;-><init>()V

    iput-object v1, p0, Lcom/google/zxing/client/j2se/GUIRunner;->textArea:Ljavax/swing/JTextArea;

    .line 57
    iget-object v1, p0, Lcom/google/zxing/client/j2se/GUIRunner;->textArea:Ljavax/swing/JTextArea;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljavax/swing/JTextArea;->setEditable(Z)V

    .line 58
    iget-object v1, p0, Lcom/google/zxing/client/j2se/GUIRunner;->textArea:Ljavax/swing/JTextArea;

    new-instance v2, Ljava/awt/Dimension;

    const/16 v3, 0xc8

    invoke-direct {v2, v4, v3}, Ljava/awt/Dimension;-><init>(II)V

    invoke-virtual {v1, v2}, Ljavax/swing/JTextArea;->setMaximumSize(Ljava/awt/Dimension;)V

    .line 59
    new-instance v0, Ljavax/swing/JPanel;

    invoke-direct {v0}, Ljavax/swing/JPanel;-><init>()V

    .line 60
    .local v0, panel:Ljava/awt/Container;
    new-instance v1, Ljava/awt/FlowLayout;

    invoke-direct {v1}, Ljava/awt/FlowLayout;-><init>()V

    invoke-virtual {v0, v1}, Ljava/awt/Container;->setLayout(Ljava/awt/LayoutManager;)V

    .line 61
    iget-object v1, p0, Lcom/google/zxing/client/j2se/GUIRunner;->imageLabel:Ljavax/swing/JLabel;

    invoke-virtual {v0, v1}, Ljava/awt/Container;->add(Ljava/awt/Component;)Ljava/awt/Component;

    .line 62
    iget-object v1, p0, Lcom/google/zxing/client/j2se/GUIRunner;->textArea:Ljavax/swing/JTextArea;

    invoke-virtual {v0, v1}, Ljava/awt/Container;->add(Ljava/awt/Component;)Ljava/awt/Component;

    .line 63
    const-string v1, "ZXing"

    invoke-virtual {p0, v1}, Lcom/google/zxing/client/j2se/GUIRunner;->setTitle(Ljava/lang/String;)V

    .line 64
    invoke-virtual {p0, v4, v4}, Lcom/google/zxing/client/j2se/GUIRunner;->setSize(II)V

    .line 65
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/google/zxing/client/j2se/GUIRunner;->setDefaultCloseOperation(I)V

    .line 66
    invoke-virtual {p0, v0}, Lcom/google/zxing/client/j2se/GUIRunner;->setContentPane(Ljava/awt/Container;)V

    .line 67
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/google/zxing/client/j2se/GUIRunner;->setLocationRelativeTo(Ljava/awt/Component;)V

    .line 68
    return-void
.end method

.method private chooseImage()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .prologue
    .line 77
    new-instance v2, Ljavax/swing/JFileChooser;

    invoke-direct {v2}, Ljavax/swing/JFileChooser;-><init>()V

    .line 78
    .local v2, fileChooser:Ljavax/swing/JFileChooser;
    invoke-virtual {v2, p0}, Ljavax/swing/JFileChooser;->showOpenDialog(Ljava/awt/Component;)I

    .line 79
    invoke-virtual {v2}, Ljavax/swing/JFileChooser;->getSelectedFile()Ljava/io/File;

    move-result-object v1

    .line 80
    .local v1, file:Ljava/io/File;
    new-instance v3, Ljavax/swing/ImageIcon;

    invoke-virtual {v1}, Ljava/io/File;->toURI()Ljava/net/URI;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object v4

    invoke-direct {v3, v4}, Ljavax/swing/ImageIcon;-><init>(Ljava/net/URL;)V

    .line 81
    .local v3, imageIcon:Ljavax/swing/Icon;
    invoke-interface {v3}, Ljavax/swing/Icon;->getIconWidth()I

    move-result v4

    invoke-interface {v3}, Ljavax/swing/Icon;->getIconHeight()I

    move-result v5

    add-int/lit8 v5, v5, 0x64

    invoke-virtual {p0, v4, v5}, Lcom/google/zxing/client/j2se/GUIRunner;->setSize(II)V

    .line 82
    iget-object v4, p0, Lcom/google/zxing/client/j2se/GUIRunner;->imageLabel:Ljavax/swing/JLabel;

    invoke-virtual {v4, v3}, Ljavax/swing/JLabel;->setIcon(Ljavax/swing/Icon;)V

    .line 83
    invoke-static {v1}, Lcom/google/zxing/client/j2se/GUIRunner;->getDecodeText(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    .line 84
    .local v0, decodeText:Ljava/lang/String;
    iget-object v4, p0, Lcom/google/zxing/client/j2se/GUIRunner;->textArea:Ljavax/swing/JTextArea;

    invoke-virtual {v4, v0}, Ljavax/swing/JTextArea;->setText(Ljava/lang/String;)V

    .line 85
    return-void
.end method

.method private static getDecodeText(Ljava/io/File;)Ljava/lang/String;
    .locals 7
    .parameter "file"

    .prologue
    .line 90
    :try_start_0
    invoke-static {p0}, Ljavax/imageio/ImageIO;->read(Ljava/io/File;)Ljava/awt/image/BufferedImage;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 94
    .local v1, image:Ljava/awt/image/BufferedImage;
    if-nez v1, :cond_0

    .line 95
    const-string v6, "Could not decode image"

    .line 105
    .end local v1           #image:Ljava/awt/image/BufferedImage;
    :goto_0
    return-object v6

    .line 91
    :catch_0
    move-exception v2

    .line 92
    .local v2, ioe:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 97
    .end local v2           #ioe:Ljava/io/IOException;
    .restart local v1       #image:Ljava/awt/image/BufferedImage;
    :cond_0
    new-instance v5, Lcom/google/zxing/client/j2se/BufferedImageLuminanceSource;

    invoke-direct {v5, v1}, Lcom/google/zxing/client/j2se/BufferedImageLuminanceSource;-><init>(Ljava/awt/image/BufferedImage;)V

    .line 98
    .local v5, source:Lcom/google/zxing/LuminanceSource;
    new-instance v0, Lcom/google/zxing/BinaryBitmap;

    new-instance v6, Lcom/google/zxing/common/HybridBinarizer;

    invoke-direct {v6, v5}, Lcom/google/zxing/common/HybridBinarizer;-><init>(Lcom/google/zxing/LuminanceSource;)V

    invoke-direct {v0, v6}, Lcom/google/zxing/BinaryBitmap;-><init>(Lcom/google/zxing/Binarizer;)V

    .line 101
    .local v0, bitmap:Lcom/google/zxing/BinaryBitmap;
    :try_start_1
    new-instance v6, Lcom/google/zxing/MultiFormatReader;

    invoke-direct {v6}, Lcom/google/zxing/MultiFormatReader;-><init>()V

    invoke-virtual {v6, v0}, Lcom/google/zxing/MultiFormatReader;->decode(Lcom/google/zxing/BinaryBitmap;)Lcom/google/zxing/Result;
    :try_end_1
    .catch Lcom/google/zxing/ReaderException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v4

    .line 105
    .local v4, result:Lcom/google/zxing/Result;
    invoke-virtual {v4}, Lcom/google/zxing/Result;->getText()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 102
    .end local v4           #result:Lcom/google/zxing/Result;
    :catch_1
    move-exception v3

    .line 103
    .local v3, re:Lcom/google/zxing/ReaderException;
    invoke-virtual {v3}, Lcom/google/zxing/ReaderException;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 2
    .parameter "args"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .prologue
    .line 71
    new-instance v0, Lcom/google/zxing/client/j2se/GUIRunner;

    invoke-direct {v0}, Lcom/google/zxing/client/j2se/GUIRunner;-><init>()V

    .line 72
    .local v0, runner:Lcom/google/zxing/client/j2se/GUIRunner;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/zxing/client/j2se/GUIRunner;->setVisible(Z)V

    .line 73
    invoke-direct {v0}, Lcom/google/zxing/client/j2se/GUIRunner;->chooseImage()V

    .line 74
    return-void
.end method

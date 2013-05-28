package com.google.zxing.client.j2se;

import com.google.zxing.BinaryBitmap;
import com.google.zxing.MultiFormatReader;
import com.google.zxing.ReaderException;
import com.google.zxing.Result;
import com.google.zxing.common.HybridBinarizer;
import java.awt.Container;
import java.awt.Dimension;
import java.awt.FlowLayout;
import java.awt.image.BufferedImage;
import java.io.File;
import java.io.IOException;
import java.net.MalformedURLException;
import java.net.URI;
import javax.imageio.ImageIO;
import javax.swing.Icon;
import javax.swing.ImageIcon;
import javax.swing.JFileChooser;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JPanel;
import javax.swing.JTextArea;

public final class GUIRunner extends JFrame
{
  private final JLabel imageLabel = new JLabel();
  private final JTextArea textArea = new JTextArea();

  private GUIRunner()
  {
    this.textArea.setEditable(false);
    this.textArea.setMaximumSize(new Dimension(400, 200));
    JPanel localJPanel = new JPanel();
    localJPanel.setLayout(new FlowLayout());
    localJPanel.add(this.imageLabel);
    localJPanel.add(this.textArea);
    setTitle("ZXing");
    setSize(400, 400);
    setDefaultCloseOperation(3);
    setContentPane(localJPanel);
    setLocationRelativeTo(null);
  }

  private void chooseImage()
    throws MalformedURLException
  {
    JFileChooser localJFileChooser = new JFileChooser();
    localJFileChooser.showOpenDialog(this);
    File localFile = localJFileChooser.getSelectedFile();
    ImageIcon localImageIcon = new ImageIcon(localFile.toURI().toURL());
    setSize(localImageIcon.getIconWidth(), 100 + localImageIcon.getIconHeight());
    this.imageLabel.setIcon(localImageIcon);
    String str = getDecodeText(localFile);
    this.textArea.setText(str);
  }

  private static String getDecodeText(File paramFile)
  {
    BufferedImage localBufferedImage;
    try
    {
      localBufferedImage = ImageIO.read(paramFile);
      if (localBufferedImage == null)
        return "Could not decode image";
    }
    catch (IOException localIOException)
    {
      return localIOException.toString();
    }
    BinaryBitmap localBinaryBitmap = new BinaryBitmap(new HybridBinarizer(new BufferedImageLuminanceSource(localBufferedImage)));
    try
    {
      Result localResult = new MultiFormatReader().decode(localBinaryBitmap);
      return String.valueOf(localResult.getText());
    }
    catch (ReaderException localReaderException)
    {
      return localReaderException.toString();
    }
  }

  public static void main(String[] paramArrayOfString)
    throws MalformedURLException
  {
    GUIRunner localGUIRunner = new GUIRunner();
    localGUIRunner.setVisible(true);
    localGUIRunner.chooseImage();
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.zxing.client.j2se.GUIRunner
 * JD-Core Version:    0.6.2
 */
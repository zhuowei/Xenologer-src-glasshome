package com.google.glass.camera;

import com.google.glass.util.Assert;
import com.google.glass.util.Labs;
import com.google.glass.util.Labs.Feature;

public class SharedCameraConstants
{
  public static final String ACTION_SHUTTER = "com.google.glass.camera.action.SHUTTER";
  public static final long FADE_VIEWFINDER_DURATION_MILLIS = 200L;
  public static final int GCAM_POSTVIEW_BITS_PER_PIXEL = 32;
  public static final String PICTURE_FILENAME_EXTENSION = ".jpg";
  public static final String PICTURE_MIME_TYPE = "image/jpeg";
  public static final Size PICTURE_SIZE;
  public static final int POSTVIEW_FORMAT = 0;
  public static final Size POSTVIEW_SIZE;
  public static final int PREVIEW_FORMAT = 17;
  public static final Size PREVIEW_SIZE;
  public static final int RECORD_AUDIO_BIT_RATE = 96000;
  public static final int RECORD_AUDIO_ENCODER = 3;
  public static final int RECORD_AUDIO_SAMPLING_RATE = 44100;
  public static final int RECORD_VIDEO_BIT_RATE = 5000000;
  public static final int RECORD_VIDEO_ENCODER = 2;
  public static final int RECORD_VIDEO_FRAME_RATE = 30;
  public static final int RECORD_VIDEO_OUTPUT_FORMAT = 2;
  public static final Size RECORD_VIDEO_SIZE;
  public static final String VIDEO_FILENAME_EXTENSION = ".mp4";
  public static final String VIDEO_MIME_TYPE = "video/mp4";
  public static final Size VSTAB_CALIBRATION_RECORD_VIDEO_SIZE;
  public static final Size VSTAB_RECORD_VIDEO_SIZE;

  static
  {
    Size localSize1;
    int i;
    label35: Size localSize2;
    if (Assert.isTest())
    {
      localSize1 = new Size(640, 480);
      PREVIEW_SIZE = localSize1;
      if (!Labs.isEnabled(Labs.Feature.GCAM))
        break label156;
      i = 0;
      POSTVIEW_FORMAT = i;
      if (!Assert.isTest())
        break label162;
      localSize2 = new Size(640, 480);
      label59: PICTURE_SIZE = localSize2;
      if (!Labs.isEnabled(Labs.Feature.GCAM))
        break label179;
    }
    label156: label162: label179: for (Size localSize3 = new Size(624, 352); ; localSize3 = new Size(640, 360))
    {
      POSTVIEW_SIZE = localSize3;
      RECORD_VIDEO_SIZE = new Size(1280, 720);
      VSTAB_RECORD_VIDEO_SIZE = new Size(1024, 576);
      VSTAB_CALIBRATION_RECORD_VIDEO_SIZE = new Size(640, 360);
      return;
      localSize1 = new Size(640, 360);
      break;
      i = 17;
      break label35;
      localSize2 = new Size(2560, 1888);
      break label59;
    }
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.glass.camera.SharedCameraConstants
 * JD-Core Version:    0.6.2
 */
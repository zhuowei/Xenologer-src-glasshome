package com.google.android.speech.message;

import com.google.common.annotations.VisibleForTesting;
import com.google.majel.proto.ActionV2Protos.ActionV2;
import com.google.majel.proto.MajelProtos.MajelResponse;
import com.google.majel.proto.PeanutProtos.Peanut;
import com.google.majel.proto.PeanutProtos.Text;
import com.google.protobuf.micro.ByteStringMicro;
import com.google.speech.recognizer.api.RecognizerProtos.Hypothesis;
import com.google.speech.recognizer.api.RecognizerProtos.PartialPart;
import com.google.speech.recognizer.api.RecognizerProtos.PartialResult;
import com.google.speech.recognizer.api.RecognizerProtos.RecognitionEvent;
import com.google.speech.recognizer.api.RecognizerProtos.RecognitionResult;
import com.google.speech.s3.S3.S3Response;
import com.google.speech.speech.s3.Majel.MajelServiceEvent;
import com.google.speech.speech.s3.Recognizer.RecognizerEvent;
import com.google.speech.speech.s3.Synthesis.TtsServiceEvent;
import java.util.Iterator;
import java.util.List;

@VisibleForTesting
public class S3ResponseParser
{
  public static RecognizerProtos.RecognitionEvent getRecognizerEvent(S3.S3Response paramS3Response)
  {
    return paramS3Response.getRecognizerEventExtension().getRecognitionEvent();
  }

  public static boolean hasRecognitionEvent(S3.S3Response paramS3Response)
  {
    return (paramS3Response.hasRecognizerEventExtension()) && (paramS3Response.getRecognizerEventExtension().hasRecognitionEvent());
  }

  public static String toShortString(MajelProtos.MajelResponse paramMajelResponse)
  {
    StringBuffer localStringBuffer = new StringBuffer();
    localStringBuffer.append("Majel[");
    localStringBuffer.append("peanuts=");
    localStringBuffer.append(paramMajelResponse.getPeanutCount());
    Iterator localIterator = paramMajelResponse.getPeanutList().iterator();
    if (localIterator.hasNext())
    {
      PeanutProtos.Peanut localPeanut = (PeanutProtos.Peanut)localIterator.next();
      localStringBuffer.append("[");
      int i = 1;
      label94: ActionV2Protos.ActionV2 localActionV2;
      if (localPeanut.getActionV2Count() > 0)
      {
        if (i == 0)
        {
          localStringBuffer.append(",");
          localActionV2 = localPeanut.getActionV2(0);
          if (!localActionV2.hasPhoneActionExtension())
            break label321;
          localStringBuffer.append("phoneAction");
        }
      }
      else
      {
        label117: if (localPeanut.hasTextResponse())
        {
          if (i != 0)
            break label349;
          localStringBuffer.append(",");
          localStringBuffer.append("text=");
          localStringBuffer.append(localPeanut.getTextResponse().getDisplay());
        }
        label137: if (localPeanut.getUrlResponseCount() > 0)
        {
          if (i != 0)
            break label355;
          localStringBuffer.append(",");
          label177: localStringBuffer.append("url=");
          localStringBuffer.append(localPeanut.getUrlResponseCount());
        }
        if (localPeanut.getImageResponseCount() > 0)
        {
          if (i != 0)
            break label361;
          localStringBuffer.append(",");
          label214: localStringBuffer.append("image=");
          localStringBuffer.append(localPeanut.getImageResponseCount());
        }
        if (localPeanut.getPlaceResponseCount() > 0)
        {
          if (i != 0)
            break label367;
          localStringBuffer.append(",");
          label251: localStringBuffer.append("place=");
          localStringBuffer.append(localPeanut.getPlaceResponseCount());
        }
        if (localPeanut.getVideoResponseCount() > 0)
        {
          if (i != 0)
            break label373;
          localStringBuffer.append(",");
        }
      }
      label321: label349: label355: label361: label367: label373: 
      while (true)
      {
        localStringBuffer.append("video=");
        localStringBuffer.append(localPeanut.getVideoResponseCount());
        localStringBuffer.append("]");
        break;
        i = 0;
        break label94;
        if (localActionV2.hasSMSActionExtension())
        {
          localStringBuffer.append("smsAction");
          break label117;
        }
        localStringBuffer.append("someAction");
        break label117;
        i = 0;
        break label137;
        i = 0;
        break label177;
        i = 0;
        break label214;
        i = 0;
        break label251;
      }
    }
    localStringBuffer.append("]");
    return localStringBuffer.toString();
  }

  public static String toShortString(S3.S3Response paramS3Response)
  {
    StringBuffer localStringBuffer = new StringBuffer();
    localStringBuffer.append("S3Response[");
    localStringBuffer.append("status=" + paramS3Response.getStatus());
    if (paramS3Response.getStatus() == 2)
    {
      localStringBuffer.append(",errorCode=" + paramS3Response.getErrorCode());
      localStringBuffer.append(",errorDescription=" + paramS3Response.getErrorDescription());
    }
    localStringBuffer.append(",");
    if (paramS3Response.hasTtsServiceEventExtension())
    {
      Synthesis.TtsServiceEvent localTtsServiceEvent = paramS3Response.getTtsServiceEventExtension();
      localStringBuffer.append("TtsServiceEvent[");
      localStringBuffer.append("audio size:").append(localTtsServiceEvent.getAudio().size());
      localStringBuffer.append("]");
    }
    if (paramS3Response.hasRecognizerEventExtension())
    {
      Recognizer.RecognizerEvent localRecognizerEvent = paramS3Response.getRecognizerEventExtension();
      localStringBuffer.append("RecognitionEvent[");
      if (localRecognizerEvent.hasRecognitionEvent())
      {
        RecognizerProtos.RecognitionEvent localRecognitionEvent = localRecognizerEvent.getRecognitionEvent();
        long l1 = 0L;
        long l2 = 0L;
        localStringBuffer.append("RecognitionEvent[");
        localStringBuffer.append("status=");
        localStringBuffer.append(localRecognitionEvent.getStatus());
        localStringBuffer.append(",");
        localStringBuffer.append("event_type=");
        localStringBuffer.append(localRecognitionEvent.getEventType());
        localStringBuffer.append(",");
        if (localRecognitionEvent.hasPartialResult())
        {
          int i = localRecognitionEvent.getPartialResult().getPartCount();
          localStringBuffer.append("partialResult[#");
          localStringBuffer.append(i);
          localStringBuffer.append(",");
          for (int j = 0; j < i; j++)
            localStringBuffer.append(localRecognitionEvent.getPartialResult().getPart(j).getText());
          localStringBuffer.append("]");
          localStringBuffer.append(",");
          l1 = localRecognitionEvent.getPartialResult().getStartTimeUsec();
          l2 = localRecognitionEvent.getPartialResult().getEndTimeUsec();
        }
        if (localRecognitionEvent.hasResult())
        {
          localStringBuffer.append("result[#");
          localStringBuffer.append(localRecognitionEvent.getResult().getHypothesisCount());
          localStringBuffer.append(",");
          if (localRecognitionEvent.getResult().getHypothesisCount() > 0)
            localStringBuffer.append(localRecognitionEvent.getResult().getHypothesis(0).getText());
          localStringBuffer.append("]");
          localStringBuffer.append(",");
          l1 = localRecognitionEvent.getResult().getStartTimeUsec();
          l2 = localRecognitionEvent.getResult().getEndTimeUsec();
        }
        localStringBuffer.append("{").append(l1).append("}{").append(l2).append("}");
        localStringBuffer.append("]");
      }
      localStringBuffer.append("]");
    }
    Majel.MajelServiceEvent localMajelServiceEvent;
    if (paramS3Response.hasMajelServiceEventExtension())
    {
      localMajelServiceEvent = paramS3Response.getMajelServiceEventExtension();
      localStringBuffer.append("MajelEvent[");
      if (!localMajelServiceEvent.hasMajel())
        break label561;
      localStringBuffer.append(toShortString(localMajelServiceEvent.getMajel()));
    }
    while (true)
    {
      localStringBuffer.append("]");
      localStringBuffer.append("]\n");
      return localStringBuffer.toString();
      label561: if (localMajelServiceEvent.hasCompressedMajelResponse())
      {
        localStringBuffer.append("CompressedMajel[");
        localStringBuffer.append("bytes=");
        localStringBuffer.append(localMajelServiceEvent.getCompressedMajelResponse().size());
        localStringBuffer.append("]");
      }
    }
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.android.speech.message.S3ResponseParser
 * JD-Core Version:    0.6.2
 */
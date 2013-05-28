package com.google.glass.util;

import android.accounts.Account;
import android.accounts.AccountManager;
import android.accounts.AccountManagerCallback;
import android.accounts.AccountManagerFuture;
import android.accounts.AuthenticatorException;
import android.accounts.OperationCanceledException;
import android.content.Context;
import android.os.AsyncTask;
import android.os.Bundle;
import android.os.PowerManager;
import android.provider.Settings.Secure;
import android.text.TextUtils;
import android.util.Log;
import com.google.android.gcm.GCMRegistrar;
import com.google.googlex.glass.common.proto.AuthToken;
import com.google.googlex.glass.common.proto.AuthToken.Builder;
import com.google.googlex.glass.common.proto.AuthTokenType;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public class AuthUtils
{
  private static final String AUTH_TOKEN_HEADER = "SC";
  private static final String AUTH_TOKEN_TYPE = "android";
  public static final String GOOGLE_ACCOUNT_TYPE = "com.google";
  private static final String TAG = AuthUtils.class.getSimpleName();
  private final AccountManager accountManager;
  private final Context context;

  public AuthUtils(Context paramContext)
  {
    this.context = paramContext;
    this.accountManager = ((AccountManager)paramContext.getSystemService("account"));
  }

  private String getAuthToken()
  {
    Assert.assertNotUiThread();
    Account localAccount = getGoogleAccount();
    String str;
    if (localAccount == null)
    {
      Log.i(TAG, "There is no account. Cannot get auth token.");
      str = null;
    }
    while (true)
    {
      return str;
      try
      {
        str = this.accountManager.blockingGetAuthToken(localAccount, "android", true);
        if (!TextUtils.isEmpty(str))
          continue;
        Log.i(TAG, "Cannot get auth token.");
        return null;
      }
      catch (OperationCanceledException localOperationCanceledException)
      {
        Log.w(TAG, localOperationCanceledException);
        return null;
      }
      catch (AuthenticatorException localAuthenticatorException)
      {
        while (true)
          Log.w(TAG, localAuthenticatorException);
      }
      catch (IOException localIOException)
      {
        while (true)
          Log.w(TAG, localIOException);
      }
    }
  }

  public Map<String, String> createAuthHeaders()
  {
    HashMap localHashMap = new HashMap();
    String str = getAuthToken();
    if (TextUtils.isEmpty(str))
    {
      Log.w(TAG, "No auth token available, cannot create auth headers.");
      return null;
    }
    localHashMap.put("SC", str);
    return localHashMap;
  }

  public AuthToken createBatchAuthToken()
  {
    String str = getAuthToken();
    if (TextUtils.isEmpty(str))
      return null;
    return AuthToken.newBuilder().setType(AuthTokenType.ANDROID_SERVICE).setValue(str).build();
  }

  public void deleteAllAccounts(final Runnable paramRunnable)
  {
    AsyncTask.execute(new Runnable()
    {
      public void run()
      {
        ArrayList localArrayList = new ArrayList();
        Account[] arrayOfAccount = AuthUtils.this.accountManager.getAccounts();
        Log.d(AuthUtils.TAG, "Removing " + arrayOfAccount.length + " accounts.");
        int i = arrayOfAccount.length;
        for (int j = 0; j < i; j++)
        {
          Account localAccount = arrayOfAccount[j];
          Log.d(AuthUtils.TAG, "Removing account: " + localAccount.name);
          localArrayList.add(AuthUtils.this.accountManager.removeAccount(localAccount, null, null));
        }
        Iterator localIterator = localArrayList.iterator();
        while (localIterator.hasNext())
        {
          AccountManagerFuture localAccountManagerFuture = (AccountManagerFuture)localIterator.next();
          try
          {
            Log.d(AuthUtils.TAG, "Account removal result: " + localAccountManagerFuture.getResult());
          }
          catch (OperationCanceledException localOperationCanceledException)
          {
            Log.w(AuthUtils.TAG, "Account removal canceled.", localOperationCanceledException);
          }
          catch (AuthenticatorException localAuthenticatorException)
          {
            Log.w(AuthUtils.TAG, "Account removal failed.", localAuthenticatorException);
          }
          catch (IOException localIOException)
          {
            Log.w(AuthUtils.TAG, "Account removal failed.", localIOException);
          }
        }
        if (paramRunnable != null)
          paramRunnable.run();
      }
    });
  }

  public Account getGoogleAccount()
  {
    Account localAccount;
    if (this.accountManager == null)
    {
      Log.w(TAG, "Account manager was null.");
      localAccount = null;
      return localAccount;
    }
    Account[] arrayOfAccount = this.accountManager.getAccounts();
    if (arrayOfAccount == null)
      return null;
    int i = arrayOfAccount.length;
    for (int j = 0; ; j++)
    {
      if (j >= i)
        break label70;
      localAccount = arrayOfAccount[j];
      if ("com.google".equals(localAccount.type))
        break;
    }
    label70: return null;
  }

  public void invalidateAuthToken()
  {
    this.accountManager.invalidateAuthToken("com.google", getAuthToken());
  }

  public void restartSetupProcess(final boolean paramBoolean)
  {
    if (!SetupHelper.checkAndEnableSetup(this.context))
      return;
    deleteAllAccounts(new Runnable()
    {
      public void run()
      {
        GCMRegistrar.unregister(AuthUtils.this.context);
        Settings.Secure.putInt(AuthUtils.this.context.getContentResolver(), "device_provisioned", 0);
        if (paramBoolean)
        {
          ((PowerManager)AuthUtils.this.context.getSystemService("power")).reboot("restartSetupProcess");
          return;
        }
        SetupHelper.startSetup(AuthUtils.this.context);
      }
    });
  }

  public AccountManagerFuture<Bundle> updateCredentials(AccountManagerCallback<Bundle> paramAccountManagerCallback, String paramString)
  {
    Account localAccount = getGoogleAccount();
    if (localAccount == null)
    {
      Log.e(TAG, "updateCredentials: no Google account exists");
      return null;
    }
    Bundle localBundle = new Bundle();
    localBundle.putString("password", "code:" + paramString);
    return this.accountManager.updateCredentials(localAccount, "android", localBundle, null, paramAccountManagerCallback, null);
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.glass.util.AuthUtils
 * JD-Core Version:    0.6.2
 */
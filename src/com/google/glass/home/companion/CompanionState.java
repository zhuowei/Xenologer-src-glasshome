package com.google.glass.home.companion;

public class CompanionState
{
  private volatile CompanionService companionService;

  public boolean isConnected()
  {
    CompanionService localCompanionService = this.companionService;
    return (localCompanionService != null) && (localCompanionService.isConnected());
  }

  public boolean isTetheringErrorDetected()
  {
    CompanionService localCompanionService = this.companionService;
    return (localCompanionService != null) && (localCompanionService.isTetheringErrorDetected());
  }

  public void update(CompanionService paramCompanionService)
  {
    this.companionService = paramCompanionService;
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.glass.home.companion.CompanionState
 * JD-Core Version:    0.6.2
 */
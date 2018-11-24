.class public Lcom/dexcom/cgm/activities/VolumeKeyReceiver;
.super Landroid/content/BroadcastReceiver;
.source "VolumeKeyReceiver.java"


# instance fields
.field m_volumeChangeListener:Lcom/dexcom/cgm/activities/VolumeKeyReceiver$OnVolumeChangeListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/dexcom/cgm/activities/VolumeKeyReceiver;->m_volumeChangeListener:Lcom/dexcom/cgm/activities/VolumeKeyReceiver$OnVolumeChangeListener;

    if-eqz v0, :cond_0

    .line 27
    iget-object v0, p0, Lcom/dexcom/cgm/activities/VolumeKeyReceiver;->m_volumeChangeListener:Lcom/dexcom/cgm/activities/VolumeKeyReceiver$OnVolumeChangeListener;

    invoke-interface {v0}, Lcom/dexcom/cgm/activities/VolumeKeyReceiver$OnVolumeChangeListener;->onVolumeChange()V

    .line 29
    :cond_0
    return-void
.end method

.method public removeVolumeChangeListener()V
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dexcom/cgm/activities/VolumeKeyReceiver;->m_volumeChangeListener:Lcom/dexcom/cgm/activities/VolumeKeyReceiver$OnVolumeChangeListener;

    .line 37
    return-void
.end method

.method public setVolumeChangeListener(Lcom/dexcom/cgm/activities/VolumeKeyReceiver$OnVolumeChangeListener;)V
    .locals 0

    .prologue
    .line 32
    iput-object p1, p0, Lcom/dexcom/cgm/activities/VolumeKeyReceiver;->m_volumeChangeListener:Lcom/dexcom/cgm/activities/VolumeKeyReceiver$OnVolumeChangeListener;

    .line 33
    return-void
.end method

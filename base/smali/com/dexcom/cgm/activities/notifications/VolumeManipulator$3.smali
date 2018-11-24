.class final Lcom/dexcom/cgm/activities/notifications/VolumeManipulator$3;
.super Ljava/lang/Object;
.source "VolumeManipulator.java"

# interfaces
.implements Ljava/lang/Runnable;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 156
    invoke-static {}, Lcom/dexcom/cgm/activities/notifications/VolumeManipulator;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 158
    invoke-static {}, Lcom/dexcom/cgm/activities/notifications/VolumeManipulator;->access$200()Landroid/media/AudioManager;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {}, Lcom/dexcom/cgm/activities/notifications/VolumeManipulator;->access$100()I

    move-result v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 159
    invoke-static {v3}, Lcom/dexcom/cgm/activities/notifications/VolumeManipulator;->access$002(Z)Z

    .line 161
    :cond_0
    invoke-static {}, Lcom/dexcom/cgm/activities/notifications/VolumeManipulator;->access$300()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 163
    invoke-static {}, Lcom/dexcom/cgm/activities/notifications/VolumeManipulator;->access$200()Landroid/media/AudioManager;

    move-result-object v0

    invoke-static {}, Lcom/dexcom/cgm/activities/notifications/VolumeManipulator;->access$400()I

    move-result v1

    invoke-virtual {v0, v3, v1, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 164
    invoke-static {v3}, Lcom/dexcom/cgm/activities/notifications/VolumeManipulator;->access$302(Z)Z

    .line 167
    :cond_1
    invoke-static {}, Lcom/dexcom/cgm/activities/TheApplicationContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 168
    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 170
    sget-object v1, Lcom/dexcom/cgm/activities/notifications/VolumeManipulator;->afChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 171
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/dexcom/cgm/activities/notifications/VolumeManipulator;->access$502(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 172
    return-void
.end method

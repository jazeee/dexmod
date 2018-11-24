.class public Lcom/dexcom/cgm/activities/notifications/VolumeManipulator;
.super Ljava/lang/Object;
.source "VolumeManipulator.java"


# static fields
.field private static final MUTE_OVERRIDE_HEADPHONES_0:D = 0.0

.field private static final MUTE_OVERRIDE_HEADPHONES_1:D = 0.25

.field private static final MUTE_OVERRIDE_HEADPHONES_2:D = 0.5

.field private static final MUTE_OVERRIDE_PHONE_SPEAKER_0:D = 0.0

.field private static final MUTE_OVERRIDE_PHONE_SPEAKER_1:D = 0.5

.field private static final MUTE_OVERRIDE_PHONE_SPEAKER_2:D = 1.0

.field private static final STREAM_MUSIC:I = 0x3

.field private static final STREAM_VOICE_CALL:I = 0x0

.field private static final TAG:Ljava/lang/String;

.field static afChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener; = null

.field private static callVolumeChanged:Z = false

.field private static m_mediaHandler:Lcom/dexcom/cgm/activities/media/MediaHandler; = null

.field private static final m_mediaPlayerLock:Ljava/lang/Object;

.field private static musicVolumeChanged:Z = false

.field private static oldCallVolume:I = 0x0

.field private static oldMusicVolume:I = 0x0

.field private static final soundSuppressionNotificationId:I = 0x3e7

.field private static unmuteHandler:Landroid/os/Handler;

.field private static unmuteRunnable:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 29
    const-class v0, Lcom/dexcom/cgm/activities/notifications/VolumeManipulator;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/dexcom/cgm/activities/notifications/VolumeManipulator;->TAG:Ljava/lang/String;

    .line 39
    new-instance v0, Lcom/dexcom/cgm/activities/media/MediaHandler;

    sget-object v1, Lcom/dexcom/cgm/activities/notifications/VolumeManipulator;->TAG:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/dexcom/cgm/activities/media/MediaHandler;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/dexcom/cgm/activities/notifications/VolumeManipulator;->m_mediaHandler:Lcom/dexcom/cgm/activities/media/MediaHandler;

    .line 70
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/dexcom/cgm/activities/notifications/VolumeManipulator;->m_mediaPlayerLock:Ljava/lang/Object;

    .line 71
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lcom/dexcom/cgm/activities/notifications/VolumeManipulator;->unmuteHandler:Landroid/os/Handler;

    .line 73
    sput-boolean v2, Lcom/dexcom/cgm/activities/notifications/VolumeManipulator;->musicVolumeChanged:Z

    .line 74
    sput-boolean v2, Lcom/dexcom/cgm/activities/notifications/VolumeManipulator;->callVolumeChanged:Z

    .line 78
    new-instance v0, Lcom/dexcom/cgm/activities/notifications/VolumeManipulator$2;

    invoke-direct {v0}, Lcom/dexcom/cgm/activities/notifications/VolumeManipulator$2;-><init>()V

    sput-object v0, Lcom/dexcom/cgm/activities/notifications/VolumeManipulator;->afChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 27
    sget-boolean v0, Lcom/dexcom/cgm/activities/notifications/VolumeManipulator;->musicVolumeChanged:Z

    return v0
.end method

.method static synthetic access$002(Z)Z
    .locals 0

    .prologue
    .line 27
    sput-boolean p0, Lcom/dexcom/cgm/activities/notifications/VolumeManipulator;->musicVolumeChanged:Z

    return p0
.end method

.method static synthetic access$100()I
    .locals 1

    .prologue
    .line 27
    sget v0, Lcom/dexcom/cgm/activities/notifications/VolumeManipulator;->oldMusicVolume:I

    return v0
.end method

.method static synthetic access$200()Landroid/media/AudioManager;
    .locals 1

    .prologue
    .line 27
    invoke-static {}, Lcom/dexcom/cgm/activities/notifications/VolumeManipulator;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300()Z
    .locals 1

    .prologue
    .line 27
    sget-boolean v0, Lcom/dexcom/cgm/activities/notifications/VolumeManipulator;->callVolumeChanged:Z

    return v0
.end method

.method static synthetic access$302(Z)Z
    .locals 0

    .prologue
    .line 27
    sput-boolean p0, Lcom/dexcom/cgm/activities/notifications/VolumeManipulator;->callVolumeChanged:Z

    return p0
.end method

.method static synthetic access$400()I
    .locals 1

    .prologue
    .line 27
    sget v0, Lcom/dexcom/cgm/activities/notifications/VolumeManipulator;->oldCallVolume:I

    return v0
.end method

.method static synthetic access$502(Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    .prologue
    .line 27
    sput-object p0, Lcom/dexcom/cgm/activities/notifications/VolumeManipulator;->unmuteRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method private static actuallyUnmutePhone(II)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x3

    const/4 v4, 0x0

    .line 121
    invoke-static {}, Lcom/dexcom/cgm/activities/notifications/VolumeManipulator;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    sput v0, Lcom/dexcom/cgm/activities/notifications/VolumeManipulator;->oldMusicVolume:I

    .line 122
    invoke-static {}, Lcom/dexcom/cgm/activities/notifications/VolumeManipulator;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    sput v0, Lcom/dexcom/cgm/activities/notifications/VolumeManipulator;->oldCallVolume:I

    .line 123
    if-eqz p1, :cond_1

    .line 125
    invoke-static {}, Lcom/dexcom/cgm/activities/notifications/VolumeManipulator;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioManager;->getMode()I

    move-result v0

    .line 126
    invoke-static {}, Lcom/dexcom/cgm/activities/notifications/VolumeManipulator;->getAudioManager()Landroid/media/AudioManager;

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    invoke-static {}, Lcom/dexcom/cgm/activities/notifications/VolumeManipulator;->getAudioManager()Landroid/media/AudioManager;

    if-ne v0, v5, :cond_2

    .line 128
    :cond_0
    invoke-static {v4}, Lcom/dexcom/cgm/activities/notifications/VolumeManipulator;->getMaxVolumeLevelForNotifications(I)I

    move-result v0

    int-to-double v0, v0

    invoke-static {p1}, Lcom/dexcom/cgm/activities/notifications/VolumeManipulator;->getOverrideVolumePercentage(I)D

    move-result-wide v2

    mul-double/2addr v0, v2

    double-to-int v0, v0

    .line 130
    sget v1, Lcom/dexcom/cgm/activities/notifications/VolumeManipulator;->oldCallVolume:I

    if-ge v1, v0, :cond_1

    .line 132
    invoke-static {}, Lcom/dexcom/cgm/activities/notifications/VolumeManipulator;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v1

    invoke-virtual {v1, v4, v0, v4}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 133
    sput-boolean v6, Lcom/dexcom/cgm/activities/notifications/VolumeManipulator;->callVolumeChanged:Z

    .line 147
    :cond_1
    :goto_0
    new-instance v0, Lcom/dexcom/cgm/activities/notifications/VolumeManipulator$3;

    invoke-direct {v0}, Lcom/dexcom/cgm/activities/notifications/VolumeManipulator$3;-><init>()V

    sput-object v0, Lcom/dexcom/cgm/activities/notifications/VolumeManipulator;->unmuteRunnable:Ljava/lang/Runnable;

    .line 175
    sget-object v0, Lcom/dexcom/cgm/activities/notifications/VolumeManipulator;->unmuteHandler:Landroid/os/Handler;

    sget-object v1, Lcom/dexcom/cgm/activities/notifications/VolumeManipulator;->unmuteRunnable:Ljava/lang/Runnable;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    add-int/lit8 v3, p0, 0x1

    int-to-long v4, v3

    invoke-virtual {v2, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 176
    return-void

    .line 138
    :cond_2
    invoke-static {v5}, Lcom/dexcom/cgm/activities/notifications/VolumeManipulator;->getMaxVolumeLevelForNotifications(I)I

    move-result v0

    int-to-double v0, v0

    invoke-static {p1}, Lcom/dexcom/cgm/activities/notifications/VolumeManipulator;->getOverrideVolumePercentage(I)D

    move-result-wide v2

    mul-double/2addr v0, v2

    double-to-int v0, v0

    .line 140
    sget v1, Lcom/dexcom/cgm/activities/notifications/VolumeManipulator;->oldMusicVolume:I

    if-ge v1, v0, :cond_1

    .line 142
    invoke-static {}, Lcom/dexcom/cgm/activities/notifications/VolumeManipulator;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v1

    invoke-virtual {v1, v5, v0, v4}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 143
    sput-boolean v6, Lcom/dexcom/cgm/activities/notifications/VolumeManipulator;->musicVolumeChanged:Z

    goto :goto_0
.end method

.method private static areHeadphonesPluggedIn()Z
    .locals 2

    .prologue
    .line 249
    invoke-static {}, Lcom/dexcom/cgm/activities/TheApplicationContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 250
    invoke-virtual {v0}, Landroid/media/AudioManager;->isBluetoothA2dpOn()Z

    move-result v1

    .line 256
    invoke-virtual {v0}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v0

    .line 257
    if-nez v1, :cond_0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static getAudioManager()Landroid/media/AudioManager;
    .locals 2

    .prologue
    .line 284
    invoke-static {}, Lcom/dexcom/cgm/activities/TheApplicationContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    return-object v0
.end method

.method public static getMaxVolumeLevelForNotifications(I)I
    .locals 1

    .prologue
    .line 279
    invoke-static {}, Lcom/dexcom/cgm/activities/notifications/VolumeManipulator;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    return v0
.end method

.method private static getOverrideVolumePercentage(I)D
    .locals 3

    .prologue
    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    .line 234
    invoke-static {}, Lcom/dexcom/cgm/activities/notifications/VolumeManipulator;->areHeadphonesPluggedIn()Z

    move-result v2

    .line 235
    packed-switch p0, :pswitch_data_0

    .line 243
    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return-wide v0

    .line 238
    :pswitch_0
    const-wide/16 v0, 0x0

    goto :goto_0

    .line 240
    :pswitch_1
    if-eqz v2, :cond_0

    const-wide/high16 v0, 0x3fd0000000000000L    # 0.25

    goto :goto_0

    .line 243
    :cond_1
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    goto :goto_0

    .line 235
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static getSpeakerType()Lcom/dexcom/cgm/model/enums/SpeakerType;
    .locals 1

    .prologue
    .line 262
    invoke-static {}, Lcom/dexcom/cgm/activities/notifications/VolumeManipulator;->areHeadphonesPluggedIn()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/dexcom/cgm/model/enums/SpeakerType;->Headphones:Lcom/dexcom/cgm/model/enums/SpeakerType;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/dexcom/cgm/model/enums/SpeakerType;->BuiltIn:Lcom/dexcom/cgm/model/enums/SpeakerType;

    goto :goto_0
.end method

.method public static playSound(Landroid/net/Uri;)V
    .locals 6

    .prologue
    const/4 v5, 0x3

    .line 180
    sget-object v1, Lcom/dexcom/cgm/activities/notifications/VolumeManipulator;->m_mediaPlayerLock:Ljava/lang/Object;

    monitor-enter v1

    .line 182
    :try_start_0
    invoke-static {}, Lcom/dexcom/cgm/activities/TheApplicationContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 183
    const-string v0, "audio"

    invoke-virtual {v2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 186
    invoke-static {}, Lcom/dexcom/cgm/activities/notifications/VolumeManipulator;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/AudioManager;->getMode()I

    move-result v3

    .line 187
    invoke-static {}, Lcom/dexcom/cgm/activities/notifications/VolumeManipulator;->getAudioManager()Landroid/media/AudioManager;

    const/4 v4, 0x2

    if-eq v3, v4, :cond_0

    invoke-static {}, Lcom/dexcom/cgm/activities/notifications/VolumeManipulator;->getAudioManager()Landroid/media/AudioManager;

    if-ne v3, v5, :cond_1

    .line 189
    :cond_0
    const/4 v0, 0x0

    invoke-static {v2, p0, v0}, Lcom/dexcom/cgm/activities/notifications/VolumeManipulator;->setStreamAndPlay(Landroid/content/Context;Landroid/net/Uri;I)V

    .line 210
    :goto_0
    monitor-exit v1

    return-void

    .line 194
    :cond_1
    sget-object v3, Lcom/dexcom/cgm/activities/notifications/VolumeManipulator;->afChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    const/4 v4, 0x3

    const/4 v5, 0x3

    invoke-virtual {v0, v3, v4, v5}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result v0

    .line 200
    const/4 v3, 0x1

    if-ne v0, v3, :cond_2

    .line 203
    const/4 v0, 0x3

    invoke-static {v2, p0, v0}, Lcom/dexcom/cgm/activities/notifications/VolumeManipulator;->setStreamAndPlay(Landroid/content/Context;Landroid/net/Uri;I)V

    goto :goto_0

    .line 210
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 207
    :cond_2
    :try_start_1
    new-instance v0, Lcom/dexcom/cgm/model/AudioStreamFocusException;

    const-string v2, "Audio focus not granted"

    invoke-direct {v0, v2}, Lcom/dexcom/cgm/model/AudioStreamFocusException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
.end method

.method public static remutePhoneImmediately()V
    .locals 2

    .prologue
    .line 271
    sget-object v0, Lcom/dexcom/cgm/activities/notifications/VolumeManipulator;->unmuteHandler:Landroid/os/Handler;

    sget-object v1, Lcom/dexcom/cgm/activities/notifications/VolumeManipulator;->unmuteRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 273
    sget-object v0, Lcom/dexcom/cgm/activities/notifications/VolumeManipulator;->unmuteRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 274
    sget-object v0, Lcom/dexcom/cgm/activities/notifications/VolumeManipulator;->unmuteRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 275
    :cond_0
    return-void
.end method

.method private static setStreamAndPlay(Landroid/content/Context;Landroid/net/Uri;I)V
    .locals 1

    .prologue
    .line 289
    sget-object v0, Lcom/dexcom/cgm/activities/notifications/VolumeManipulator;->m_mediaHandler:Lcom/dexcom/cgm/activities/media/MediaHandler;

    invoke-virtual {v0, p1, p2}, Lcom/dexcom/cgm/activities/media/MediaHandler;->play(Landroid/net/Uri;I)V

    .line 290
    return-void
.end method

.method public static stopSound()V
    .locals 5

    .prologue
    .line 215
    sget-object v1, Lcom/dexcom/cgm/activities/notifications/VolumeManipulator;->m_mediaPlayerLock:Ljava/lang/Object;

    monitor-enter v1

    .line 217
    :try_start_0
    sget-object v0, Lcom/dexcom/cgm/activities/notifications/VolumeManipulator;->m_mediaHandler:Lcom/dexcom/cgm/activities/media/MediaHandler;

    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/media/MediaHandler;->stop()V

    .line 219
    sget-boolean v0, Lcom/dexcom/cgm/activities/notifications/VolumeManipulator;->musicVolumeChanged:Z

    if-eqz v0, :cond_0

    .line 221
    invoke-static {}, Lcom/dexcom/cgm/activities/notifications/VolumeManipulator;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v0

    const/4 v2, 0x3

    sget v3, Lcom/dexcom/cgm/activities/notifications/VolumeManipulator;->oldMusicVolume:I

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 222
    const/4 v0, 0x0

    sput-boolean v0, Lcom/dexcom/cgm/activities/notifications/VolumeManipulator;->musicVolumeChanged:Z

    .line 224
    :cond_0
    sget-boolean v0, Lcom/dexcom/cgm/activities/notifications/VolumeManipulator;->callVolumeChanged:Z

    if-eqz v0, :cond_1

    .line 226
    invoke-static {}, Lcom/dexcom/cgm/activities/notifications/VolumeManipulator;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v0

    const/4 v2, 0x0

    sget v3, Lcom/dexcom/cgm/activities/notifications/VolumeManipulator;->oldCallVolume:I

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 227
    const/4 v0, 0x0

    sput-boolean v0, Lcom/dexcom/cgm/activities/notifications/VolumeManipulator;->callVolumeChanged:Z

    .line 229
    :cond_1
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static unmutePhone(II)V
    .locals 6

    .prologue
    .line 95
    invoke-static {}, Lcom/dexcom/cgm/activities/notifications/VolumeManipulator;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioManager;->isVolumeFixed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    const-class v0, Lcom/dexcom/cgm/activities/notifications/VolumeManipulator;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Could not override mute, as the phone didn\'t allow it!"

    invoke-static {v0, v1}, Lcom/dexcom/cgm/f/b;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    :goto_0
    return-void

    .line 101
    :cond_0
    sget-object v0, Lcom/dexcom/cgm/activities/notifications/VolumeManipulator;->unmuteRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 104
    sget-object v0, Lcom/dexcom/cgm/activities/notifications/VolumeManipulator;->unmuteHandler:Landroid/os/Handler;

    sget-object v1, Lcom/dexcom/cgm/activities/notifications/VolumeManipulator;->unmuteRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 105
    sget-object v0, Lcom/dexcom/cgm/activities/notifications/VolumeManipulator;->unmuteHandler:Landroid/os/Handler;

    sget-object v1, Lcom/dexcom/cgm/activities/notifications/VolumeManipulator;->unmuteRunnable:Ljava/lang/Runnable;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    int-to-long v4, p0

    invoke-virtual {v2, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 109
    :cond_1
    invoke-static {p0, p1}, Lcom/dexcom/cgm/activities/notifications/VolumeManipulator;->actuallyUnmutePhone(II)V

    goto :goto_0
.end method

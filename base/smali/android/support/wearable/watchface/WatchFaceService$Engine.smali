.class public abstract Landroid/support/wearable/watchface/WatchFaceService$Engine;
.super Landroid/service/wallpaper/WallpaperService$Engine;
.source "WatchFaceService.java"


# instance fields
.field private final mAmbientTimeTickFilter:Landroid/content/IntentFilter;

.field private mInAmbientMode:Z

.field private final mInteractiveTimeTickFilter:Landroid/content/IntentFilter;

.field private mInterruptionFilter:I

.field private mLastWatchFaceStyle:Landroid/support/wearable/watchface/WatchFaceStyle;

.field private mNotificationCount:I

.field private final mPeekCardPosition:Landroid/graphics/Rect;

.field private final mTimeTickReceiver:Landroid/content/BroadcastReceiver;

.field private mTimeTickRegistered:Z

.field private mUnreadCount:I

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mWatchFaceService:Landroid/support/wearable/watchface/IWatchFaceService;

.field private mWatchFaceStyle:Landroid/support/wearable/watchface/WatchFaceStyle;

.field final synthetic this$0:Landroid/support/wearable/watchface/WatchFaceService;


# direct methods
.method public constructor <init>(Landroid/support/wearable/watchface/WatchFaceService;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 229
    iput-object p1, p0, Landroid/support/wearable/watchface/WatchFaceService$Engine;->this$0:Landroid/support/wearable/watchface/WatchFaceService;

    .line 230
    invoke-direct {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;-><init>(Landroid/service/wallpaper/WallpaperService;)V

    .line 218
    new-instance v0, Landroid/support/wearable/watchface/WatchFaceService$Engine$1;

    invoke-direct {v0, p0}, Landroid/support/wearable/watchface/WatchFaceService$Engine$1;-><init>(Landroid/support/wearable/watchface/WatchFaceService$Engine;)V

    iput-object v0, p0, Landroid/support/wearable/watchface/WatchFaceService$Engine;->mTimeTickReceiver:Landroid/content/BroadcastReceiver;

    .line 227
    iput-boolean v1, p0, Landroid/support/wearable/watchface/WatchFaceService$Engine;->mTimeTickRegistered:Z

    .line 322
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Landroid/support/wearable/watchface/WatchFaceService$Engine;->mPeekCardPosition:Landroid/graphics/Rect;

    .line 231
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Landroid/support/wearable/watchface/WatchFaceService$Engine;->mAmbientTimeTickFilter:Landroid/content/IntentFilter;

    .line 232
    iget-object v0, p0, Landroid/support/wearable/watchface/WatchFaceService$Engine;->mAmbientTimeTickFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.DATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 233
    iget-object v0, p0, Landroid/support/wearable/watchface/WatchFaceService$Engine;->mAmbientTimeTickFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 234
    iget-object v0, p0, Landroid/support/wearable/watchface/WatchFaceService$Engine;->mAmbientTimeTickFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 235
    new-instance v0, Landroid/content/IntentFilter;

    iget-object v1, p0, Landroid/support/wearable/watchface/WatchFaceService$Engine;->mAmbientTimeTickFilter:Landroid/content/IntentFilter;

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Landroid/content/IntentFilter;)V

    iput-object v0, p0, Landroid/support/wearable/watchface/WatchFaceService$Engine;->mInteractiveTimeTickFilter:Landroid/content/IntentFilter;

    .line 236
    iget-object v0, p0, Landroid/support/wearable/watchface/WatchFaceService$Engine;->mInteractiveTimeTickFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 237
    return-void
.end method

.method private dispatchAmbientModeChanged()V
    .locals 3

    .prologue
    .line 533
    const-string v0, "WatchFaceService"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 534
    const-string v0, "WatchFaceService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "dispatchAmbientModeChanged: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Landroid/support/wearable/watchface/WatchFaceService$Engine;->mInAmbientMode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    :cond_0
    iget-boolean v0, p0, Landroid/support/wearable/watchface/WatchFaceService$Engine;->mInAmbientMode:Z

    invoke-virtual {p0, v0}, Landroid/support/wearable/watchface/WatchFaceService$Engine;->onAmbientModeChanged(Z)V

    .line 537
    invoke-direct {p0}, Landroid/support/wearable/watchface/WatchFaceService$Engine;->updateTimeTickReceiver()V

    .line 538
    return-void
.end method

.method private maybeUpdateAmbientMode(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 523
    const-string v0, "ambient_mode"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 524
    const-string v0, "ambient_mode"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 525
    iget-boolean v1, p0, Landroid/support/wearable/watchface/WatchFaceService$Engine;->mInAmbientMode:Z

    if-eq v1, v0, :cond_0

    .line 526
    iput-boolean v0, p0, Landroid/support/wearable/watchface/WatchFaceService$Engine;->mInAmbientMode:Z

    .line 527
    invoke-direct {p0}, Landroid/support/wearable/watchface/WatchFaceService$Engine;->dispatchAmbientModeChanged()V

    .line 530
    :cond_0
    return-void
.end method

.method private maybeUpdateInterruptionFilter(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 502
    const-string v0, "interruption_filter"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 503
    const-string v0, "interruption_filter"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 505
    iget v1, p0, Landroid/support/wearable/watchface/WatchFaceService$Engine;->mInterruptionFilter:I

    if-eq v0, v1, :cond_0

    .line 506
    iput v0, p0, Landroid/support/wearable/watchface/WatchFaceService$Engine;->mInterruptionFilter:I

    .line 507
    invoke-virtual {p0, v0}, Landroid/support/wearable/watchface/WatchFaceService$Engine;->onInterruptionFilterChanged(I)V

    .line 510
    :cond_0
    return-void
.end method

.method private maybeUpdateNotificationCount(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 551
    const-string v0, "notification_count"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 552
    const-string v0, "notification_count"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 553
    iget v1, p0, Landroid/support/wearable/watchface/WatchFaceService$Engine;->mNotificationCount:I

    if-eq v0, v1, :cond_0

    .line 554
    iput v0, p0, Landroid/support/wearable/watchface/WatchFaceService$Engine;->mNotificationCount:I

    .line 555
    iget v0, p0, Landroid/support/wearable/watchface/WatchFaceService$Engine;->mNotificationCount:I

    invoke-virtual {p0, v0}, Landroid/support/wearable/watchface/WatchFaceService$Engine;->onNotificationCountChanged(I)V

    .line 558
    :cond_0
    return-void
.end method

.method private maybeUpdatePeekCardPosition(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 513
    const-string v0, "card_location"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 514
    const-string v0, "card_location"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/Rect;->unflattenFromString(Ljava/lang/String;)Landroid/graphics/Rect;

    move-result-object v0

    .line 515
    iget-object v1, p0, Landroid/support/wearable/watchface/WatchFaceService$Engine;->mPeekCardPosition:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 516
    iget-object v1, p0, Landroid/support/wearable/watchface/WatchFaceService$Engine;->mPeekCardPosition:Landroid/graphics/Rect;

    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 517
    invoke-virtual {p0, v0}, Landroid/support/wearable/watchface/WatchFaceService$Engine;->onPeekCardPositionUpdate(Landroid/graphics/Rect;)V

    .line 520
    :cond_0
    return-void
.end method

.method private maybeUpdateUnreadCount(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 541
    const-string v0, "unread_count"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 542
    const-string v0, "unread_count"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 543
    iget v1, p0, Landroid/support/wearable/watchface/WatchFaceService$Engine;->mUnreadCount:I

    if-eq v0, v1, :cond_0

    .line 544
    iput v0, p0, Landroid/support/wearable/watchface/WatchFaceService$Engine;->mUnreadCount:I

    .line 545
    iget v0, p0, Landroid/support/wearable/watchface/WatchFaceService$Engine;->mUnreadCount:I

    invoke-virtual {p0, v0}, Landroid/support/wearable/watchface/WatchFaceService$Engine;->onUnreadCountChanged(I)V

    .line 548
    :cond_0
    return-void
.end method

.method private onSetBinder(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 286
    const-string v0, "binder"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 287
    if-eqz v0, :cond_1

    .line 288
    invoke-static {v0}, Landroid/support/wearable/watchface/IWatchFaceService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/support/wearable/watchface/IWatchFaceService;

    move-result-object v0

    iput-object v0, p0, Landroid/support/wearable/watchface/WatchFaceService$Engine;->mWatchFaceService:Landroid/support/wearable/watchface/IWatchFaceService;

    .line 289
    iget-object v0, p0, Landroid/support/wearable/watchface/WatchFaceService$Engine;->mWatchFaceStyle:Landroid/support/wearable/watchface/WatchFaceStyle;

    if-eqz v0, :cond_0

    .line 291
    :try_start_0
    iget-object v0, p0, Landroid/support/wearable/watchface/WatchFaceService$Engine;->mWatchFaceService:Landroid/support/wearable/watchface/IWatchFaceService;

    iget-object v1, p0, Landroid/support/wearable/watchface/WatchFaceService$Engine;->mWatchFaceStyle:Landroid/support/wearable/watchface/WatchFaceStyle;

    invoke-interface {v0, v1}, Landroid/support/wearable/watchface/IWatchFaceService;->setStyle(Landroid/support/wearable/watchface/WatchFaceStyle;)V

    .line 292
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/wearable/watchface/WatchFaceService$Engine;->mWatchFaceStyle:Landroid/support/wearable/watchface/WatchFaceStyle;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 300
    :cond_0
    :goto_0
    return-void

    .line 293
    :catch_0
    move-exception v0

    .line 294
    const-string v1, "WatchFaceService"

    const-string v2, "Failed to set WatchFaceStyle"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 298
    :cond_1
    const-string v0, "WatchFaceService"

    const-string v1, "Binder is null."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private updateTimeTickReceiver()V
    .locals 3

    .prologue
    .line 566
    const-string v0, "WatchFaceService"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 567
    const-string v0, "WatchFaceService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "updateTimeTickReceiver: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Landroid/support/wearable/watchface/WatchFaceService$Engine;->mTimeTickRegistered:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " -> ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/support/wearable/watchface/WatchFaceService$Engine;->isVisible()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/support/wearable/watchface/WatchFaceService$Engine;->mInAmbientMode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    :cond_0
    iget-boolean v0, p0, Landroid/support/wearable/watchface/WatchFaceService$Engine;->mTimeTickRegistered:Z

    if-eqz v0, :cond_1

    .line 571
    iget-object v0, p0, Landroid/support/wearable/watchface/WatchFaceService$Engine;->this$0:Landroid/support/wearable/watchface/WatchFaceService;

    iget-object v1, p0, Landroid/support/wearable/watchface/WatchFaceService$Engine;->mTimeTickReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/wearable/watchface/WatchFaceService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 572
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/wearable/watchface/WatchFaceService$Engine;->mTimeTickRegistered:Z

    .line 576
    :cond_1
    invoke-virtual {p0}, Landroid/support/wearable/watchface/WatchFaceService$Engine;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 577
    iget-boolean v0, p0, Landroid/support/wearable/watchface/WatchFaceService$Engine;->mInAmbientMode:Z

    if-eqz v0, :cond_3

    .line 578
    iget-object v0, p0, Landroid/support/wearable/watchface/WatchFaceService$Engine;->this$0:Landroid/support/wearable/watchface/WatchFaceService;

    iget-object v1, p0, Landroid/support/wearable/watchface/WatchFaceService$Engine;->mTimeTickReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Landroid/support/wearable/watchface/WatchFaceService$Engine;->mAmbientTimeTickFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/support/wearable/watchface/WatchFaceService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 582
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/wearable/watchface/WatchFaceService$Engine;->mTimeTickRegistered:Z

    .line 587
    invoke-virtual {p0}, Landroid/support/wearable/watchface/WatchFaceService$Engine;->onTimeTick()V

    .line 589
    :cond_2
    return-void

    .line 580
    :cond_3
    iget-object v0, p0, Landroid/support/wearable/watchface/WatchFaceService$Engine;->this$0:Landroid/support/wearable/watchface/WatchFaceService;

    iget-object v1, p0, Landroid/support/wearable/watchface/WatchFaceService$Engine;->mTimeTickReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Landroid/support/wearable/watchface/WatchFaceService$Engine;->mInteractiveTimeTickFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/support/wearable/watchface/WatchFaceService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0
.end method


# virtual methods
.method public final getInterruptionFilter()I
    .locals 1

    .prologue
    .line 475
    iget v0, p0, Landroid/support/wearable/watchface/WatchFaceService$Engine;->mInterruptionFilter:I

    return v0
.end method

.method public final getNotificationCount()I
    .locals 1

    .prologue
    .line 489
    iget v0, p0, Landroid/support/wearable/watchface/WatchFaceService$Engine;->mNotificationCount:I

    return v0
.end method

.method public final getPeekCardPosition()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 498
    iget-object v0, p0, Landroid/support/wearable/watchface/WatchFaceService$Engine;->mPeekCardPosition:Landroid/graphics/Rect;

    return-object v0
.end method

.method public final getUnreadCount()I
    .locals 1

    .prologue
    .line 482
    iget v0, p0, Landroid/support/wearable/watchface/WatchFaceService$Engine;->mUnreadCount:I

    return v0
.end method

.method public final isInAmbientMode()Z
    .locals 1

    .prologue
    .line 465
    iget-boolean v0, p0, Landroid/support/wearable/watchface/WatchFaceService$Engine;->mInAmbientMode:Z

    return v0
.end method

.method public onAmbientModeChanged(Z)V
    .locals 0

    .prologue
    .line 355
    return-void
.end method

.method public onCommand(Ljava/lang/String;IIILandroid/os/Bundle;Z)Landroid/os/Bundle;
    .locals 6

    .prologue
    const/4 v3, 0x3

    .line 242
    const-string v0, "WatchFaceService"

    invoke-static {v0, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 243
    const-string v0, "WatchFaceService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "received command: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    :cond_0
    const-string v0, "com.google.android.wearable.action.BACKGROUND_ACTION"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 246
    invoke-direct {p0, p5}, Landroid/support/wearable/watchface/WatchFaceService$Engine;->maybeUpdateAmbientMode(Landroid/os/Bundle;)V

    .line 247
    invoke-direct {p0, p5}, Landroid/support/wearable/watchface/WatchFaceService$Engine;->maybeUpdateInterruptionFilter(Landroid/os/Bundle;)V

    .line 248
    invoke-direct {p0, p5}, Landroid/support/wearable/watchface/WatchFaceService$Engine;->maybeUpdatePeekCardPosition(Landroid/os/Bundle;)V

    .line 249
    invoke-direct {p0, p5}, Landroid/support/wearable/watchface/WatchFaceService$Engine;->maybeUpdateUnreadCount(Landroid/os/Bundle;)V

    .line 250
    invoke-direct {p0, p5}, Landroid/support/wearable/watchface/WatchFaceService$Engine;->maybeUpdateNotificationCount(Landroid/os/Bundle;)V

    .line 282
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0

    .line 251
    :cond_2
    const-string v0, "com.google.android.wearable.action.AMBIENT_UPDATE"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 252
    iget-boolean v0, p0, Landroid/support/wearable/watchface/WatchFaceService$Engine;->mInAmbientMode:Z

    if-eqz v0, :cond_1

    .line 253
    const-string v0, "WatchFaceService"

    invoke-static {v0, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 254
    const-string v0, "WatchFaceService"

    const-string v1, "ambient mode update"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    :cond_3
    iget-object v0, p0, Landroid/support/wearable/watchface/WatchFaceService$Engine;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 257
    invoke-virtual {p0}, Landroid/support/wearable/watchface/WatchFaceService$Engine;->onTimeTick()V

    .line 258
    iget-object v0, p0, Landroid/support/wearable/watchface/WatchFaceService$Engine;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    goto :goto_0

    .line 260
    :cond_4
    const-string v0, "com.google.android.wearable.action.SET_PROPERTIES"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 261
    invoke-virtual {p0, p5}, Landroid/support/wearable/watchface/WatchFaceService$Engine;->onPropertiesChanged(Landroid/os/Bundle;)V

    goto :goto_0

    .line 262
    :cond_5
    const-string v0, "com.google.android.wearable.action.SET_BINDER"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 263
    invoke-direct {p0, p5}, Landroid/support/wearable/watchface/WatchFaceService$Engine;->onSetBinder(Landroid/os/Bundle;)V

    goto :goto_0

    .line 264
    :cond_6
    const-string v0, "com.google.android.wearable.action.REQUEST_STYLE"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 265
    iget-object v0, p0, Landroid/support/wearable/watchface/WatchFaceService$Engine;->mLastWatchFaceStyle:Landroid/support/wearable/watchface/WatchFaceStyle;

    if-eqz v0, :cond_7

    .line 266
    iget-object v0, p0, Landroid/support/wearable/watchface/WatchFaceService$Engine;->mLastWatchFaceStyle:Landroid/support/wearable/watchface/WatchFaceStyle;

    invoke-virtual {p0, v0}, Landroid/support/wearable/watchface/WatchFaceService$Engine;->setWatchFaceStyle(Landroid/support/wearable/watchface/WatchFaceStyle;)V

    goto :goto_0

    .line 267
    :cond_7
    const-string v0, "WatchFaceService"

    invoke-static {v0, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 268
    const-string v0, "WatchFaceService"

    const-string v1, "Last watch face style is null."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 270
    :cond_8
    const-string v0, "android.wallpaper.touch"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    const-string v0, "android.wallpaper.touch_cancel"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    const-string v0, "android.wallpaper.tap"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 273
    :cond_9
    const-string v0, "tap_time"

    invoke-virtual {p5, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 274
    const/4 v1, 0x0

    .line 275
    const-string v0, "android.wallpaper.touch_cancel"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 276
    const/4 v1, 0x1

    :cond_a
    :goto_1
    move-object v0, p0

    move v2, p2

    move v3, p3

    .line 280
    invoke-virtual/range {v0 .. v5}, Landroid/support/wearable/watchface/WatchFaceService$Engine;->onTapCommand(IIIJ)V

    goto/16 :goto_0

    .line 277
    :cond_b
    const-string v0, "android.wallpaper.tap"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 278
    const/4 v1, 0x2

    goto :goto_1
.end method

.method public onCreate(Landroid/view/SurfaceHolder;)V
    .locals 3

    .prologue
    .line 420
    invoke-super {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->onCreate(Landroid/view/SurfaceHolder;)V

    .line 422
    new-instance v0, Landroid/support/wearable/watchface/WatchFaceStyle$Builder;

    iget-object v1, p0, Landroid/support/wearable/watchface/WatchFaceService$Engine;->this$0:Landroid/support/wearable/watchface/WatchFaceService;

    invoke-direct {v0, v1}, Landroid/support/wearable/watchface/WatchFaceStyle$Builder;-><init>(Landroid/app/Service;)V

    invoke-virtual {v0}, Landroid/support/wearable/watchface/WatchFaceStyle$Builder;->build()Landroid/support/wearable/watchface/WatchFaceStyle;

    move-result-object v0

    iput-object v0, p0, Landroid/support/wearable/watchface/WatchFaceService$Engine;->mWatchFaceStyle:Landroid/support/wearable/watchface/WatchFaceStyle;

    .line 423
    iget-object v0, p0, Landroid/support/wearable/watchface/WatchFaceService$Engine;->this$0:Landroid/support/wearable/watchface/WatchFaceService;

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/support/wearable/watchface/WatchFaceService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const/4 v1, 0x1

    const-string v2, "WatchFaceService"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Landroid/support/wearable/watchface/WatchFaceService$Engine;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 427
    iget-object v0, p0, Landroid/support/wearable/watchface/WatchFaceService$Engine;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 428
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 432
    iget-boolean v0, p0, Landroid/support/wearable/watchface/WatchFaceService$Engine;->mTimeTickRegistered:Z

    if-eqz v0, :cond_0

    .line 433
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/wearable/watchface/WatchFaceService$Engine;->mTimeTickRegistered:Z

    .line 434
    iget-object v0, p0, Landroid/support/wearable/watchface/WatchFaceService$Engine;->this$0:Landroid/support/wearable/watchface/WatchFaceService;

    iget-object v1, p0, Landroid/support/wearable/watchface/WatchFaceService$Engine;->mTimeTickReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/wearable/watchface/WatchFaceService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 436
    :cond_0
    invoke-super {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->onDestroy()V

    .line 437
    return-void
.end method

.method public onInterruptionFilterChanged(I)V
    .locals 0

    .prologue
    .line 365
    return-void
.end method

.method public onNotificationCountChanged(I)V
    .locals 0

    .prologue
    .line 388
    return-void
.end method

.method public onPeekCardPositionUpdate(Landroid/graphics/Rect;)V
    .locals 0

    .prologue
    .line 373
    return-void
.end method

.method public onPropertiesChanged(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 396
    return-void
.end method

.method public onTapCommand(IIIJ)V
    .locals 0
    .param p1    # I
        .annotation build Landroid/support/wearable/watchface/WatchFaceService$TapType;
        .end annotation
    .end param

    .prologue
    .line 416
    return-void
.end method

.method public onTimeTick()V
    .locals 0

    .prologue
    .line 406
    return-void
.end method

.method public onUnreadCountChanged(I)V
    .locals 0

    .prologue
    .line 381
    return-void
.end method

.method public onVisibilityChanged(Z)V
    .locals 3

    .prologue
    .line 446
    invoke-super {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->onVisibilityChanged(Z)V

    .line 447
    const-string v0, "WatchFaceService"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 448
    const-string v0, "WatchFaceService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onVisibilityChanged: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.android.wearable.watchfaces.action.REQUEST_STATE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 455
    iget-object v1, p0, Landroid/support/wearable/watchface/WatchFaceService$Engine;->this$0:Landroid/support/wearable/watchface/WatchFaceService;

    invoke-virtual {v1, v0}, Landroid/support/wearable/watchface/WatchFaceService;->sendBroadcast(Landroid/content/Intent;)V

    .line 457
    invoke-direct {p0}, Landroid/support/wearable/watchface/WatchFaceService$Engine;->updateTimeTickReceiver()V

    .line 458
    return-void
.end method

.method public setWatchFaceStyle(Landroid/support/wearable/watchface/WatchFaceStyle;)V
    .locals 3

    .prologue
    .line 333
    const-string v0, "WatchFaceService"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 334
    const-string v0, "WatchFaceService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setWatchFaceStyle "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    :cond_0
    iput-object p1, p0, Landroid/support/wearable/watchface/WatchFaceService$Engine;->mWatchFaceStyle:Landroid/support/wearable/watchface/WatchFaceStyle;

    .line 339
    iput-object p1, p0, Landroid/support/wearable/watchface/WatchFaceService$Engine;->mLastWatchFaceStyle:Landroid/support/wearable/watchface/WatchFaceStyle;

    .line 340
    iget-object v0, p0, Landroid/support/wearable/watchface/WatchFaceService$Engine;->mWatchFaceService:Landroid/support/wearable/watchface/IWatchFaceService;

    if-eqz v0, :cond_1

    .line 342
    :try_start_0
    iget-object v0, p0, Landroid/support/wearable/watchface/WatchFaceService$Engine;->mWatchFaceService:Landroid/support/wearable/watchface/IWatchFaceService;

    invoke-interface {v0, p1}, Landroid/support/wearable/watchface/IWatchFaceService;->setStyle(Landroid/support/wearable/watchface/WatchFaceStyle;)V

    .line 343
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/wearable/watchface/WatchFaceService$Engine;->mWatchFaceStyle:Landroid/support/wearable/watchface/WatchFaceStyle;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 348
    :cond_1
    :goto_0
    return-void

    .line 344
    :catch_0
    move-exception v0

    .line 345
    const-string v1, "WatchFaceService"

    const-string v2, "Failed to set WatchFaceStyle: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

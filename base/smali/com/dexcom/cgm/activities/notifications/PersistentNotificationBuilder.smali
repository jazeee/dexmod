.class public Lcom/dexcom/cgm/activities/notifications/PersistentNotificationBuilder;
.super Ljava/lang/Object;
.source "PersistentNotificationBuilder.java"

# interfaces
.implements Lcom/dexcom/cgm/h/c;


# static fields
.field private static final MAXIMUM_EGV_DISPLAYED:I = 0x190

.field private static final MINIMUM_EGV_DISPLAYED:I = 0x28

.field private static final MINIMUM_GLUCOSE_VALUE:I = 0x14

.field private static final PERSISTENT_NOTIFICATION_ID:I = 0x64

.field private static final THREE_HOURS_IN_SECONDS:I = 0x2a30

.field private static displayHeight:I

.field private static displayWidth:I


# instance fields
.field private final m_context:Landroid/content/Context;

.field private m_graphBitmap:Landroid/graphics/Bitmap;

.field private m_hasBeenLessThanThreeHoursSinceLastEgv:Z

.field private m_hasValidEgvBeenReceived:Z

.field private m_persistentNotificationsAreOn:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 44
    sput v0, Lcom/dexcom/cgm/activities/notifications/PersistentNotificationBuilder;->displayWidth:I

    .line 45
    sput v0, Lcom/dexcom/cgm/activities/notifications/PersistentNotificationBuilder;->displayHeight:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/dexcom/cgm/activities/notifications/PersistentNotificationBuilder;->m_context:Landroid/content/Context;

    .line 56
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/notifications/PersistentNotificationBuilder;->drawGraphBasedOnSessionState()V

    .line 57
    return-void
.end method

.method private drawGraph()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 87
    iget-object v0, p0, Lcom/dexcom/cgm/activities/notifications/PersistentNotificationBuilder;->m_context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 89
    sget v1, Lcom/dexcom/cgm/activities/notifications/PersistentNotificationBuilder;->displayWidth:I

    if-nez v1, :cond_0

    .line 92
    const/high16 v1, 0x43400000    # 192.0f

    invoke-static {v3, v1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/dexcom/cgm/activities/notifications/PersistentNotificationBuilder;->displayHeight:I

    .line 93
    sget v0, Lcom/dexcom/cgm/activities/notifications/PersistentNotificationBuilder;->displayHeight:I

    mul-int/lit8 v0, v0, 0x2

    sput v0, Lcom/dexcom/cgm/activities/notifications/PersistentNotificationBuilder;->displayWidth:I

    .line 96
    :cond_0
    new-instance v0, Lcom/dexcom/cgm/activities/TrendGraphView;

    iget-object v1, p0, Lcom/dexcom/cgm/activities/notifications/PersistentNotificationBuilder;->m_context:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/activities/TrendGraphView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 97
    sget-object v1, Lcom/dexcom/cgm/activities/TrendGraphTimeScale;->ThreeHours:Lcom/dexcom/cgm/activities/TrendGraphTimeScale;

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/TrendGraphView;->setTimeScale(Lcom/dexcom/cgm/activities/TrendGraphTimeScale;)V

    .line 98
    invoke-virtual {v0, v3}, Lcom/dexcom/cgm/activities/TrendGraphView;->setShadingEnabled(Z)V

    .line 99
    sget v1, Lcom/dexcom/cgm/activities/notifications/PersistentNotificationBuilder;->displayWidth:I

    sget v2, Lcom/dexcom/cgm/activities/notifications/PersistentNotificationBuilder;->displayHeight:I

    invoke-virtual {v0, v1, v2}, Lcom/dexcom/cgm/activities/TrendGraphView;->setUpGraphDimensions(II)V

    .line 100
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1}, Landroid/graphics/Canvas;-><init>()V

    sget v2, Lcom/dexcom/cgm/activities/notifications/PersistentNotificationBuilder;->displayWidth:I

    sget v3, Lcom/dexcom/cgm/activities/notifications/PersistentNotificationBuilder;->displayHeight:I

    invoke-static {v2, v3}, Lcom/dexcom/cgm/activities/BitmapLeaser;->getM_NotificationBitmap(II)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/dexcom/cgm/activities/TrendGraphView;->drawToBitmap(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;)V

    .line 101
    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/TrendGraphView;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/activities/notifications/PersistentNotificationBuilder;->m_graphBitmap:Landroid/graphics/Bitmap;

    .line 102
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/notifications/PersistentNotificationBuilder;->updateNotification()V

    .line 103
    return-void
.end method

.method private drawGraphBasedOnSessionState()V
    .locals 5

    .prologue
    .line 67
    invoke-static {}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->instance()Lcom/dexcom/cgm/activities/ActivitiesConnections;

    move-result-object v0

    .line 68
    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->getCgmPresentationExtension()Lcom/dexcom/cgm/i/a;

    move-result-object v0

    .line 69
    invoke-interface {v0}, Lcom/dexcom/cgm/i/a;->hasCompletedSensorWarmUpAtLeastOnce()Z

    move-result v1

    iput-boolean v1, p0, Lcom/dexcom/cgm/activities/notifications/PersistentNotificationBuilder;->m_hasValidEgvBeenReceived:Z

    .line 70
    invoke-interface {v0}, Lcom/dexcom/cgm/i/a;->getKeyValues()Lcom/dexcom/cgm/d/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dexcom/cgm/d/e;->getPersistentNotification()Z

    move-result v1

    iput-boolean v1, p0, Lcom/dexcom/cgm/activities/notifications/PersistentNotificationBuilder;->m_persistentNotificationsAreOn:Z

    .line 72
    invoke-static {}, Lcom/dexcom/cgm/k/j;->getCurrentSystemTime()Lcom/dexcom/cgm/k/j;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dexcom/cgm/k/j;->getTimeInSeconds()J

    move-result-wide v2

    .line 73
    invoke-interface {v0}, Lcom/dexcom/cgm/i/a;->getSensorInsertionTime()Lcom/dexcom/cgm/k/j;

    move-result-object v1

    sget-object v4, Lcom/dexcom/cgm/k/j;->Unknown:Lcom/dexcom/cgm/k/j;

    if-eq v1, v4, :cond_0

    .line 75
    invoke-interface {v0}, Lcom/dexcom/cgm/i/a;->getKeyValues()Lcom/dexcom/cgm/d/e;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Lcom/dexcom/cgm/d/e;->setLastEgvTimeStamp(J)V

    .line 78
    :cond_0
    invoke-interface {v0}, Lcom/dexcom/cgm/i/a;->getKeyValues()Lcom/dexcom/cgm/d/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dexcom/cgm/d/e;->getLastEgvTimeStamp()J

    move-result-wide v0

    .line 79
    sub-long v0, v2, v0

    const-wide/16 v2, 0x2a30

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/dexcom/cgm/activities/notifications/PersistentNotificationBuilder;->m_hasBeenLessThanThreeHoursSinceLastEgv:Z

    .line 82
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/notifications/PersistentNotificationBuilder;->drawGraph()V

    .line 83
    return-void

    .line 79
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getEgv(I)Ljava/lang/String;
    .locals 2

    .prologue
    .line 230
    const/16 v0, 0x28

    if-ge p1, v0, :cond_1

    .line 232
    const/16 v0, 0x14

    if-le p1, v0, :cond_0

    .line 234
    iget-object v0, p0, Lcom/dexcom/cgm/activities/notifications/PersistentNotificationBuilder;->m_context:Landroid/content/Context;

    sget v1, Lcom/dexcom/cgm/activities/R$string;->glucose_alert_text_low:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 246
    :goto_0
    return-object v0

    .line 238
    :cond_0
    iget-object v0, p0, Lcom/dexcom/cgm/activities/notifications/PersistentNotificationBuilder;->m_context:Landroid/content/Context;

    sget v1, Lcom/dexcom/cgm/activities/R$string;->dex_common_triple_dashes:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 242
    :cond_1
    const/16 v0, 0x190

    if-le p1, v0, :cond_2

    .line 244
    iget-object v0, p0, Lcom/dexcom/cgm/activities/notifications/PersistentNotificationBuilder;->m_context:Landroid/content/Context;

    sget v1, Lcom/dexcom/cgm/activities/R$string;->glucose_alert_text_high:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 246
    :cond_2
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getTrendArrow(Lcom/dexcom/cgm/h/a/a/e;)I
    .locals 3

    .prologue
    .line 251
    const/4 v0, 0x0

    .line 252
    sget-object v1, Lcom/dexcom/cgm/activities/notifications/PersistentNotificationBuilder$1;->$SwitchMap$com$dexcom$cgm$presentation$model$enums$DexTrendArrow:[I

    invoke-virtual {p1}, Lcom/dexcom/cgm/h/a/a/e;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 281
    :goto_0
    return v0

    .line 255
    :pswitch_0
    sget v0, Lcom/dexcom/cgm/activities/R$drawable;->arrow_up_two:I

    goto :goto_0

    .line 258
    :pswitch_1
    sget v0, Lcom/dexcom/cgm/activities/R$drawable;->arrow_up_one:I

    goto :goto_0

    .line 261
    :pswitch_2
    sget v0, Lcom/dexcom/cgm/activities/R$drawable;->arrow_up_forty_five:I

    goto :goto_0

    .line 264
    :pswitch_3
    sget v0, Lcom/dexcom/cgm/activities/R$drawable;->arrow_flat:I

    goto :goto_0

    .line 267
    :pswitch_4
    sget v0, Lcom/dexcom/cgm/activities/R$drawable;->arrow_down_forty_five:I

    goto :goto_0

    .line 270
    :pswitch_5
    sget v0, Lcom/dexcom/cgm/activities/R$drawable;->arrow_down_one:I

    goto :goto_0

    .line 273
    :pswitch_6
    sget v0, Lcom/dexcom/cgm/activities/R$drawable;->arrow_down_two:I

    goto :goto_0

    .line 278
    :pswitch_7
    sget v0, Lcom/dexcom/cgm/activities/R$drawable;->nothing:I

    goto :goto_0

    .line 252
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_7
        :pswitch_7
    .end packed-switch
.end method

.method private setNotificationValues(ILjava/lang/String;Lcom/dexcom/cgm/h/a/a/e;Ljava/lang/String;Landroid/widget/RemoteViews;)V
    .locals 4

    .prologue
    .line 218
    sget v0, Lcom/dexcom/cgm/activities/R$id;->glucose_value:I

    invoke-direct {p0, p1}, Lcom/dexcom/cgm/activities/notifications/PersistentNotificationBuilder;->getEgv(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p5, v0, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 219
    sget v0, Lcom/dexcom/cgm/activities/R$id;->glucose_units:I

    .line 220
    invoke-direct {p0, p1}, Lcom/dexcom/cgm/activities/notifications/PersistentNotificationBuilder;->getEgv(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/dexcom/cgm/activities/notifications/PersistentNotificationBuilder;->m_context:Landroid/content/Context;

    sget v3, Lcom/dexcom/cgm/activities/R$string;->dex_common_triple_dashes:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p2, ""

    .line 219
    :cond_0
    invoke-virtual {p5, v0, p2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 222
    sget v1, Lcom/dexcom/cgm/activities/R$id;->trend_arrow:I

    .line 223
    invoke-direct {p0, p1}, Lcom/dexcom/cgm/activities/notifications/PersistentNotificationBuilder;->getEgv(I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/dexcom/cgm/activities/notifications/PersistentNotificationBuilder;->m_context:Landroid/content/Context;

    sget v3, Lcom/dexcom/cgm/activities/R$string;->dex_common_triple_dashes:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget v0, Lcom/dexcom/cgm/activities/R$drawable;->nothing:I

    .line 222
    :goto_0
    invoke-virtual {p5, v1, v0}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 225
    sget v0, Lcom/dexcom/cgm/activities/R$id;->timestamp:I

    invoke-virtual {p5, v0, p4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 226
    return-void

    .line 224
    :cond_1
    invoke-direct {p0, p3}, Lcom/dexcom/cgm/activities/notifications/PersistentNotificationBuilder;->getTrendArrow(Lcom/dexcom/cgm/h/a/a/e;)I

    move-result v0

    goto :goto_0
.end method

.method private updateNotification()V
    .locals 12

    .prologue
    const/16 v11, 0x64

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 107
    invoke-static {}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->instance()Lcom/dexcom/cgm/activities/ActivitiesConnections;

    move-result-object v0

    .line 108
    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->getCgmPresentationExtension()Lcom/dexcom/cgm/i/a;

    move-result-object v6

    .line 114
    invoke-interface {v6}, Lcom/dexcom/cgm/i/a;->getCurrentCgmStateInformation()Lcom/dexcom/cgm/h/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dexcom/cgm/h/a/b;->getEgv()I

    move-result v1

    .line 115
    iget-object v0, p0, Lcom/dexcom/cgm/activities/notifications/PersistentNotificationBuilder;->m_context:Landroid/content/Context;

    sget v2, Lcom/dexcom/cgm/activities/R$string;->mgdl_unit_of_measurement:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 116
    invoke-interface {v6}, Lcom/dexcom/cgm/i/a;->getCurrentCgmStateInformation()Lcom/dexcom/cgm/h/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dexcom/cgm/h/a/b;->getTrendArrow()Lcom/dexcom/cgm/h/a/a/e;

    move-result-object v3

    .line 124
    const-string v4, ""

    .line 128
    new-instance v7, Landroid/app/Notification$Builder;

    iget-object v0, p0, Lcom/dexcom/cgm/activities/notifications/PersistentNotificationBuilder;->m_context:Landroid/content/Context;

    invoke-direct {v7, v0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 131
    new-instance v5, Landroid/widget/RemoteViews;

    iget-object v0, p0, Lcom/dexcom/cgm/activities/notifications/PersistentNotificationBuilder;->m_context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    sget v8, Lcom/dexcom/cgm/activities/R$layout;->persistent_notification:I

    invoke-direct {v5, v0, v8}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    move-object v0, p0

    .line 135
    invoke-direct/range {v0 .. v5}, Lcom/dexcom/cgm/activities/notifications/PersistentNotificationBuilder;->setNotificationValues(ILjava/lang/String;Lcom/dexcom/cgm/h/a/a/e;Ljava/lang/String;Landroid/widget/RemoteViews;)V

    .line 138
    invoke-virtual {v7, v5}, Landroid/app/Notification$Builder;->setContent(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    .line 141
    sget v0, Lcom/dexcom/cgm/activities/R$drawable;->ic_persistent_notification:I

    invoke-virtual {v7, v0}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 145
    invoke-virtual {v7, v10}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    .line 151
    const/4 v0, 0x2

    invoke-virtual {v7, v0}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    .line 155
    invoke-virtual {v7, v10}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    .line 158
    invoke-virtual {v7, v9}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    .line 161
    const-string v0, "sys"

    invoke-virtual {v7, v0}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 164
    new-instance v5, Landroid/widget/RemoteViews;

    iget-object v0, p0, Lcom/dexcom/cgm/activities/notifications/PersistentNotificationBuilder;->m_context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    sget v8, Lcom/dexcom/cgm/activities/R$layout;->persistent_notification:I

    invoke-direct {v5, v0, v8}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    move-object v0, p0

    .line 168
    invoke-direct/range {v0 .. v5}, Lcom/dexcom/cgm/activities/notifications/PersistentNotificationBuilder;->setNotificationValues(ILjava/lang/String;Lcom/dexcom/cgm/h/a/a/e;Ljava/lang/String;Landroid/widget/RemoteViews;)V

    .line 171
    sget v0, Lcom/dexcom/cgm/activities/R$id;->notification_trend_graph:I

    iget-object v1, p0, Lcom/dexcom/cgm/activities/notifications/PersistentNotificationBuilder;->m_graphBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5, v0, v1}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 174
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/dexcom/cgm/activities/notifications/PersistentNotificationBuilder;->m_context:Landroid/content/Context;

    const-class v2, Lcom/dexcom/cgm/activities/TrendActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 175
    iget-object v1, p0, Lcom/dexcom/cgm/activities/notifications/PersistentNotificationBuilder;->m_context:Landroid/content/Context;

    const/high16 v2, 0x8000000

    invoke-static {v1, v9, v0, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 177
    invoke-virtual {v7, v0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 180
    invoke-static {}, Lcom/dexcom/cgm/k/a;->currentTimeMilliseconds()J

    move-result-wide v0

    invoke-virtual {v7, v0, v1}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    .line 184
    invoke-virtual {v7}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    .line 187
    iput-object v5, v1, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    .line 189
    iget-object v0, p0, Lcom/dexcom/cgm/activities/notifications/PersistentNotificationBuilder;->m_context:Landroid/content/Context;

    const-string v2, "notification"

    .line 190
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 196
    iget-boolean v2, p0, Lcom/dexcom/cgm/activities/notifications/PersistentNotificationBuilder;->m_persistentNotificationsAreOn:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/dexcom/cgm/activities/notifications/PersistentNotificationBuilder;->m_hasValidEgvBeenReceived:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/dexcom/cgm/activities/notifications/PersistentNotificationBuilder;->m_hasBeenLessThanThreeHoursSinceLastEgv:Z

    if-eqz v2, :cond_0

    .line 200
    invoke-virtual {v0, v11, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 208
    :goto_0
    invoke-interface {v6}, Lcom/dexcom/cgm/i/a;->getCurrentCgmStateInformation()Lcom/dexcom/cgm/h/a/b;

    move-result-object v0

    .line 207
    invoke-static {v0}, Lcom/dexcom/cgm/tech_support_logger/TechSupportLogger;->logQuickGlanceNotificationUpdate(Lcom/dexcom/cgm/h/a/b;)V

    .line 209
    return-void

    .line 204
    :cond_0
    invoke-virtual {v0, v11}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_0
.end method


# virtual methods
.method public evCgmData(Lcom/dexcom/cgm/h/e;)V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/notifications/PersistentNotificationBuilder;->drawGraphBasedOnSessionState()V

    .line 63
    return-void
.end method

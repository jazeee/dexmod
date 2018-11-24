.class public Lcom/dexcom/cgm/activities/TrendGraphFragment;
.super Landroid/support/v4/app/Fragment;
.source "TrendGraphFragment.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field private m_blackMsgText:Landroid/widget/TextView;

.field private m_bluetoothReceiver:Lcom/dexcom/cgm/activities/TrendGraphFragment$BluetoothChangeReceiver;

.field private m_context:Landroid/content/Context;

.field private m_graph:Lcom/dexcom/cgm/activities/TrendGraphView;

.field private m_graphCoverupMessage:Landroid/widget/LinearLayout;

.field private m_landscapeMode:Z

.field private m_listener:Landroid/view/View$OnTouchListener;

.field private m_magGlassCircle:Lcom/dexcom/cgm/activities/LandscapeMagGlassCircle;

.field private m_receiverRegistered:Z

.field private m_redMsgText:Landroid/widget/TextView;

.field private m_refreshCallback:Lcom/dexcom/cgm/h/c;

.field private m_sensorInsertionVideo:Lcom/dexcom/cgm/activities/HelpTip;

.field private m_shadingEnabled:Z

.field private m_timeScale:Lcom/dexcom/cgm/activities/TrendGraphTimeScale;

.field private m_twoMeterEntries:Lcom/dexcom/cgm/activities/HelpTip;

.field private m_view:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 53
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 62
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dexcom/cgm/activities/TrendGraphFragment;->m_listener:Landroid/view/View$OnTouchListener;

    .line 63
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dexcom/cgm/activities/TrendGraphFragment;->m_shadingEnabled:Z

    .line 64
    iput-boolean v1, p0, Lcom/dexcom/cgm/activities/TrendGraphFragment;->m_landscapeMode:Z

    .line 68
    iput-boolean v1, p0, Lcom/dexcom/cgm/activities/TrendGraphFragment;->m_receiverRegistered:Z

    .line 69
    new-instance v0, Lcom/dexcom/cgm/activities/TrendGraphFragment$1;

    invoke-direct {v0, p0}, Lcom/dexcom/cgm/activities/TrendGraphFragment$1;-><init>(Lcom/dexcom/cgm/activities/TrendGraphFragment;)V

    iput-object v0, p0, Lcom/dexcom/cgm/activities/TrendGraphFragment;->m_refreshCallback:Lcom/dexcom/cgm/h/c;

    .line 307
    sget-object v0, Lcom/dexcom/cgm/activities/TrendGraphTimeScale;->ThreeHours:Lcom/dexcom/cgm/activities/TrendGraphTimeScale;

    iput-object v0, p0, Lcom/dexcom/cgm/activities/TrendGraphFragment;->m_timeScale:Lcom/dexcom/cgm/activities/TrendGraphTimeScale;

    return-void
.end method

.method static synthetic access$000(Lcom/dexcom/cgm/activities/TrendGraphFragment;)V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/TrendGraphFragment;->refreshUi()V

    return-void
.end method

.method static synthetic access$1000(Lcom/dexcom/cgm/activities/TrendGraphFragment;)V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/TrendGraphFragment;->on24Hours()V

    return-void
.end method

.method static synthetic access$200(Lcom/dexcom/cgm/activities/TrendGraphFragment;)Landroid/view/View;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/dexcom/cgm/activities/TrendGraphFragment;->m_view:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$300(Lcom/dexcom/cgm/activities/TrendGraphFragment;)V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/TrendGraphFragment;->showTimeLoss()V

    return-void
.end method

.method static synthetic access$400(Lcom/dexcom/cgm/activities/TrendGraphFragment;)V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/TrendGraphFragment;->initializeTrendGraph()V

    return-void
.end method

.method static synthetic access$500(Lcom/dexcom/cgm/activities/TrendGraphFragment;)V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/TrendGraphFragment;->setFirstSessionMessaging()V

    return-void
.end method

.method static synthetic access$600(Lcom/dexcom/cgm/activities/TrendGraphFragment;)V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/TrendGraphFragment;->on1Hour()V

    return-void
.end method

.method static synthetic access$700(Lcom/dexcom/cgm/activities/TrendGraphFragment;)V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/TrendGraphFragment;->on3Hours()V

    return-void
.end method

.method static synthetic access$800(Lcom/dexcom/cgm/activities/TrendGraphFragment;)V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/TrendGraphFragment;->on6Hours()V

    return-void
.end method

.method static synthetic access$900(Lcom/dexcom/cgm/activities/TrendGraphFragment;)V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/TrendGraphFragment;->on12Hours()V

    return-void
.end method

.method private createViewForEvent(Lcom/dexcom/cgm/i/a/d;)Landroid/view/View;
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 483
    iget-object v0, p0, Lcom/dexcom/cgm/activities/TrendGraphFragment;->m_context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/dexcom/cgm/activities/R$layout;->landscape_event_lollipop:I

    .line 484
    invoke-virtual {v0, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 485
    sget v0, Lcom/dexcom/cgm/activities/R$id;->landscape_event_lollipop_text_view:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 488
    invoke-virtual {p1}, Lcom/dexcom/cgm/i/a/d;->getEventType()Lcom/dexcom/cgm/i/a/a/c;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/dexcom/cgm/activities/TrendGraphFragment;->getDrawableForEventType(Lcom/dexcom/cgm/i/a/a/c;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 491
    const/16 v3, 0x1e

    invoke-static {v3}, Lcom/dexcom/cgm/activities/DPPXConverter;->getPXFromDP(I)I

    move-result v3

    .line 493
    invoke-virtual {v2, v5, v5, v3, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 494
    invoke-virtual {v0, v4, v2, v4, v4}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 495
    invoke-direct {p0, p1}, Lcom/dexcom/cgm/activities/TrendGraphFragment;->getDisplayStringForEvent(Lcom/dexcom/cgm/i/a/d;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 497
    return-object v1
.end method

.method private dateStringFromUnixTimestamp(J)Ljava/lang/String;
    .locals 5

    .prologue
    .line 452
    const-string v0, "MMMM d, "

    .line 453
    iget-object v1, p0, Lcom/dexcom/cgm/activities/TrendGraphFragment;->m_context:Landroid/content/Context;

    invoke-static {v1}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 454
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "H:mm"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 458
    :goto_0
    new-instance v1, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 459
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 456
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "h:mm a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private deselectAllButtons()V
    .locals 1

    .prologue
    .line 419
    sget v0, Lcom/dexcom/cgm/activities/R$id;->one_hour_button:I

    invoke-direct {p0, v0}, Lcom/dexcom/cgm/activities/TrendGraphFragment;->deselectButtonWithID(I)V

    .line 420
    sget v0, Lcom/dexcom/cgm/activities/R$id;->three_hours_button:I

    invoke-direct {p0, v0}, Lcom/dexcom/cgm/activities/TrendGraphFragment;->deselectButtonWithID(I)V

    .line 421
    sget v0, Lcom/dexcom/cgm/activities/R$id;->six_hours_button:I

    invoke-direct {p0, v0}, Lcom/dexcom/cgm/activities/TrendGraphFragment;->deselectButtonWithID(I)V

    .line 422
    sget v0, Lcom/dexcom/cgm/activities/R$id;->twelve_hours_button:I

    invoke-direct {p0, v0}, Lcom/dexcom/cgm/activities/TrendGraphFragment;->deselectButtonWithID(I)V

    .line 423
    sget v0, Lcom/dexcom/cgm/activities/R$id;->twenty_four_hours_button:I

    invoke-direct {p0, v0}, Lcom/dexcom/cgm/activities/TrendGraphFragment;->deselectButtonWithID(I)V

    .line 424
    return-void
.end method

.method private deselectButtonWithID(I)V
    .locals 1

    .prologue
    .line 428
    invoke-direct {p0, p1}, Lcom/dexcom/cgm/activities/TrendGraphFragment;->getButtonWithID(I)Lcom/dexcom/cgm/activities/controls/LandscapeTimeButton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/controls/LandscapeTimeButton;->deselect()V

    .line 429
    return-void
.end method

.method private doGraph()V
    .locals 2

    .prologue
    .line 318
    iget-object v0, p0, Lcom/dexcom/cgm/activities/TrendGraphFragment;->m_graph:Lcom/dexcom/cgm/activities/TrendGraphView;

    if-eqz v0, :cond_0

    .line 320
    iget-object v0, p0, Lcom/dexcom/cgm/activities/TrendGraphFragment;->m_graph:Lcom/dexcom/cgm/activities/TrendGraphView;

    iget-object v1, p0, Lcom/dexcom/cgm/activities/TrendGraphFragment;->m_timeScale:Lcom/dexcom/cgm/activities/TrendGraphTimeScale;

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/TrendGraphView;->setTimeScale(Lcom/dexcom/cgm/activities/TrendGraphTimeScale;)V

    .line 321
    iget-object v0, p0, Lcom/dexcom/cgm/activities/TrendGraphFragment;->m_graph:Lcom/dexcom/cgm/activities/TrendGraphView;

    iget-boolean v1, p0, Lcom/dexcom/cgm/activities/TrendGraphFragment;->m_shadingEnabled:Z

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/TrendGraphView;->setShadingEnabled(Z)V

    .line 322
    iget-object v0, p0, Lcom/dexcom/cgm/activities/TrendGraphFragment;->m_graph:Lcom/dexcom/cgm/activities/TrendGraphView;

    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/TrendGraphView;->invalidate()V

    .line 324
    :cond_0
    return-void
.end method

.method private getButtonWithID(I)Lcom/dexcom/cgm/activities/controls/LandscapeTimeButton;
    .locals 1

    .prologue
    .line 433
    iget-object v0, p0, Lcom/dexcom/cgm/activities/TrendGraphFragment;->m_view:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/activities/controls/LandscapeTimeButton;

    return-object v0
.end method

.method private getDisplayStringForEvent(Lcom/dexcom/cgm/i/a/d;)Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 527
    invoke-virtual {p1}, Lcom/dexcom/cgm/i/a/d;->getEventType()Lcom/dexcom/cgm/i/a/a/c;

    move-result-object v0

    sget-object v1, Lcom/dexcom/cgm/i/a/a/c;->Exercise:Lcom/dexcom/cgm/i/a/a/c;

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/dexcom/cgm/i/a/d;->getEventType()Lcom/dexcom/cgm/i/a/a/c;

    move-result-object v0

    sget-object v1, Lcom/dexcom/cgm/i/a/a/c;->Health:Lcom/dexcom/cgm/i/a/a/c;

    if-ne v0, v1, :cond_2

    .line 530
    :cond_0
    sget-object v0, Lcom/dexcom/cgm/activities/TrendGraphFragment$8;->$SwitchMap$com$dexcom$cgm$presentation_supplement$model$enums$DexUserEventSubType:[I

    invoke-virtual {p1}, Lcom/dexcom/cgm/i/a/d;->getEventSubType()Lcom/dexcom/cgm/i/a/a/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dexcom/cgm/i/a/a/b;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 570
    :cond_1
    sget-object v0, Lcom/dexcom/cgm/activities/TrendGraphFragment$8;->$SwitchMap$com$dexcom$cgm$presentation_supplement$model$enums$DexUserEventType:[I

    invoke-virtual {p1}, Lcom/dexcom/cgm/i/a/d;->getEventType()Lcom/dexcom/cgm/i/a/a/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dexcom/cgm/i/a/a/c;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1

    .line 581
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid UserEvent: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/dexcom/cgm/i/a/d;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 533
    :pswitch_0
    sget v0, Lcom/dexcom/cgm/activities/R$string;->dex_event_entry_health_alcohol:I

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/TrendGraphFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 579
    :goto_0
    return-object v0

    .line 535
    :pswitch_1
    sget v0, Lcom/dexcom/cgm/activities/R$string;->dex_event_entry_health_cycle:I

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/TrendGraphFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 537
    :pswitch_2
    sget v0, Lcom/dexcom/cgm/activities/R$string;->dex_event_entry_health_illness:I

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/TrendGraphFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 539
    :pswitch_3
    sget v0, Lcom/dexcom/cgm/activities/R$string;->dex_event_entry_health_feel_low:I

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/TrendGraphFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 541
    :pswitch_4
    sget v0, Lcom/dexcom/cgm/activities/R$string;->dex_event_entry_health_feel_high:I

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/TrendGraphFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 543
    :pswitch_5
    sget v0, Lcom/dexcom/cgm/activities/R$string;->dex_event_entry_health_stress:I

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/TrendGraphFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 545
    :pswitch_6
    sget v0, Lcom/dexcom/cgm/activities/R$string;->dex_event_entry_exercise_intensity_light:I

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/TrendGraphFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 547
    :pswitch_7
    sget v0, Lcom/dexcom/cgm/activities/R$string;->dex_event_entry_exercise_intensity_medium:I

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/TrendGraphFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 549
    :pswitch_8
    sget v0, Lcom/dexcom/cgm/activities/R$string;->dex_event_entry_exercise_intensity_heavy:I

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/TrendGraphFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 553
    :cond_2
    invoke-virtual {p1}, Lcom/dexcom/cgm/i/a/d;->getEventValue()I

    move-result v0

    if-lez v0, :cond_1

    .line 555
    invoke-virtual {p1}, Lcom/dexcom/cgm/i/a/d;->getEventType()Lcom/dexcom/cgm/i/a/a/c;

    move-result-object v0

    sget-object v1, Lcom/dexcom/cgm/i/a/a/c;->Carbs:Lcom/dexcom/cgm/i/a/a/c;

    if-ne v0, v1, :cond_3

    .line 557
    sget v0, Lcom/dexcom/cgm/activities/R$string;->dex_landscape_trend_carbs:I

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/TrendGraphFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 558
    new-array v1, v7, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/dexcom/cgm/i/a/d;->getEventValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 560
    :cond_3
    invoke-virtual {p1}, Lcom/dexcom/cgm/i/a/d;->getEventType()Lcom/dexcom/cgm/i/a/a/c;

    move-result-object v0

    sget-object v1, Lcom/dexcom/cgm/i/a/a/c;->Insulin:Lcom/dexcom/cgm/i/a/a/c;

    if-ne v0, v1, :cond_1

    .line 562
    sget v0, Lcom/dexcom/cgm/activities/R$string;->dex_landscape_trend_insulin:I

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/TrendGraphFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 564
    new-instance v1, Ljava/math/BigDecimal;

    invoke-virtual {p1}, Lcom/dexcom/cgm/i/a/d;->getEventValue()I

    move-result v2

    int-to-double v2, v2

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    div-double/2addr v2, v4

    invoke-direct {v1, v2, v3}, Ljava/math/BigDecimal;-><init>(D)V

    .line 565
    const/4 v2, 0x2

    const/4 v3, 0x4

    invoke-virtual {v1, v2, v3}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v1

    .line 566
    new-array v2, v7, [Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v6

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 573
    :pswitch_9
    sget v0, Lcom/dexcom/cgm/activities/R$string;->dex_event_entry_carbs:I

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/TrendGraphFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 575
    :pswitch_a
    sget v0, Lcom/dexcom/cgm/activities/R$string;->dex_event_entry_insulin:I

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/TrendGraphFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 577
    :pswitch_b
    sget v0, Lcom/dexcom/cgm/activities/R$string;->dex_event_entry_exercise:I

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/TrendGraphFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 579
    :pswitch_c
    sget v0, Lcom/dexcom/cgm/activities/R$string;->dex_event_entry_health:I

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/TrendGraphFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 530
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
        :pswitch_8
    .end packed-switch

    .line 570
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method

.method private getDrawableForEventType(Lcom/dexcom/cgm/i/a/a/c;)Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 503
    sget-object v0, Lcom/dexcom/cgm/activities/TrendGraphFragment$8;->$SwitchMap$com$dexcom$cgm$presentation_supplement$model$enums$DexUserEventType:[I

    invoke-virtual {p1}, Lcom/dexcom/cgm/i/a/a/c;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 519
    sget v0, Lcom/dexcom/cgm/activities/R$drawable;->ic_exercise:I

    .line 521
    :goto_0
    iget-object v1, p0, Lcom/dexcom/cgm/activities/TrendGraphFragment;->m_context:Landroid/content/Context;

    invoke-static {v1, v0}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    .line 506
    :pswitch_0
    sget v0, Lcom/dexcom/cgm/activities/R$drawable;->ic_carbs:I

    goto :goto_0

    .line 509
    :pswitch_1
    sget v0, Lcom/dexcom/cgm/activities/R$drawable;->ic_insulin:I

    goto :goto_0

    .line 512
    :pswitch_2
    sget v0, Lcom/dexcom/cgm/activities/R$drawable;->ic_exercise:I

    goto :goto_0

    .line 515
    :pswitch_3
    sget v0, Lcom/dexcom/cgm/activities/R$drawable;->ic_health:I

    goto :goto_0

    .line 503
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private getMagGlassColorForEGV(I)I
    .locals 3

    .prologue
    .line 597
    invoke-static {}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->instance()Lcom/dexcom/cgm/activities/ActivitiesConnections;

    move-result-object v0

    .line 598
    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->getCgmPresentationExtension()Lcom/dexcom/cgm/i/a;

    move-result-object v0

    .line 599
    invoke-interface {v0}, Lcom/dexcom/cgm/i/a;->getActiveAlertSettings()Lcom/dexcom/cgm/i/a/a;

    move-result-object v1

    .line 601
    invoke-virtual {v1}, Lcom/dexcom/cgm/i/a/a;->getUserHigh()Lcom/dexcom/cgm/i/a/b;

    move-result-object v0

    .line 602
    invoke-virtual {v0}, Lcom/dexcom/cgm/i/a/b;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/dexcom/cgm/i/a/b;->getThreshold()I

    move-result v0

    .line 603
    :goto_0
    if-lt p1, v0, :cond_1

    .line 604
    sget v0, Lcom/dexcom/cgm/activities/R$color;->dex_yellow:I

    .line 612
    :goto_1
    return v0

    .line 602
    :cond_0
    const v0, 0x7fffffff

    goto :goto_0

    .line 607
    :cond_1
    invoke-virtual {v1}, Lcom/dexcom/cgm/i/a/a;->getUserLow()Lcom/dexcom/cgm/i/a/b;

    move-result-object v0

    .line 608
    invoke-virtual {v0}, Lcom/dexcom/cgm/i/a/b;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/dexcom/cgm/i/a/b;->getThreshold()I

    move-result v0

    .line 609
    :goto_2
    if-gt p1, v0, :cond_3

    .line 610
    sget v0, Lcom/dexcom/cgm/activities/R$color;->dex_red:I

    goto :goto_1

    .line 608
    :cond_2
    const/high16 v0, -0x80000000

    goto :goto_2

    .line 612
    :cond_3
    sget v0, Lcom/dexcom/cgm/activities/R$color;->dex_light_gray:I

    goto :goto_1
.end method

.method private hideEverything()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 202
    iget-object v0, p0, Lcom/dexcom/cgm/activities/TrendGraphFragment;->m_graph:Lcom/dexcom/cgm/activities/TrendGraphView;

    invoke-virtual {v0, v2}, Lcom/dexcom/cgm/activities/TrendGraphView;->setVisibility(I)V

    .line 203
    iget-object v0, p0, Lcom/dexcom/cgm/activities/TrendGraphFragment;->m_twoMeterEntries:Lcom/dexcom/cgm/activities/HelpTip;

    invoke-virtual {v0, v2}, Lcom/dexcom/cgm/activities/HelpTip;->setVisibility(I)V

    .line 204
    iget-object v0, p0, Lcom/dexcom/cgm/activities/TrendGraphFragment;->m_sensorInsertionVideo:Lcom/dexcom/cgm/activities/HelpTip;

    invoke-virtual {v0, v2}, Lcom/dexcom/cgm/activities/HelpTip;->setVisibility(I)V

    .line 205
    iget-object v0, p0, Lcom/dexcom/cgm/activities/TrendGraphFragment;->m_graphCoverupMessage:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 207
    iget-object v0, p0, Lcom/dexcom/cgm/activities/TrendGraphFragment;->m_blackMsgText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 208
    iget-object v0, p0, Lcom/dexcom/cgm/activities/TrendGraphFragment;->m_blackMsgText:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 209
    iget-object v0, p0, Lcom/dexcom/cgm/activities/TrendGraphFragment;->m_redMsgText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 210
    iget-object v0, p0, Lcom/dexcom/cgm/activities/TrendGraphFragment;->m_redMsgText:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 211
    return-void
.end method

.method private hideLollipop()V
    .locals 2

    .prologue
    .line 629
    iget-object v0, p0, Lcom/dexcom/cgm/activities/TrendGraphFragment;->m_view:Landroid/view/View;

    sget v1, Lcom/dexcom/cgm/activities/R$id;->landscape_lollipop_container:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 630
    iget-object v0, p0, Lcom/dexcom/cgm/activities/TrendGraphFragment;->m_view:Landroid/view/View;

    sget v1, Lcom/dexcom/cgm/activities/R$id;->landscape_event_lollipop_container:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 631
    return-void
.end method

.method private initializeTrendGraph()V
    .locals 2

    .prologue
    .line 302
    iget-object v0, p0, Lcom/dexcom/cgm/activities/TrendGraphFragment;->m_graphCoverupMessage:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 303
    iget-object v0, p0, Lcom/dexcom/cgm/activities/TrendGraphFragment;->m_graph:Lcom/dexcom/cgm/activities/TrendGraphView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/TrendGraphView;->setVisibility(I)V

    .line 304
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/TrendGraphFragment;->doGraph()V

    .line 305
    return-void
.end method

.method private on12Hours()V
    .locals 1

    .prologue
    .line 395
    sget v0, Lcom/dexcom/cgm/activities/R$id;->twelve_hours_button:I

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/TrendGraphFragment;->selectButtonWithID(I)V

    .line 396
    sget-object v0, Lcom/dexcom/cgm/activities/TrendGraphTimeScale;->TwelveHours:Lcom/dexcom/cgm/activities/TrendGraphTimeScale;

    invoke-direct {p0, v0}, Lcom/dexcom/cgm/activities/TrendGraphFragment;->setTimeScaleAndRefresh(Lcom/dexcom/cgm/activities/TrendGraphTimeScale;)V

    .line 397
    return-void
.end method

.method private on1Hour()V
    .locals 1

    .prologue
    .line 377
    sget v0, Lcom/dexcom/cgm/activities/R$id;->one_hour_button:I

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/TrendGraphFragment;->selectButtonWithID(I)V

    .line 378
    sget-object v0, Lcom/dexcom/cgm/activities/TrendGraphTimeScale;->OneHour:Lcom/dexcom/cgm/activities/TrendGraphTimeScale;

    invoke-direct {p0, v0}, Lcom/dexcom/cgm/activities/TrendGraphFragment;->setTimeScaleAndRefresh(Lcom/dexcom/cgm/activities/TrendGraphTimeScale;)V

    .line 379
    return-void
.end method

.method private on24Hours()V
    .locals 1

    .prologue
    .line 401
    sget v0, Lcom/dexcom/cgm/activities/R$id;->twenty_four_hours_button:I

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/TrendGraphFragment;->selectButtonWithID(I)V

    .line 402
    sget-object v0, Lcom/dexcom/cgm/activities/TrendGraphTimeScale;->TwentyFourHours:Lcom/dexcom/cgm/activities/TrendGraphTimeScale;

    invoke-direct {p0, v0}, Lcom/dexcom/cgm/activities/TrendGraphFragment;->setTimeScaleAndRefresh(Lcom/dexcom/cgm/activities/TrendGraphTimeScale;)V

    .line 403
    return-void
.end method

.method private on3Hours()V
    .locals 1

    .prologue
    .line 383
    sget v0, Lcom/dexcom/cgm/activities/R$id;->three_hours_button:I

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/TrendGraphFragment;->selectButtonWithID(I)V

    .line 384
    sget-object v0, Lcom/dexcom/cgm/activities/TrendGraphTimeScale;->ThreeHours:Lcom/dexcom/cgm/activities/TrendGraphTimeScale;

    invoke-direct {p0, v0}, Lcom/dexcom/cgm/activities/TrendGraphFragment;->setTimeScaleAndRefresh(Lcom/dexcom/cgm/activities/TrendGraphTimeScale;)V

    .line 385
    return-void
.end method

.method private on6Hours()V
    .locals 1

    .prologue
    .line 389
    sget v0, Lcom/dexcom/cgm/activities/R$id;->six_hours_button:I

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/TrendGraphFragment;->selectButtonWithID(I)V

    .line 390
    sget-object v0, Lcom/dexcom/cgm/activities/TrendGraphTimeScale;->SixHours:Lcom/dexcom/cgm/activities/TrendGraphTimeScale;

    invoke-direct {p0, v0}, Lcom/dexcom/cgm/activities/TrendGraphFragment;->setTimeScaleAndRefresh(Lcom/dexcom/cgm/activities/TrendGraphTimeScale;)V

    .line 391
    return-void
.end method

.method private refreshUi()V
    .locals 2

    .prologue
    .line 165
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/dexcom/cgm/activities/TrendGraphFragment$2;

    invoke-direct {v1, p0}, Lcom/dexcom/cgm/activities/TrendGraphFragment$2;-><init>(Lcom/dexcom/cgm/activities/TrendGraphFragment;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 198
    return-void
.end method

.method private registerReceivers()V
    .locals 3

    .prologue
    .line 700
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 701
    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 702
    iget-object v1, p0, Lcom/dexcom/cgm/activities/TrendGraphFragment;->m_context:Landroid/content/Context;

    iget-object v2, p0, Lcom/dexcom/cgm/activities/TrendGraphFragment;->m_bluetoothReceiver:Lcom/dexcom/cgm/activities/TrendGraphFragment$BluetoothChangeReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 703
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dexcom/cgm/activities/TrendGraphFragment;->m_receiverRegistered:Z

    .line 704
    return-void
.end method

.method private setFirstSessionMessaging()V
    .locals 2

    .prologue
    .line 224
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/TrendGraphFragment;->hideEverything()V

    .line 226
    sget-boolean v0, Lcom/dexcom/cgm/activities/TrendActivity;->THIS_CYCLE_LANDSCAPE:Z

    if-eqz v0, :cond_0

    .line 254
    :goto_0
    return-void

    .line 231
    :cond_0
    invoke-static {}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->instance()Lcom/dexcom/cgm/activities/ActivitiesConnections;

    move-result-object v0

    .line 232
    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->getCgmPresentationExtension()Lcom/dexcom/cgm/i/a;

    move-result-object v0

    .line 233
    invoke-interface {v0}, Lcom/dexcom/cgm/i/a;->getCurrentCgmStateInformation()Lcom/dexcom/cgm/h/a/b;

    move-result-object v0

    .line 234
    sget-object v1, Lcom/dexcom/cgm/activities/TrendGraphFragment$8;->$SwitchMap$com$dexcom$cgm$presentation$model$enums$DexDisplayState:[I

    invoke-virtual {v0}, Lcom/dexcom/cgm/h/a/b;->getDisplayState()Lcom/dexcom/cgm/h/a/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dexcom/cgm/h/a/a/b;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 251
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/TrendGraphFragment;->initializeTrendGraph()V

    goto :goto_0

    .line 237
    :pswitch_0
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/TrendGraphFragment;->showTransmitterPairingHelp()V

    goto :goto_0

    .line 241
    :pswitch_1
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/TrendGraphFragment;->showSensorInsertionHelp()V

    goto :goto_0

    .line 244
    :pswitch_2
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/TrendGraphFragment;->showStartUpHelp()V

    goto :goto_0

    .line 248
    :pswitch_3
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/TrendGraphFragment;->showCalibrationHelp()V

    goto :goto_0

    .line 234
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method private setTimeScaleAndRefresh(Lcom/dexcom/cgm/activities/TrendGraphTimeScale;)V
    .locals 0

    .prologue
    .line 407
    invoke-virtual {p0, p1}, Lcom/dexcom/cgm/activities/TrendGraphFragment;->setTimeScale(Lcom/dexcom/cgm/activities/TrendGraphTimeScale;)V

    .line 408
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/TrendGraphFragment;->refreshUi()V

    .line 409
    return-void
.end method

.method private setXCoordinateForView(ILandroid/view/View;II)V
    .locals 2

    .prologue
    .line 682
    const/16 v0, 0x50

    invoke-static {v0}, Lcom/dexcom/cgm/activities/DPPXConverter;->getPXFromDP(I)I

    move-result v0

    mul-int/2addr v0, p3

    .line 683
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/TrendGraphFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 684
    sub-int v0, v1, v0

    invoke-static {p4}, Lcom/dexcom/cgm/activities/DPPXConverter;->getPXFromDP(I)I

    move-result v1

    sub-int/2addr v0, v1

    .line 687
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int v1, p1, v1

    .line 689
    if-gez v1, :cond_1

    .line 690
    const/4 v0, 0x0

    move v1, v0

    .line 695
    :cond_0
    :goto_0
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 696
    return-void

    .line 692
    :cond_1
    if-le v1, v0, :cond_0

    move v1, v0

    .line 693
    goto :goto_0
.end method

.method private setXCoordinatesOfLollipops(II)V
    .locals 4

    .prologue
    .line 664
    iget-object v0, p0, Lcom/dexcom/cgm/activities/TrendGraphFragment;->m_view:Landroid/view/View;

    sget v1, Lcom/dexcom/cgm/activities/R$id;->landscape_lollipop_container:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 665
    iget-object v1, p0, Lcom/dexcom/cgm/activities/TrendGraphFragment;->m_view:Landroid/view/View;

    sget v2, Lcom/dexcom/cgm/activities/R$id;->landscape_event_lollipop_container:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 667
    const/4 v2, 0x1

    const/16 v3, 0xa

    invoke-direct {p0, p1, v0, v2, v3}, Lcom/dexcom/cgm/activities/TrendGraphFragment;->setXCoordinateForView(ILandroid/view/View;II)V

    .line 668
    const/16 v0, 0x14

    invoke-direct {p0, p1, v1, p2, v0}, Lcom/dexcom/cgm/activities/TrendGraphFragment;->setXCoordinateForView(ILandroid/view/View;II)V

    .line 669
    return-void
.end method

.method private setupHourButtons()V
    .locals 2

    .prologue
    .line 726
    iget-object v0, p0, Lcom/dexcom/cgm/activities/TrendGraphFragment;->m_view:Landroid/view/View;

    sget v1, Lcom/dexcom/cgm/activities/R$id;->one_hour_button:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/activities/controls/LandscapeTimeButton;

    .line 727
    new-instance v1, Lcom/dexcom/cgm/activities/TrendGraphFragment$3;

    invoke-direct {v1, p0}, Lcom/dexcom/cgm/activities/TrendGraphFragment$3;-><init>(Lcom/dexcom/cgm/activities/TrendGraphFragment;)V

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/controls/LandscapeTimeButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 735
    iget-object v0, p0, Lcom/dexcom/cgm/activities/TrendGraphFragment;->m_view:Landroid/view/View;

    sget v1, Lcom/dexcom/cgm/activities/R$id;->three_hours_button:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/activities/controls/LandscapeTimeButton;

    .line 736
    new-instance v1, Lcom/dexcom/cgm/activities/TrendGraphFragment$4;

    invoke-direct {v1, p0}, Lcom/dexcom/cgm/activities/TrendGraphFragment$4;-><init>(Lcom/dexcom/cgm/activities/TrendGraphFragment;)V

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/controls/LandscapeTimeButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 744
    iget-object v0, p0, Lcom/dexcom/cgm/activities/TrendGraphFragment;->m_view:Landroid/view/View;

    sget v1, Lcom/dexcom/cgm/activities/R$id;->six_hours_button:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/activities/controls/LandscapeTimeButton;

    .line 745
    new-instance v1, Lcom/dexcom/cgm/activities/TrendGraphFragment$5;

    invoke-direct {v1, p0}, Lcom/dexcom/cgm/activities/TrendGraphFragment$5;-><init>(Lcom/dexcom/cgm/activities/TrendGraphFragment;)V

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/controls/LandscapeTimeButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 753
    iget-object v0, p0, Lcom/dexcom/cgm/activities/TrendGraphFragment;->m_view:Landroid/view/View;

    sget v1, Lcom/dexcom/cgm/activities/R$id;->twelve_hours_button:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/activities/controls/LandscapeTimeButton;

    .line 754
    new-instance v1, Lcom/dexcom/cgm/activities/TrendGraphFragment$6;

    invoke-direct {v1, p0}, Lcom/dexcom/cgm/activities/TrendGraphFragment$6;-><init>(Lcom/dexcom/cgm/activities/TrendGraphFragment;)V

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/controls/LandscapeTimeButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 762
    iget-object v0, p0, Lcom/dexcom/cgm/activities/TrendGraphFragment;->m_view:Landroid/view/View;

    sget v1, Lcom/dexcom/cgm/activities/R$id;->twenty_four_hours_button:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/activities/controls/LandscapeTimeButton;

    .line 763
    new-instance v1, Lcom/dexcom/cgm/activities/TrendGraphFragment$7;

    invoke-direct {v1, p0}, Lcom/dexcom/cgm/activities/TrendGraphFragment$7;-><init>(Lcom/dexcom/cgm/activities/TrendGraphFragment;)V

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/controls/LandscapeTimeButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 771
    return-void
.end method

.method private showButtonsAgain()V
    .locals 2

    .prologue
    .line 446
    iget-object v0, p0, Lcom/dexcom/cgm/activities/TrendGraphFragment;->m_view:Landroid/view/View;

    sget v1, Lcom/dexcom/cgm/activities/R$id;->time_scale_buttons_container:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 447
    iget-object v0, p0, Lcom/dexcom/cgm/activities/TrendGraphFragment;->m_view:Landroid/view/View;

    sget v1, Lcom/dexcom/cgm/activities/R$id;->landscape_date_container:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 448
    return-void
.end method

.method private showCalibrationHelp()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 287
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/TrendGraphFragment;->hideEverything()V

    .line 289
    iget-object v0, p0, Lcom/dexcom/cgm/activities/TrendGraphFragment;->m_twoMeterEntries:Lcom/dexcom/cgm/activities/HelpTip;

    invoke-virtual {v0, v2}, Lcom/dexcom/cgm/activities/HelpTip;->setVisibility(I)V

    .line 291
    iget-object v0, p0, Lcom/dexcom/cgm/activities/TrendGraphFragment;->m_blackMsgText:Landroid/widget/TextView;

    sget v1, Lcom/dexcom/cgm/activities/R$string;->dex_first_session_calibration_message_2:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 292
    iget-object v0, p0, Lcom/dexcom/cgm/activities/TrendGraphFragment;->m_blackMsgText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 294
    iget-object v0, p0, Lcom/dexcom/cgm/activities/TrendGraphFragment;->m_redMsgText:Landroid/widget/TextView;

    sget v1, Lcom/dexcom/cgm/activities/R$string;->dex_first_session_calibration_message_3:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 295
    iget-object v0, p0, Lcom/dexcom/cgm/activities/TrendGraphFragment;->m_redMsgText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 297
    iget-object v0, p0, Lcom/dexcom/cgm/activities/TrendGraphFragment;->m_graphCoverupMessage:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 298
    return-void
.end method

.method private showEventLollipop()V
    .locals 2

    .prologue
    .line 623
    iget-object v0, p0, Lcom/dexcom/cgm/activities/TrendGraphFragment;->m_view:Landroid/view/View;

    sget v1, Lcom/dexcom/cgm/activities/R$id;->landscape_lollipop_container:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 624
    iget-object v0, p0, Lcom/dexcom/cgm/activities/TrendGraphFragment;->m_view:Landroid/view/View;

    sget v1, Lcom/dexcom/cgm/activities/R$id;->landscape_event_lollipop_container:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 625
    return-void
.end method

.method private showEventsForEGVIfNeeded(Lcom/dexcom/cgm/h/a/c;)V
    .locals 3

    .prologue
    .line 464
    invoke-virtual {p0, p1}, Lcom/dexcom/cgm/activities/TrendGraphFragment;->getUserEventsForEGV(Lcom/dexcom/cgm/h/a/c;)Ljava/util/List;

    move-result-object v1

    .line 466
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 478
    :goto_0
    return-void

    .line 469
    :cond_0
    iget-object v0, p0, Lcom/dexcom/cgm/activities/TrendGraphFragment;->m_view:Landroid/view/View;

    sget v2, Lcom/dexcom/cgm/activities/R$id;->landscape_event_lollipop_container:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 471
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 473
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dexcom/cgm/i/a/d;

    .line 475
    invoke-direct {p0, v1}, Lcom/dexcom/cgm/activities/TrendGraphFragment;->createViewForEvent(Lcom/dexcom/cgm/i/a/d;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_1

    .line 477
    :cond_1
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/TrendGraphFragment;->showEventLollipop()V

    goto :goto_0
.end method

.method private showLollipop()V
    .locals 2

    .prologue
    .line 617
    iget-object v0, p0, Lcom/dexcom/cgm/activities/TrendGraphFragment;->m_view:Landroid/view/View;

    sget v1, Lcom/dexcom/cgm/activities/R$id;->landscape_lollipop_container:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 618
    iget-object v0, p0, Lcom/dexcom/cgm/activities/TrendGraphFragment;->m_view:Landroid/view/View;

    sget v1, Lcom/dexcom/cgm/activities/R$id;->landscape_event_lollipop_container:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 619
    return-void
.end method

.method private showLollipopForEGV(Lcom/dexcom/cgm/h/a/c;)V
    .locals 2

    .prologue
    .line 587
    new-instance v0, Lcom/dexcom/cgm/activities/MagGlassState$Builder;

    invoke-direct {v0}, Lcom/dexcom/cgm/activities/MagGlassState$Builder;-><init>()V

    .line 588
    invoke-virtual {p1}, Lcom/dexcom/cgm/h/a/c;->getGlucoseValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/MagGlassState$Builder;->egv(I)Lcom/dexcom/cgm/activities/MagGlassState$Builder;

    move-result-object v0

    .line 589
    invoke-virtual {p1}, Lcom/dexcom/cgm/h/a/c;->getGlucoseValue()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/dexcom/cgm/activities/TrendGraphFragment;->getMagGlassColorForEGV(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/MagGlassState$Builder;->circleColor(I)Lcom/dexcom/cgm/activities/MagGlassState$Builder;

    move-result-object v0

    .line 590
    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/MagGlassState$Builder;->build()Lcom/dexcom/cgm/activities/MagGlassState;

    move-result-object v0

    .line 591
    iget-object v1, p0, Lcom/dexcom/cgm/activities/TrendGraphFragment;->m_magGlassCircle:Lcom/dexcom/cgm/activities/LandscapeMagGlassCircle;

    invoke-virtual {v1, v0}, Lcom/dexcom/cgm/activities/LandscapeMagGlassCircle;->setMagGlassState(Lcom/dexcom/cgm/activities/MagGlassState;)V

    .line 592
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/TrendGraphFragment;->showLollipop()V

    .line 593
    return-void
.end method

.method private showSensorInsertionHelp()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 269
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/TrendGraphFragment;->hideEverything()V

    .line 271
    iget-object v0, p0, Lcom/dexcom/cgm/activities/TrendGraphFragment;->m_sensorInsertionVideo:Lcom/dexcom/cgm/activities/HelpTip;

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/HelpTip;->setVisibility(I)V

    .line 272
    iget-object v0, p0, Lcom/dexcom/cgm/activities/TrendGraphFragment;->m_graphCoverupMessage:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 273
    return-void
.end method

.method private showStartUpHelp()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 277
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/TrendGraphFragment;->hideEverything()V

    .line 279
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\n\n"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v1, Lcom/dexcom/cgm/activities/R$string;->dex_first_session_warmup_message:I

    invoke-virtual {p0, v1}, Lcom/dexcom/cgm/activities/TrendGraphFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 280
    iget-object v1, p0, Lcom/dexcom/cgm/activities/TrendGraphFragment;->m_blackMsgText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 281
    iget-object v0, p0, Lcom/dexcom/cgm/activities/TrendGraphFragment;->m_blackMsgText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 282
    iget-object v0, p0, Lcom/dexcom/cgm/activities/TrendGraphFragment;->m_graphCoverupMessage:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 283
    return-void
.end method

.method private showTimeInsteadOfButtons(J)V
    .locals 3

    .prologue
    .line 438
    iget-object v0, p0, Lcom/dexcom/cgm/activities/TrendGraphFragment;->m_view:Landroid/view/View;

    sget v1, Lcom/dexcom/cgm/activities/R$id;->landscape_date:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 439
    invoke-direct {p0, p1, p2}, Lcom/dexcom/cgm/activities/TrendGraphFragment;->dateStringFromUnixTimestamp(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 440
    iget-object v0, p0, Lcom/dexcom/cgm/activities/TrendGraphFragment;->m_view:Landroid/view/View;

    sget v1, Lcom/dexcom/cgm/activities/R$id;->time_scale_buttons_container:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 441
    iget-object v0, p0, Lcom/dexcom/cgm/activities/TrendGraphFragment;->m_view:Landroid/view/View;

    sget v1, Lcom/dexcom/cgm/activities/R$id;->landscape_date_container:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 442
    return-void
.end method

.method private showTimeLoss()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 215
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/TrendGraphFragment;->hideEverything()V

    .line 217
    iget-object v0, p0, Lcom/dexcom/cgm/activities/TrendGraphFragment;->m_graphCoverupMessage:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 218
    iget-object v0, p0, Lcom/dexcom/cgm/activities/TrendGraphFragment;->m_blackMsgText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 219
    iget-object v0, p0, Lcom/dexcom/cgm/activities/TrendGraphFragment;->m_blackMsgText:Landroid/widget/TextView;

    sget v1, Lcom/dexcom/cgm/activities/R$string;->main_screen_error_text_18:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 220
    return-void
.end method

.method private showTransmitterPairingHelp()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 258
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/TrendGraphFragment;->hideEverything()V

    .line 260
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\n\n"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v1, Lcom/dexcom/cgm/activities/R$string;->dex_pairing_tx_device_30_minutes:I

    invoke-virtual {p0, v1}, Lcom/dexcom/cgm/activities/TrendGraphFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/dexcom/cgm/activities/R$string;->dex_first_session_pairing_info:I

    .line 261
    invoke-virtual {p0, v1}, Lcom/dexcom/cgm/activities/TrendGraphFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 262
    iget-object v1, p0, Lcom/dexcom/cgm/activities/TrendGraphFragment;->m_blackMsgText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 263
    iget-object v0, p0, Lcom/dexcom/cgm/activities/TrendGraphFragment;->m_blackMsgText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 264
    iget-object v0, p0, Lcom/dexcom/cgm/activities/TrendGraphFragment;->m_graphCoverupMessage:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 265
    return-void
.end method

.method private unregisterReceivers()V
    .locals 2

    .prologue
    .line 708
    iget-boolean v0, p0, Lcom/dexcom/cgm/activities/TrendGraphFragment;->m_receiverRegistered:Z

    if-eqz v0, :cond_0

    .line 710
    iget-object v0, p0, Lcom/dexcom/cgm/activities/TrendGraphFragment;->m_context:Landroid/content/Context;

    iget-object v1, p0, Lcom/dexcom/cgm/activities/TrendGraphFragment;->m_bluetoothReceiver:Lcom/dexcom/cgm/activities/TrendGraphFragment$BluetoothChangeReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 712
    :cond_0
    return-void
.end method


# virtual methods
.method public getUserEventsForEGV(Lcom/dexcom/cgm/h/a/c;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dexcom/cgm/h/a/c;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/dexcom/cgm/i/a/d;",
            ">;"
        }
    .end annotation

    .prologue
    .line 338
    iget-object v0, p0, Lcom/dexcom/cgm/activities/TrendGraphFragment;->m_graph:Lcom/dexcom/cgm/activities/TrendGraphView;

    invoke-virtual {v0, p1}, Lcom/dexcom/cgm/activities/TrendGraphView;->getUserEventsForEGV(Lcom/dexcom/cgm/h/a/c;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getXCoordinateForEGV(Lcom/dexcom/cgm/h/a/c;)I
    .locals 1

    .prologue
    .line 343
    iget-object v0, p0, Lcom/dexcom/cgm/activities/TrendGraphFragment;->m_graph:Lcom/dexcom/cgm/activities/TrendGraphView;

    invoke-virtual {v0, p1}, Lcom/dexcom/cgm/activities/TrendGraphView;->getXCoordinateForEGV(Lcom/dexcom/cgm/h/a/c;)I

    move-result v0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 81
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 82
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/TrendGraphFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/activities/TrendGraphFragment;->m_context:Landroid/content/Context;

    .line 83
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/TrendGraphFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 85
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dexcom/cgm/activities/TrendGraphFragment;->m_landscapeMode:Z

    .line 86
    new-instance v0, Lcom/dexcom/cgm/activities/LandscapeMagGlassCircle;

    iget-object v1, p0, Lcom/dexcom/cgm/activities/TrendGraphFragment;->m_context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/dexcom/cgm/activities/LandscapeMagGlassCircle;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/dexcom/cgm/activities/TrendGraphFragment;->m_magGlassCircle:Lcom/dexcom/cgm/activities/LandscapeMagGlassCircle;

    .line 88
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 96
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/Fragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 98
    iget-boolean v0, p0, Lcom/dexcom/cgm/activities/TrendGraphFragment;->m_landscapeMode:Z

    if-eqz v0, :cond_0

    .line 100
    sget v0, Lcom/dexcom/cgm/activities/R$layout;->fragment_landscape_trend_graph:I

    invoke-virtual {p1, v0, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/activities/TrendGraphFragment;->m_view:Landroid/view/View;

    .line 101
    iget-object v0, p0, Lcom/dexcom/cgm/activities/TrendGraphFragment;->m_view:Landroid/view/View;

    sget v1, Lcom/dexcom/cgm/activities/R$id;->landscape_lollipop_container:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 103
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 105
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 107
    const/16 v1, 0x11

    iput v1, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 108
    iget-object v1, p0, Lcom/dexcom/cgm/activities/TrendGraphFragment;->m_magGlassCircle:Lcom/dexcom/cgm/activities/LandscapeMagGlassCircle;

    invoke-virtual {v1, v2}, Lcom/dexcom/cgm/activities/LandscapeMagGlassCircle;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 109
    iget-object v1, p0, Lcom/dexcom/cgm/activities/TrendGraphFragment;->m_magGlassCircle:Lcom/dexcom/cgm/activities/LandscapeMagGlassCircle;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 110
    invoke-virtual {p0, p0}, Lcom/dexcom/cgm/activities/TrendGraphFragment;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 111
    invoke-virtual {p0, v3}, Lcom/dexcom/cgm/activities/TrendGraphFragment;->setShadingEnabled(Z)V

    .line 112
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/TrendGraphFragment;->setupHourButtons()V

    .line 120
    :goto_0
    iget-object v0, p0, Lcom/dexcom/cgm/activities/TrendGraphFragment;->m_view:Landroid/view/View;

    sget v1, Lcom/dexcom/cgm/activities/R$id;->trend_graph_cover_up:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/dexcom/cgm/activities/TrendGraphFragment;->m_graphCoverupMessage:Landroid/widget/LinearLayout;

    .line 122
    iget-object v0, p0, Lcom/dexcom/cgm/activities/TrendGraphFragment;->m_view:Landroid/view/View;

    sget v1, Lcom/dexcom/cgm/activities/R$id;->trend_graph_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/activities/TrendGraphView;

    iput-object v0, p0, Lcom/dexcom/cgm/activities/TrendGraphFragment;->m_graph:Lcom/dexcom/cgm/activities/TrendGraphView;

    .line 123
    iget-object v0, p0, Lcom/dexcom/cgm/activities/TrendGraphFragment;->m_graph:Lcom/dexcom/cgm/activities/TrendGraphView;

    iget-object v1, p0, Lcom/dexcom/cgm/activities/TrendGraphFragment;->m_listener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/TrendGraphView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 125
    iget-object v0, p0, Lcom/dexcom/cgm/activities/TrendGraphFragment;->m_view:Landroid/view/View;

    sget v1, Lcom/dexcom/cgm/activities/R$id;->trend_graph_cover_up_black_msg:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dexcom/cgm/activities/TrendGraphFragment;->m_blackMsgText:Landroid/widget/TextView;

    .line 126
    iget-object v0, p0, Lcom/dexcom/cgm/activities/TrendGraphFragment;->m_view:Landroid/view/View;

    sget v1, Lcom/dexcom/cgm/activities/R$id;->trend_graph_cover_up_red_msg:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dexcom/cgm/activities/TrendGraphFragment;->m_redMsgText:Landroid/widget/TextView;

    .line 127
    iget-object v0, p0, Lcom/dexcom/cgm/activities/TrendGraphFragment;->m_view:Landroid/view/View;

    sget v1, Lcom/dexcom/cgm/activities/R$id;->sensor_insertion_video_help_tip:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/activities/HelpTip;

    iput-object v0, p0, Lcom/dexcom/cgm/activities/TrendGraphFragment;->m_sensorInsertionVideo:Lcom/dexcom/cgm/activities/HelpTip;

    .line 129
    iget-object v0, p0, Lcom/dexcom/cgm/activities/TrendGraphFragment;->m_view:Landroid/view/View;

    sget v1, Lcom/dexcom/cgm/activities/R$id;->two_meter_entries_help_tip:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/activities/HelpTip;

    iput-object v0, p0, Lcom/dexcom/cgm/activities/TrendGraphFragment;->m_twoMeterEntries:Lcom/dexcom/cgm/activities/HelpTip;

    .line 130
    new-instance v0, Lcom/dexcom/cgm/activities/TrendGraphFragment$BluetoothChangeReceiver;

    invoke-direct {v0, p0, v4}, Lcom/dexcom/cgm/activities/TrendGraphFragment$BluetoothChangeReceiver;-><init>(Lcom/dexcom/cgm/activities/TrendGraphFragment;Lcom/dexcom/cgm/activities/TrendGraphFragment$1;)V

    iput-object v0, p0, Lcom/dexcom/cgm/activities/TrendGraphFragment;->m_bluetoothReceiver:Lcom/dexcom/cgm/activities/TrendGraphFragment$BluetoothChangeReceiver;

    .line 131
    iget-object v0, p0, Lcom/dexcom/cgm/activities/TrendGraphFragment;->m_view:Landroid/view/View;

    return-object v0

    .line 116
    :cond_0
    sget v0, Lcom/dexcom/cgm/activities/R$layout;->fragment_trend_graph:I

    invoke-virtual {p1, v0, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/activities/TrendGraphFragment;->m_view:Landroid/view/View;

    .line 117
    invoke-virtual {p0, v4}, Lcom/dexcom/cgm/activities/TrendGraphFragment;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 118
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/TrendGraphFragment;->setShadingEnabled(Z)V

    goto :goto_0
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 367
    iget-object v0, p0, Lcom/dexcom/cgm/activities/TrendGraphFragment;->m_graph:Lcom/dexcom/cgm/activities/TrendGraphView;

    if-eqz v0, :cond_0

    .line 369
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dexcom/cgm/activities/TrendGraphFragment;->m_graph:Lcom/dexcom/cgm/activities/TrendGraphView;

    .line 371
    :cond_0
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroyView()V

    .line 372
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 157
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onPause()V

    .line 158
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/TrendGraphFragment;->unregisterReceivers()V

    .line 159
    invoke-static {}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->instance()Lcom/dexcom/cgm/activities/ActivitiesConnections;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->getCgmPresentationExtension()Lcom/dexcom/cgm/i/a;

    move-result-object v0

    iget-object v1, p0, Lcom/dexcom/cgm/activities/TrendGraphFragment;->m_refreshCallback:Lcom/dexcom/cgm/h/c;

    invoke-interface {v0, v1}, Lcom/dexcom/cgm/i/a;->unregisterCgmDataUpdateCallback(Lcom/dexcom/cgm/h/c;)V

    .line 161
    return-void
.end method

.method public onReleaseTap()V
    .locals 1

    .prologue
    .line 348
    iget-object v0, p0, Lcom/dexcom/cgm/activities/TrendGraphFragment;->m_graph:Lcom/dexcom/cgm/activities/TrendGraphView;

    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/TrendGraphView;->onReleaseTap()V

    .line 349
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 137
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 139
    iget-boolean v0, p0, Lcom/dexcom/cgm/activities/TrendGraphFragment;->m_landscapeMode:Z

    if-nez v0, :cond_0

    .line 141
    sget-object v0, Lcom/dexcom/cgm/activities/TrendGraphTimeScale;->ThreeHours:Lcom/dexcom/cgm/activities/TrendGraphTimeScale;

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/TrendGraphFragment;->setTimeScale(Lcom/dexcom/cgm/activities/TrendGraphTimeScale;)V

    .line 142
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/TrendGraphFragment;->registerReceivers()V

    .line 149
    :goto_0
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/TrendGraphFragment;->refreshUi()V

    .line 150
    invoke-static {}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->instance()Lcom/dexcom/cgm/activities/ActivitiesConnections;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->getCgmPresentationExtension()Lcom/dexcom/cgm/i/a;

    move-result-object v0

    iget-object v1, p0, Lcom/dexcom/cgm/activities/TrendGraphFragment;->m_refreshCallback:Lcom/dexcom/cgm/h/c;

    invoke-interface {v0, v1}, Lcom/dexcom/cgm/i/a;->registerCgmDataUpdateCallback(Lcom/dexcom/cgm/h/c;)V

    .line 152
    return-void

    .line 146
    :cond_0
    sget v0, Lcom/dexcom/cgm/activities/R$id;->twelve_hours_button:I

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/TrendGraphFragment;->selectButtonWithID(I)V

    .line 147
    sget-object v0, Lcom/dexcom/cgm/activities/TrendGraphTimeScale;->TwelveHours:Lcom/dexcom/cgm/activities/TrendGraphTimeScale;

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/TrendGraphFragment;->setTimeScale(Lcom/dexcom/cgm/activities/TrendGraphTimeScale;)V

    goto :goto_0
.end method

.method public onTap(I)Lcom/dexcom/cgm/h/a/c;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 332
    iget-object v0, p0, Lcom/dexcom/cgm/activities/TrendGraphFragment;->m_graph:Lcom/dexcom/cgm/activities/TrendGraphView;

    invoke-virtual {v0, p1}, Lcom/dexcom/cgm/activities/TrendGraphView;->onTap(I)Lcom/dexcom/cgm/h/a/c;

    move-result-object v0

    .line 333
    return-object v0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 636
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 638
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p0, v1}, Lcom/dexcom/cgm/activities/TrendGraphFragment;->onTap(I)Lcom/dexcom/cgm/h/a/c;

    move-result-object v1

    .line 639
    if-nez v1, :cond_1

    .line 659
    :goto_0
    return v0

    .line 642
    :cond_1
    invoke-virtual {v1}, Lcom/dexcom/cgm/h/a/c;->getSystemTimeStamp()Lcom/dexcom/cgm/k/j;

    move-result-object v2

    invoke-virtual {v2}, Lcom/dexcom/cgm/k/j;->getTimeInSeconds()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/dexcom/cgm/activities/TrendGraphFragment;->showTimeInsteadOfButtons(J)V

    .line 644
    invoke-direct {p0, v1}, Lcom/dexcom/cgm/activities/TrendGraphFragment;->showLollipopForEGV(Lcom/dexcom/cgm/h/a/c;)V

    .line 645
    invoke-direct {p0, v1}, Lcom/dexcom/cgm/activities/TrendGraphFragment;->showEventsForEGVIfNeeded(Lcom/dexcom/cgm/h/a/c;)V

    .line 646
    invoke-virtual {p0, v1}, Lcom/dexcom/cgm/activities/TrendGraphFragment;->getXCoordinateForEGV(Lcom/dexcom/cgm/h/a/c;)I

    move-result v2

    .line 647
    invoke-virtual {p0, v1}, Lcom/dexcom/cgm/activities/TrendGraphFragment;->getUserEventsForEGV(Lcom/dexcom/cgm/h/a/c;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 648
    invoke-direct {p0, v2, v1}, Lcom/dexcom/cgm/activities/TrendGraphFragment;->setXCoordinatesOfLollipops(II)V

    goto :goto_0

    .line 652
    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_3

    .line 654
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/TrendGraphFragment;->onReleaseTap()V

    .line 655
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/TrendGraphFragment;->showButtonsAgain()V

    .line 656
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/TrendGraphFragment;->hideLollipop()V

    goto :goto_0

    .line 659
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public selectButtonWithID(I)V
    .locals 1

    .prologue
    .line 413
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/TrendGraphFragment;->deselectAllButtons()V

    .line 414
    invoke-direct {p0, p1}, Lcom/dexcom/cgm/activities/TrendGraphFragment;->getButtonWithID(I)Lcom/dexcom/cgm/activities/controls/LandscapeTimeButton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/controls/LandscapeTimeButton;->select()V

    .line 415
    return-void
.end method

.method public setOnTouchListener(Landroid/view/View$OnTouchListener;)V
    .locals 0

    .prologue
    .line 353
    iput-object p1, p0, Lcom/dexcom/cgm/activities/TrendGraphFragment;->m_listener:Landroid/view/View$OnTouchListener;

    .line 354
    return-void
.end method

.method public setShadingEnabled(Z)V
    .locals 0

    .prologue
    .line 361
    iput-boolean p1, p0, Lcom/dexcom/cgm/activities/TrendGraphFragment;->m_shadingEnabled:Z

    .line 362
    return-void
.end method

.method public setTimeScale(Lcom/dexcom/cgm/activities/TrendGraphTimeScale;)V
    .locals 0

    .prologue
    .line 311
    iput-object p1, p0, Lcom/dexcom/cgm/activities/TrendGraphFragment;->m_timeScale:Lcom/dexcom/cgm/activities/TrendGraphTimeScale;

    .line 312
    return-void
.end method

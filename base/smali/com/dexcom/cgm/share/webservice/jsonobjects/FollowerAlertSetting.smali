.class public Lcom/dexcom/cgm/share/webservice/jsonobjects/FollowerAlertSetting;
.super Ljava/lang/Object;
.source "FollowerAlertSetting.java"


# instance fields
.field private AlarmDelay:Ljava/lang/String;

.field private AlertType:I

.field private IsEnabled:Z

.field private MaxValue:I

.field private MinValue:I

.field private RealarmDelay:Ljava/lang/String;

.field private Sound:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/16 v0, 0x191

    iput v0, p0, Lcom/dexcom/cgm/share/webservice/jsonobjects/FollowerAlertSetting;->MaxValue:I

    .line 42
    const/16 v0, 0x27

    iput v0, p0, Lcom/dexcom/cgm/share/webservice/jsonobjects/FollowerAlertSetting;->MinValue:I

    return-void
.end method

.method private getISO8601Duration(I)Ljava/lang/String;
    .locals 4

    .prologue
    .line 122
    div-int/lit8 v0, p1, 0x3c

    .line 123
    rem-int/lit8 v1, p1, 0x3c

    .line 124
    if-lez v0, :cond_0

    .line 125
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "PT"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "H"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "M"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 127
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "PT"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "M"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public getDelayInMinutes()I
    .locals 4

    .prologue
    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/dexcom/cgm/share/webservice/jsonobjects/FollowerAlertSetting;->AlarmDelay:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/1970-01-01T00:00:00Z"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/joda/time/Interval;->parse(Ljava/lang/String;)Lorg/joda/time/Interval;

    move-result-object v0

    .line 84
    invoke-virtual {v0}, Lorg/joda/time/Interval;->getEndMillis()J

    move-result-wide v2

    invoke-virtual {v0}, Lorg/joda/time/Interval;->getStartMillis()J

    move-result-wide v0

    sub-long v0, v2, v0

    .line 85
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/TimeUnit;->toMinutes(J)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public getThreshold()I
    .locals 2

    .prologue
    .line 71
    iget v0, p0, Lcom/dexcom/cgm/share/webservice/jsonobjects/FollowerAlertSetting;->AlertType:I

    sget-object v1, Lcom/dexcom/cgm/share/webservice/jsonobjects/FollowerAlertSetting$ServerAlertType;->UrgentLow:Lcom/dexcom/cgm/share/webservice/jsonobjects/FollowerAlertSetting$ServerAlertType;

    invoke-virtual {v1}, Lcom/dexcom/cgm/share/webservice/jsonobjects/FollowerAlertSetting$ServerAlertType;->getType()I

    move-result v1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/dexcom/cgm/share/webservice/jsonobjects/FollowerAlertSetting;->AlertType:I

    sget-object v1, Lcom/dexcom/cgm/share/webservice/jsonobjects/FollowerAlertSetting$ServerAlertType;->Low:Lcom/dexcom/cgm/share/webservice/jsonobjects/FollowerAlertSetting$ServerAlertType;

    .line 72
    invoke-virtual {v1}, Lcom/dexcom/cgm/share/webservice/jsonobjects/FollowerAlertSetting$ServerAlertType;->getType()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 73
    :cond_0
    iget v0, p0, Lcom/dexcom/cgm/share/webservice/jsonobjects/FollowerAlertSetting;->MaxValue:I

    .line 77
    :goto_0
    return v0

    .line 74
    :cond_1
    iget v0, p0, Lcom/dexcom/cgm/share/webservice/jsonobjects/FollowerAlertSetting;->AlertType:I

    sget-object v1, Lcom/dexcom/cgm/share/webservice/jsonobjects/FollowerAlertSetting$ServerAlertType;->High:Lcom/dexcom/cgm/share/webservice/jsonobjects/FollowerAlertSetting$ServerAlertType;

    invoke-virtual {v1}, Lcom/dexcom/cgm/share/webservice/jsonobjects/FollowerAlertSetting$ServerAlertType;->getType()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 75
    iget v0, p0, Lcom/dexcom/cgm/share/webservice/jsonobjects/FollowerAlertSetting;->MinValue:I

    goto :goto_0

    .line 77
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/dexcom/cgm/share/webservice/jsonobjects/FollowerAlertSetting;->IsEnabled:Z

    return v0
.end method

.method public setAlarmDelay(I)V
    .locals 1

    .prologue
    .line 107
    invoke-direct {p0, p1}, Lcom/dexcom/cgm/share/webservice/jsonobjects/FollowerAlertSetting;->getISO8601Duration(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/share/webservice/jsonobjects/FollowerAlertSetting;->AlarmDelay:Ljava/lang/String;

    .line 108
    return-void
.end method

.method public setAlertType(Lcom/dexcom/cgm/share/webservice/jsonobjects/FollowerAlertSetting$ServerAlertType;)V
    .locals 1

    .prologue
    .line 90
    invoke-virtual {p1}, Lcom/dexcom/cgm/share/webservice/jsonobjects/FollowerAlertSetting$ServerAlertType;->getType()I

    move-result v0

    iput v0, p0, Lcom/dexcom/cgm/share/webservice/jsonobjects/FollowerAlertSetting;->AlertType:I

    .line 91
    return-void
.end method

.method public setEnabled(Z)V
    .locals 0

    .prologue
    .line 66
    iput-boolean p1, p0, Lcom/dexcom/cgm/share/webservice/jsonobjects/FollowerAlertSetting;->IsEnabled:Z

    .line 67
    return-void
.end method

.method public setMaxValue(I)V
    .locals 1

    .prologue
    .line 95
    const/16 v0, 0x27

    iput v0, p0, Lcom/dexcom/cgm/share/webservice/jsonobjects/FollowerAlertSetting;->MinValue:I

    .line 96
    iput p1, p0, Lcom/dexcom/cgm/share/webservice/jsonobjects/FollowerAlertSetting;->MaxValue:I

    .line 97
    return-void
.end method

.method public setMinValue(I)V
    .locals 1

    .prologue
    .line 101
    const/16 v0, 0x191

    iput v0, p0, Lcom/dexcom/cgm/share/webservice/jsonobjects/FollowerAlertSetting;->MaxValue:I

    .line 102
    iput p1, p0, Lcom/dexcom/cgm/share/webservice/jsonobjects/FollowerAlertSetting;->MinValue:I

    .line 103
    return-void
.end method

.method public setRealarmDelay(I)V
    .locals 1

    .prologue
    .line 112
    invoke-direct {p0, p1}, Lcom/dexcom/cgm/share/webservice/jsonobjects/FollowerAlertSetting;->getISO8601Duration(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/share/webservice/jsonobjects/FollowerAlertSetting;->RealarmDelay:Ljava/lang/String;

    .line 113
    return-void
.end method

.method public setSound(Lcom/dexcom/cgm/share/webservice/jsonobjects/FollowerAlertSetting$ServerAlertSound;)V
    .locals 1

    .prologue
    .line 117
    invoke-virtual {p1}, Lcom/dexcom/cgm/share/webservice/jsonobjects/FollowerAlertSetting$ServerAlertSound;->getSound()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/share/webservice/jsonobjects/FollowerAlertSetting;->Sound:Ljava/lang/String;

    .line 118
    return-void
.end method

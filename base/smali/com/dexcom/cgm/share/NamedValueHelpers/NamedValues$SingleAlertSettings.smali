.class Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues$SingleAlertSettings;
.super Ljava/lang/Object;
.source "NamedValues.java"


# instance fields
.field private alertScheduleIndex:I

.field private daytime:Z

.field private enabled:Z

.field private name:Ljava/lang/String;

.field private repeat:Lcom/dexcom/cgm/k/k;

.field private soundName:Ljava/lang/String;

.field private threshold:I


# direct methods
.method public constructor <init>(Lcom/dexcom/cgm/model/UserAlertProperties;)V
    .locals 1

    .prologue
    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 186
    invoke-virtual {p1}, Lcom/dexcom/cgm/model/UserAlertProperties;->getAlertType()Lcom/dexcom/cgm/model/enums/AlertKind;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dexcom/cgm/model/enums/AlertKind;->name()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues$SingleAlertSettings;->name:Ljava/lang/String;

    .line 187
    invoke-virtual {p1}, Lcom/dexcom/cgm/model/UserAlertProperties;->isDaytimeAlert()Z

    move-result v0

    iput-boolean v0, p0, Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues$SingleAlertSettings;->daytime:Z

    .line 188
    invoke-virtual {p1}, Lcom/dexcom/cgm/model/UserAlertProperties;->isEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues$SingleAlertSettings;->enabled:Z

    .line 189
    invoke-virtual {p1}, Lcom/dexcom/cgm/model/UserAlertProperties;->getThreshold()I

    move-result v0

    iput v0, p0, Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues$SingleAlertSettings;->threshold:I

    .line 190
    invoke-virtual {p1}, Lcom/dexcom/cgm/model/UserAlertProperties;->getRepeatTime()Lcom/dexcom/cgm/k/k;

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues$SingleAlertSettings;->repeat:Lcom/dexcom/cgm/k/k;

    .line 191
    invoke-virtual {p1}, Lcom/dexcom/cgm/model/UserAlertProperties;->getAlertSound()Lcom/dexcom/cgm/model/enums/AlertSound;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dexcom/cgm/model/enums/AlertSound;->getAlertSoundString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues$SingleAlertSettings;->soundName:Ljava/lang/String;

    .line 192
    invoke-virtual {p1}, Lcom/dexcom/cgm/model/UserAlertProperties;->getAlertScheduleIndex()I

    move-result v0

    iput v0, p0, Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues$SingleAlertSettings;->alertScheduleIndex:I

    .line 193
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues$SingleAlertSettings;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getUserAlertProperties()Lcom/dexcom/cgm/model/UserAlertProperties;
    .locals 2

    .prologue
    .line 202
    new-instance v0, Lcom/dexcom/cgm/model/UserAlertProperties$Builder;

    invoke-direct {v0}, Lcom/dexcom/cgm/model/UserAlertProperties$Builder;-><init>()V

    iget-object v1, p0, Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues$SingleAlertSettings;->name:Ljava/lang/String;

    .line 203
    invoke-static {v1}, Lcom/dexcom/cgm/model/enums/AlertKind;->valueOf(Ljava/lang/String;)Lcom/dexcom/cgm/model/enums/AlertKind;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/model/UserAlertProperties$Builder;->setAlertType(Lcom/dexcom/cgm/model/enums/AlertKind;)Lcom/dexcom/cgm/model/UserAlertProperties$Builder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues$SingleAlertSettings;->daytime:Z

    .line 204
    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/model/UserAlertProperties$Builder;->setIsDaytimeAlert(Z)Lcom/dexcom/cgm/model/UserAlertProperties$Builder;

    move-result-object v0

    iget v1, p0, Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues$SingleAlertSettings;->threshold:I

    .line 205
    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/model/UserAlertProperties$Builder;->setThreshold(I)Lcom/dexcom/cgm/model/UserAlertProperties$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues$SingleAlertSettings;->repeat:Lcom/dexcom/cgm/k/k;

    .line 206
    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/model/UserAlertProperties$Builder;->setRepeatTime(Lcom/dexcom/cgm/k/k;)Lcom/dexcom/cgm/model/UserAlertProperties$Builder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues$SingleAlertSettings;->enabled:Z

    .line 207
    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/model/UserAlertProperties$Builder;->setIsEnabled(Z)Lcom/dexcom/cgm/model/UserAlertProperties$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues$SingleAlertSettings;->soundName:Ljava/lang/String;

    .line 208
    invoke-static {v1}, Lcom/dexcom/cgm/model/enums/AlertSound;->fromString(Ljava/lang/String;)Lcom/dexcom/cgm/model/enums/AlertSound;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/model/UserAlertProperties$Builder;->setAlertSound(Lcom/dexcom/cgm/model/enums/AlertSound;)Lcom/dexcom/cgm/model/UserAlertProperties$Builder;

    move-result-object v0

    iget v1, p0, Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues$SingleAlertSettings;->alertScheduleIndex:I

    .line 209
    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/model/UserAlertProperties$Builder;->setAlertScheduleIndex(I)Lcom/dexcom/cgm/model/UserAlertProperties$Builder;

    move-result-object v0

    .line 210
    invoke-virtual {v0}, Lcom/dexcom/cgm/model/UserAlertProperties$Builder;->build()Lcom/dexcom/cgm/model/UserAlertProperties;

    move-result-object v0

    return-object v0
.end method

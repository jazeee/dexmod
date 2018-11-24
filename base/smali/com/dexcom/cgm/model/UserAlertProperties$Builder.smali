.class public Lcom/dexcom/cgm/model/UserAlertProperties$Builder;
.super Ljava/lang/Object;
.source "UserAlertProperties.java"


# instance fields
.field private m_alertScheduleIndex:I

.field private m_alertSound:Lcom/dexcom/cgm/model/enums/AlertSound;

.field private m_alertType:Lcom/dexcom/cgm/model/enums/AlertKind;

.field private m_isDaytimeAlert:Z

.field private m_isEnabled:Z

.field private m_repeatTime:I

.field private m_threshold:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 277
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 274
    const/4 v0, -0x1

    iput v0, p0, Lcom/dexcom/cgm/model/UserAlertProperties$Builder;->m_alertScheduleIndex:I

    .line 278
    return-void
.end method

.method public constructor <init>(Lcom/dexcom/cgm/model/UserAlertProperties;)V
    .locals 1

    .prologue
    .line 281
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 274
    const/4 v0, -0x1

    iput v0, p0, Lcom/dexcom/cgm/model/UserAlertProperties$Builder;->m_alertScheduleIndex:I

    .line 282
    invoke-static {p1}, Lcom/dexcom/cgm/model/UserAlertProperties;->access$000(Lcom/dexcom/cgm/model/UserAlertProperties;)Lcom/dexcom/cgm/model/enums/AlertKind;

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/model/UserAlertProperties$Builder;->m_alertType:Lcom/dexcom/cgm/model/enums/AlertKind;

    .line 283
    invoke-static {p1}, Lcom/dexcom/cgm/model/UserAlertProperties;->access$100(Lcom/dexcom/cgm/model/UserAlertProperties;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/dexcom/cgm/model/UserAlertProperties$Builder;->m_isDaytimeAlert:Z

    .line 284
    invoke-static {p1}, Lcom/dexcom/cgm/model/UserAlertProperties;->access$200(Lcom/dexcom/cgm/model/UserAlertProperties;)I

    move-result v0

    iput v0, p0, Lcom/dexcom/cgm/model/UserAlertProperties$Builder;->m_threshold:I

    .line 285
    invoke-static {p1}, Lcom/dexcom/cgm/model/UserAlertProperties;->access$300(Lcom/dexcom/cgm/model/UserAlertProperties;)I

    move-result v0

    iput v0, p0, Lcom/dexcom/cgm/model/UserAlertProperties$Builder;->m_repeatTime:I

    .line 286
    invoke-static {p1}, Lcom/dexcom/cgm/model/UserAlertProperties;->access$400(Lcom/dexcom/cgm/model/UserAlertProperties;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/dexcom/cgm/model/UserAlertProperties$Builder;->m_isEnabled:Z

    .line 287
    invoke-static {p1}, Lcom/dexcom/cgm/model/UserAlertProperties;->access$500(Lcom/dexcom/cgm/model/UserAlertProperties;)Lcom/dexcom/cgm/model/enums/AlertSound;

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/model/UserAlertProperties$Builder;->m_alertSound:Lcom/dexcom/cgm/model/enums/AlertSound;

    .line 288
    invoke-static {p1}, Lcom/dexcom/cgm/model/UserAlertProperties;->access$600(Lcom/dexcom/cgm/model/UserAlertProperties;)I

    move-result v0

    iput v0, p0, Lcom/dexcom/cgm/model/UserAlertProperties$Builder;->m_alertScheduleIndex:I

    .line 289
    return-void
.end method


# virtual methods
.method public build()Lcom/dexcom/cgm/model/UserAlertProperties;
    .locals 9

    .prologue
    .line 346
    iget v0, p0, Lcom/dexcom/cgm/model/UserAlertProperties$Builder;->m_alertScheduleIndex:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 348
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must set AlertScheduleIndex field"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 350
    :cond_0
    new-instance v0, Lcom/dexcom/cgm/model/UserAlertProperties;

    iget-object v1, p0, Lcom/dexcom/cgm/model/UserAlertProperties$Builder;->m_alertType:Lcom/dexcom/cgm/model/enums/AlertKind;

    iget-boolean v2, p0, Lcom/dexcom/cgm/model/UserAlertProperties$Builder;->m_isDaytimeAlert:Z

    iget v3, p0, Lcom/dexcom/cgm/model/UserAlertProperties$Builder;->m_threshold:I

    iget v4, p0, Lcom/dexcom/cgm/model/UserAlertProperties$Builder;->m_repeatTime:I

    .line 354
    invoke-static {v4}, Lcom/dexcom/cgm/k/k;->FromMinutes(I)Lcom/dexcom/cgm/k/k;

    move-result-object v4

    iget-boolean v5, p0, Lcom/dexcom/cgm/model/UserAlertProperties$Builder;->m_isEnabled:Z

    iget-object v6, p0, Lcom/dexcom/cgm/model/UserAlertProperties$Builder;->m_alertSound:Lcom/dexcom/cgm/model/enums/AlertSound;

    iget v7, p0, Lcom/dexcom/cgm/model/UserAlertProperties$Builder;->m_alertScheduleIndex:I

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/dexcom/cgm/model/UserAlertProperties;-><init>(Lcom/dexcom/cgm/model/enums/AlertKind;ZILcom/dexcom/cgm/k/k;ZLcom/dexcom/cgm/model/enums/AlertSound;ILcom/dexcom/cgm/model/UserAlertProperties$1;)V

    return-object v0
.end method

.method public setAlertScheduleIndex(I)Lcom/dexcom/cgm/model/UserAlertProperties$Builder;
    .locals 0

    .prologue
    .line 340
    iput p1, p0, Lcom/dexcom/cgm/model/UserAlertProperties$Builder;->m_alertScheduleIndex:I

    .line 341
    return-object p0
.end method

.method public setAlertSound(Lcom/dexcom/cgm/model/enums/AlertSound;)Lcom/dexcom/cgm/model/UserAlertProperties$Builder;
    .locals 2

    .prologue
    .line 329
    iget-object v0, p0, Lcom/dexcom/cgm/model/UserAlertProperties$Builder;->m_alertType:Lcom/dexcom/cgm/model/enums/AlertKind;

    sget-object v1, Lcom/dexcom/cgm/model/enums/AlertKind;->UrgentLowGlucose:Lcom/dexcom/cgm/model/enums/AlertKind;

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/model/enums/AlertKind;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/dexcom/cgm/model/enums/AlertSound;->VibrateOnly:Lcom/dexcom/cgm/model/enums/AlertSound;

    invoke-virtual {p1, v0}, Lcom/dexcom/cgm/model/enums/AlertSound;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 331
    sget-object v0, Lcom/dexcom/cgm/model/enums/AlertSound;->UrgentLow:Lcom/dexcom/cgm/model/enums/AlertSound;

    iput-object v0, p0, Lcom/dexcom/cgm/model/UserAlertProperties$Builder;->m_alertSound:Lcom/dexcom/cgm/model/enums/AlertSound;

    .line 335
    :goto_0
    return-object p0

    .line 334
    :cond_0
    iput-object p1, p0, Lcom/dexcom/cgm/model/UserAlertProperties$Builder;->m_alertSound:Lcom/dexcom/cgm/model/enums/AlertSound;

    goto :goto_0
.end method

.method public setAlertType(Lcom/dexcom/cgm/model/enums/AlertKind;)Lcom/dexcom/cgm/model/UserAlertProperties$Builder;
    .locals 0

    .prologue
    .line 293
    iput-object p1, p0, Lcom/dexcom/cgm/model/UserAlertProperties$Builder;->m_alertType:Lcom/dexcom/cgm/model/enums/AlertKind;

    .line 294
    return-object p0
.end method

.method public setIsDaytimeAlert(Z)Lcom/dexcom/cgm/model/UserAlertProperties$Builder;
    .locals 0

    .prologue
    .line 299
    iput-boolean p1, p0, Lcom/dexcom/cgm/model/UserAlertProperties$Builder;->m_isDaytimeAlert:Z

    .line 300
    return-object p0
.end method

.method public setIsEnabled(Z)Lcom/dexcom/cgm/model/UserAlertProperties$Builder;
    .locals 0

    .prologue
    .line 317
    iput-boolean p1, p0, Lcom/dexcom/cgm/model/UserAlertProperties$Builder;->m_isEnabled:Z

    .line 318
    return-object p0
.end method

.method public setRepeatTime(Lcom/dexcom/cgm/k/k;)Lcom/dexcom/cgm/model/UserAlertProperties$Builder;
    .locals 1

    .prologue
    .line 311
    invoke-virtual {p1}, Lcom/dexcom/cgm/k/k;->getTotalMinutes()I

    move-result v0

    iput v0, p0, Lcom/dexcom/cgm/model/UserAlertProperties$Builder;->m_repeatTime:I

    .line 312
    return-object p0
.end method

.method public setThreshold(I)Lcom/dexcom/cgm/model/UserAlertProperties$Builder;
    .locals 0

    .prologue
    .line 305
    iput p1, p0, Lcom/dexcom/cgm/model/UserAlertProperties$Builder;->m_threshold:I

    .line 306
    return-object p0
.end method

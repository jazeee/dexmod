.class public final Lcom/dexcom/cgm/i/a/b;
.super Ljava/lang/Object;
.source "DexUserAlertProperties.java"


# static fields
.field public static final REPEAT_NEVER:Lcom/dexcom/cgm/k/k;


# instance fields
.field private m_internalUserAlertProperties:Lcom/dexcom/cgm/model/UserAlertProperties;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 94
    sget-object v0, Lcom/dexcom/cgm/k/k;->Zero:Lcom/dexcom/cgm/k/k;

    sput-object v0, Lcom/dexcom/cgm/i/a/b;->REPEAT_NEVER:Lcom/dexcom/cgm/k/k;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    return-void
.end method

.method synthetic constructor <init>(Lcom/dexcom/cgm/i/a/a;)V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/dexcom/cgm/i/a/b;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/dexcom/cgm/i/a/b;)Lcom/dexcom/cgm/model/UserAlertProperties;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lcom/dexcom/cgm/i/a/b;->m_internalUserAlertProperties:Lcom/dexcom/cgm/model/UserAlertProperties;

    return-object v0
.end method

.method static synthetic access$002(Lcom/dexcom/cgm/i/a/b;Lcom/dexcom/cgm/model/UserAlertProperties;)Lcom/dexcom/cgm/model/UserAlertProperties;
    .locals 0

    .prologue
    .line 13
    iput-object p1, p0, Lcom/dexcom/cgm/i/a/b;->m_internalUserAlertProperties:Lcom/dexcom/cgm/model/UserAlertProperties;

    return-object p1
.end method

.method public static fromInternal(Lcom/dexcom/cgm/model/UserAlertProperties;)Lcom/dexcom/cgm/i/a/b;
    .locals 1

    .prologue
    .line 106
    new-instance v0, Lcom/dexcom/cgm/i/a/b;

    invoke-direct {v0}, Lcom/dexcom/cgm/i/a/b;-><init>()V

    .line 107
    iput-object p0, v0, Lcom/dexcom/cgm/i/a/b;->m_internalUserAlertProperties:Lcom/dexcom/cgm/model/UserAlertProperties;

    .line 108
    return-object v0
.end method

.method public static getDefaultUserAlert(Lcom/dexcom/cgm/h/a/a/a;)Lcom/dexcom/cgm/i/a/b;
    .locals 1

    .prologue
    .line 98
    invoke-virtual {p0}, Lcom/dexcom/cgm/h/a/a/a;->toInternal()Lcom/dexcom/cgm/model/enums/AlertKind;

    move-result-object v0

    .line 100
    invoke-static {v0}, Lcom/dexcom/cgm/model/UserAlertProperties;->getDefaultUserAlert(Lcom/dexcom/cgm/model/enums/AlertKind;)Lcom/dexcom/cgm/model/UserAlertProperties;

    move-result-object v0

    .line 101
    invoke-static {v0}, Lcom/dexcom/cgm/i/a/b;->fromInternal(Lcom/dexcom/cgm/model/UserAlertProperties;)Lcom/dexcom/cgm/i/a/b;

    move-result-object v0

    return-object v0
.end method

.method public static toInternal(Lcom/dexcom/cgm/i/a/b;)Lcom/dexcom/cgm/model/UserAlertProperties;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/dexcom/cgm/i/a/b;->m_internalUserAlertProperties:Lcom/dexcom/cgm/model/UserAlertProperties;

    return-object v0
.end method


# virtual methods
.method public final equals(Lcom/dexcom/cgm/i/a/b;)Z
    .locals 9

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 25
    invoke-virtual {p0}, Lcom/dexcom/cgm/i/a/b;->getAlertType()Lcom/dexcom/cgm/h/a/a/a;

    move-result-object v0

    invoke-virtual {p1}, Lcom/dexcom/cgm/i/a/b;->getAlertType()Lcom/dexcom/cgm/h/a/a/a;

    move-result-object v3

    if-ne v0, v3, :cond_0

    move v0, v1

    .line 26
    :goto_0
    invoke-virtual {p0}, Lcom/dexcom/cgm/i/a/b;->isDaytimeAlert()Z

    move-result v3

    invoke-virtual {p1}, Lcom/dexcom/cgm/i/a/b;->isDaytimeAlert()Z

    move-result v4

    if-ne v3, v4, :cond_1

    move v3, v1

    .line 27
    :goto_1
    invoke-virtual {p0}, Lcom/dexcom/cgm/i/a/b;->getThreshold()I

    move-result v4

    invoke-virtual {p1}, Lcom/dexcom/cgm/i/a/b;->getThreshold()I

    move-result v5

    if-ne v4, v5, :cond_2

    move v4, v1

    .line 28
    :goto_2
    invoke-virtual {p0}, Lcom/dexcom/cgm/i/a/b;->getRepeatTime()Lcom/dexcom/cgm/k/k;

    move-result-object v5

    invoke-virtual {p1}, Lcom/dexcom/cgm/i/a/b;->getRepeatTime()Lcom/dexcom/cgm/k/k;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/dexcom/cgm/k/k;->equals(Ljava/lang/Object;)Z

    move-result v7

    .line 29
    invoke-virtual {p0}, Lcom/dexcom/cgm/i/a/b;->isEnabled()Z

    move-result v5

    invoke-virtual {p1}, Lcom/dexcom/cgm/i/a/b;->isEnabled()Z

    move-result v6

    if-ne v5, v6, :cond_3

    move v5, v1

    .line 30
    :goto_3
    invoke-virtual {p0}, Lcom/dexcom/cgm/i/a/b;->getAlertSound()Lcom/dexcom/cgm/i/a/a/a;

    move-result-object v6

    invoke-virtual {p1}, Lcom/dexcom/cgm/i/a/b;->getAlertSound()Lcom/dexcom/cgm/i/a/a/a;

    move-result-object v8

    if-ne v6, v8, :cond_4

    move v6, v1

    .line 31
    :goto_4
    invoke-virtual {p0}, Lcom/dexcom/cgm/i/a/b;->getAlertScheduleIndex()I

    invoke-virtual {p1}, Lcom/dexcom/cgm/i/a/b;->getAlertScheduleIndex()I

    .line 33
    if-eqz v0, :cond_5

    if-eqz v3, :cond_5

    if-eqz v4, :cond_5

    if-eqz v7, :cond_5

    if-eqz v5, :cond_5

    if-eqz v6, :cond_5

    :goto_5
    return v1

    :cond_0
    move v0, v2

    .line 25
    goto :goto_0

    :cond_1
    move v3, v2

    .line 26
    goto :goto_1

    :cond_2
    move v4, v2

    .line 27
    goto :goto_2

    :cond_3
    move v5, v2

    .line 29
    goto :goto_3

    :cond_4
    move v6, v2

    .line 30
    goto :goto_4

    :cond_5
    move v1, v2

    .line 33
    goto :goto_5
.end method

.method public final getAlertScheduleIndex()I
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/dexcom/cgm/i/a/b;->m_internalUserAlertProperties:Lcom/dexcom/cgm/model/UserAlertProperties;

    invoke-virtual {v0}, Lcom/dexcom/cgm/model/UserAlertProperties;->getAlertScheduleIndex()I

    move-result v0

    return v0
.end method

.method public final getAlertSound()Lcom/dexcom/cgm/i/a/a/a;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/dexcom/cgm/i/a/b;->m_internalUserAlertProperties:Lcom/dexcom/cgm/model/UserAlertProperties;

    invoke-virtual {v0}, Lcom/dexcom/cgm/model/UserAlertProperties;->getAlertSound()Lcom/dexcom/cgm/model/enums/AlertSound;

    move-result-object v0

    .line 86
    invoke-virtual {v0}, Lcom/dexcom/cgm/model/enums/AlertSound;->getAlertSoundString()Ljava/lang/String;

    move-result-object v0

    .line 85
    invoke-static {v0}, Lcom/dexcom/cgm/i/a/a/a;->fromString(Ljava/lang/String;)Lcom/dexcom/cgm/i/a/a/a;

    move-result-object v0

    return-object v0
.end method

.method public final getAlertType()Lcom/dexcom/cgm/h/a/a/a;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/dexcom/cgm/i/a/b;->m_internalUserAlertProperties:Lcom/dexcom/cgm/model/UserAlertProperties;

    invoke-virtual {v0}, Lcom/dexcom/cgm/model/UserAlertProperties;->getAlertType()Lcom/dexcom/cgm/model/enums/AlertKind;

    move-result-object v0

    invoke-static {v0}, Lcom/dexcom/cgm/h/a/a/a;->fromInternal(Lcom/dexcom/cgm/model/enums/AlertKind;)Lcom/dexcom/cgm/h/a/a/a;

    move-result-object v0

    return-object v0
.end method

.method public final getRepeatTime()Lcom/dexcom/cgm/k/k;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/dexcom/cgm/i/a/b;->m_internalUserAlertProperties:Lcom/dexcom/cgm/model/UserAlertProperties;

    invoke-virtual {v0}, Lcom/dexcom/cgm/model/UserAlertProperties;->getRepeatTime()Lcom/dexcom/cgm/k/k;

    move-result-object v0

    return-object v0
.end method

.method public final getThreshold()I
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/dexcom/cgm/i/a/b;->m_internalUserAlertProperties:Lcom/dexcom/cgm/model/UserAlertProperties;

    invoke-virtual {v0}, Lcom/dexcom/cgm/model/UserAlertProperties;->getThreshold()I

    move-result v0

    return v0
.end method

.method public final isDaytimeAlert()Z
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/dexcom/cgm/i/a/b;->m_internalUserAlertProperties:Lcom/dexcom/cgm/model/UserAlertProperties;

    invoke-virtual {v0}, Lcom/dexcom/cgm/model/UserAlertProperties;->isDaytimeAlert()Z

    move-result v0

    return v0
.end method

.method public final isEnabled()Z
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/dexcom/cgm/i/a/b;->m_internalUserAlertProperties:Lcom/dexcom/cgm/model/UserAlertProperties;

    invoke-virtual {v0}, Lcom/dexcom/cgm/model/UserAlertProperties;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "UserAlertProperties{m_internalUserAlertProperties="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/dexcom/cgm/i/a/b;->m_internalUserAlertProperties:Lcom/dexcom/cgm/model/UserAlertProperties;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

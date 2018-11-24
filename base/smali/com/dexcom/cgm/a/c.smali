.class public final Lcom/dexcom/cgm/a/c;
.super Ljava/lang/Object;
.source "AlertProperties.java"


# static fields
.field public static MaxRealerts:I

.field private static MaxSuspensionTime:Lcom/dexcom/cgm/k/k;


# instance fields
.field private m_alertKind:Lcom/dexcom/cgm/model/enums/AlertKind;

.field private m_inactivatingAlerts:[Lcom/dexcom/cgm/model/enums/AlertKind;

.field private m_isSuspendable:Z

.field private m_isUserVisible:Z

.field private m_maxRealerts:I

.field private m_priority$6b2c33b7:I

.field private m_sound:Lcom/dexcom/cgm/model/enums/AlertSound;

.field private m_suspensionPeriod:Lcom/dexcom/cgm/k/k;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 15
    const/16 v0, 0x3e8

    sput v0, Lcom/dexcom/cgm/a/c;->MaxRealerts:I

    .line 18
    new-instance v0, Lcom/dexcom/cgm/k/k;

    const/16 v1, 0x960

    invoke-direct {v0, v1, v2, v2}, Lcom/dexcom/cgm/k/k;-><init>(III)V

    sput-object v0, Lcom/dexcom/cgm/a/c;->MaxSuspensionTime:Lcom/dexcom/cgm/k/k;

    return-void
.end method

.method public constructor <init>(Lcom/dexcom/cgm/model/enums/AlertKind;IZLcom/dexcom/cgm/k/k;I[Lcom/dexcom/cgm/model/enums/AlertKind;ZLcom/dexcom/cgm/model/enums/AlertSound;)V
    .locals 1

    .prologue
    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    iput-object p1, p0, Lcom/dexcom/cgm/a/c;->m_alertKind:Lcom/dexcom/cgm/model/enums/AlertKind;

    .line 100
    iput p2, p0, Lcom/dexcom/cgm/a/c;->m_priority$6b2c33b7:I

    .line 101
    sget-object v0, Lcom/dexcom/cgm/k/k;->Zero:Lcom/dexcom/cgm/k/k;

    invoke-virtual {p4, v0}, Lcom/dexcom/cgm/k/k;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p4, Lcom/dexcom/cgm/a/c;->MaxSuspensionTime:Lcom/dexcom/cgm/k/k;

    :cond_0
    iput-object p4, p0, Lcom/dexcom/cgm/a/c;->m_suspensionPeriod:Lcom/dexcom/cgm/k/k;

    .line 103
    iput-boolean p3, p0, Lcom/dexcom/cgm/a/c;->m_isSuspendable:Z

    .line 104
    iput p5, p0, Lcom/dexcom/cgm/a/c;->m_maxRealerts:I

    .line 105
    iput-object p6, p0, Lcom/dexcom/cgm/a/c;->m_inactivatingAlerts:[Lcom/dexcom/cgm/model/enums/AlertKind;

    .line 106
    iput-boolean p7, p0, Lcom/dexcom/cgm/a/c;->m_isUserVisible:Z

    .line 107
    if-nez p8, :cond_1

    sget-object p8, Lcom/dexcom/cgm/model/enums/AlertSound;->None:Lcom/dexcom/cgm/model/enums/AlertSound;

    :cond_1
    iput-object p8, p0, Lcom/dexcom/cgm/a/c;->m_sound:Lcom/dexcom/cgm/model/enums/AlertSound;

    .line 108
    return-void
.end method


# virtual methods
.method public final getAlertKind()Lcom/dexcom/cgm/model/enums/AlertKind;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/dexcom/cgm/a/c;->m_alertKind:Lcom/dexcom/cgm/model/enums/AlertKind;

    return-object v0
.end method

.method public final getMaxRealerts()I
    .locals 1

    .prologue
    .line 127
    iget v0, p0, Lcom/dexcom/cgm/a/c;->m_maxRealerts:I

    return v0
.end method

.method public final getPriority$ec0cd56()I
    .locals 1

    .prologue
    .line 34
    iget v0, p0, Lcom/dexcom/cgm/a/c;->m_priority$6b2c33b7:I

    return v0
.end method

.method public final getSound()Lcom/dexcom/cgm/model/enums/AlertSound;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/dexcom/cgm/a/c;->m_sound:Lcom/dexcom/cgm/model/enums/AlertSound;

    return-object v0
.end method

.method public final getSuspensionPeriod()Lcom/dexcom/cgm/k/k;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/dexcom/cgm/a/c;->m_suspensionPeriod:Lcom/dexcom/cgm/k/k;

    return-object v0
.end method

.method public final isInactivatedBy(Lcom/dexcom/cgm/model/enums/AlertKind;)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 22
    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/dexcom/cgm/a/c;->m_inactivatingAlerts:[Lcom/dexcom/cgm/model/enums/AlertKind;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 24
    iget-object v2, p0, Lcom/dexcom/cgm/a/c;->m_inactivatingAlerts:[Lcom/dexcom/cgm/model/enums/AlertKind;

    aget-object v2, v2, v0

    if-ne p1, v2, :cond_1

    .line 26
    const/4 v1, 0x1

    .line 29
    :cond_0
    return v1

    .line 22
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public final isSuspendable()Z
    .locals 1

    .prologue
    .line 122
    iget-boolean v0, p0, Lcom/dexcom/cgm/a/c;->m_isSuspendable:Z

    return v0
.end method

.method public final isSuspendedBy(Lcom/dexcom/cgm/model/enums/AlertKind;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 61
    iget-object v2, p0, Lcom/dexcom/cgm/a/c;->m_alertKind:Lcom/dexcom/cgm/model/enums/AlertKind;

    sget-object v3, Lcom/dexcom/cgm/model/enums/AlertKind;->RateDownAlarm:Lcom/dexcom/cgm/model/enums/AlertKind;

    if-ne v2, v3, :cond_2

    .line 63
    sget-object v2, Lcom/dexcom/cgm/model/enums/AlertKind;->RateMediumDown:Lcom/dexcom/cgm/model/enums/AlertKind;

    if-ne p1, v2, :cond_1

    .line 69
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 63
    goto :goto_0

    .line 65
    :cond_2
    iget-object v2, p0, Lcom/dexcom/cgm/a/c;->m_alertKind:Lcom/dexcom/cgm/model/enums/AlertKind;

    sget-object v3, Lcom/dexcom/cgm/model/enums/AlertKind;->RateUpAlarm:Lcom/dexcom/cgm/model/enums/AlertKind;

    if-ne v2, v3, :cond_3

    .line 67
    sget-object v2, Lcom/dexcom/cgm/model/enums/AlertKind;->RateMediumUp:Lcom/dexcom/cgm/model/enums/AlertKind;

    if-eq p1, v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v1

    .line 69
    goto :goto_0
.end method

.method public final isUserVisible()Z
    .locals 1

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/dexcom/cgm/a/c;->m_isUserVisible:Z

    return v0
.end method

.method public final setSound(Lcom/dexcom/cgm/model/enums/AlertSound;)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lcom/dexcom/cgm/a/c;->m_sound:Lcom/dexcom/cgm/model/enums/AlertSound;

    .line 51
    return-void
.end method

.method public final setSuspensionPeriod(Lcom/dexcom/cgm/k/k;)V
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/dexcom/cgm/k/k;->Zero:Lcom/dexcom/cgm/k/k;

    invoke-virtual {p1, v0}, Lcom/dexcom/cgm/k/k;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p1, Lcom/dexcom/cgm/a/c;->MaxSuspensionTime:Lcom/dexcom/cgm/k/k;

    :cond_0
    iput-object p1, p0, Lcom/dexcom/cgm/a/c;->m_suspensionPeriod:Lcom/dexcom/cgm/k/k;

    .line 41
    return-void
.end method

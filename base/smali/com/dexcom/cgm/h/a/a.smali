.class public final Lcom/dexcom/cgm/h/a/a;
.super Ljava/lang/Object;
.source "DexAlertInstanceInformation.java"


# instance fields
.field private m_alertInstanceInformation:Lcom/dexcom/cgm/model/AlertInstanceInformation;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromInternal(Lcom/dexcom/cgm/model/AlertInstanceInformation;)Lcom/dexcom/cgm/h/a/a;
    .locals 1

    .prologue
    .line 29
    new-instance v0, Lcom/dexcom/cgm/h/a/a;

    invoke-direct {v0}, Lcom/dexcom/cgm/h/a/a;-><init>()V

    .line 30
    iput-object p0, v0, Lcom/dexcom/cgm/h/a/a;->m_alertInstanceInformation:Lcom/dexcom/cgm/model/AlertInstanceInformation;

    .line 31
    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 73
    if-ne p0, p1, :cond_1

    .line 82
    :cond_0
    :goto_0
    return v0

    .line 74
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    :cond_2
    move v0, v1

    goto :goto_0

    .line 76
    :cond_3
    check-cast p1, Lcom/dexcom/cgm/h/a/a;

    .line 78
    iget-object v2, p0, Lcom/dexcom/cgm/h/a/a;->m_alertInstanceInformation:Lcom/dexcom/cgm/model/AlertInstanceInformation;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/dexcom/cgm/h/a/a;->m_alertInstanceInformation:Lcom/dexcom/cgm/model/AlertInstanceInformation;

    iget-object v3, p1, Lcom/dexcom/cgm/h/a/a;->m_alertInstanceInformation:Lcom/dexcom/cgm/model/AlertInstanceInformation;

    invoke-virtual {v2, v3}, Lcom/dexcom/cgm/model/AlertInstanceInformation;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :goto_1
    move v0, v1

    .line 80
    goto :goto_0

    .line 78
    :cond_4
    iget-object v2, p1, Lcom/dexcom/cgm/h/a/a;->m_alertInstanceInformation:Lcom/dexcom/cgm/model/AlertInstanceInformation;

    if-eqz v2, :cond_0

    goto :goto_1
.end method

.method public final getAlertKind()Lcom/dexcom/cgm/h/a/a/a;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/dexcom/cgm/h/a/a;->m_alertInstanceInformation:Lcom/dexcom/cgm/model/AlertInstanceInformation;

    invoke-virtual {v0}, Lcom/dexcom/cgm/model/AlertInstanceInformation;->getAlertKind()Lcom/dexcom/cgm/model/enums/AlertKind;

    move-result-object v0

    invoke-static {v0}, Lcom/dexcom/cgm/h/a/a/a;->fromInternal(Lcom/dexcom/cgm/model/enums/AlertKind;)Lcom/dexcom/cgm/h/a/a/a;

    move-result-object v0

    return-object v0
.end method

.method public final getEgv()I
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/dexcom/cgm/h/a/a;->m_alertInstanceInformation:Lcom/dexcom/cgm/model/AlertInstanceInformation;

    invoke-virtual {v0}, Lcom/dexcom/cgm/model/AlertInstanceInformation;->getEgv()I

    move-result v0

    return v0
.end method

.method public final getTimestamp()Lcom/dexcom/cgm/k/j;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/dexcom/cgm/h/a/a;->m_alertInstanceInformation:Lcom/dexcom/cgm/model/AlertInstanceInformation;

    invoke-virtual {v0}, Lcom/dexcom/cgm/model/AlertInstanceInformation;->getTimestamp()Lcom/dexcom/cgm/k/j;

    move-result-object v0

    return-object v0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/dexcom/cgm/h/a/a;->m_alertInstanceInformation:Lcom/dexcom/cgm/model/AlertInstanceInformation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dexcom/cgm/h/a/a;->m_alertInstanceInformation:Lcom/dexcom/cgm/model/AlertInstanceInformation;

    invoke-virtual {v0}, Lcom/dexcom/cgm/model/AlertInstanceInformation;->hashCode()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AlertInstanceInformation{m_alertInstanceInformation="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/dexcom/cgm/h/a/a;->m_alertInstanceInformation:Lcom/dexcom/cgm/model/AlertInstanceInformation;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

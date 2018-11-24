.class public final Lcom/dexcom/cgm/a/l;
.super Ljava/lang/Object;
.source "EvAlert.java"


# instance fields
.field private m_alertInfo:Lcom/dexcom/cgm/model/AlertStateRecord;

.field private m_alertSound:Lcom/dexcom/cgm/model/enums/AlertSound;

.field private m_isActive:Z


# direct methods
.method public constructor <init>(Lcom/dexcom/cgm/model/AlertStateRecord;ZLcom/dexcom/cgm/model/enums/AlertSound;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/dexcom/cgm/a/l;->m_alertInfo:Lcom/dexcom/cgm/model/AlertStateRecord;

    .line 28
    iput-boolean p2, p0, Lcom/dexcom/cgm/a/l;->m_isActive:Z

    .line 29
    iput-object p3, p0, Lcom/dexcom/cgm/a/l;->m_alertSound:Lcom/dexcom/cgm/model/enums/AlertSound;

    .line 30
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 60
    if-ne p0, p1, :cond_1

    .line 71
    :cond_0
    :goto_0
    return v0

    .line 61
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

    .line 63
    :cond_3
    check-cast p1, Lcom/dexcom/cgm/a/l;

    .line 65
    iget-boolean v2, p0, Lcom/dexcom/cgm/a/l;->m_isActive:Z

    iget-boolean v3, p1, Lcom/dexcom/cgm/a/l;->m_isActive:Z

    if-eq v2, v3, :cond_4

    move v0, v1

    goto :goto_0

    .line 66
    :cond_4
    iget-object v2, p0, Lcom/dexcom/cgm/a/l;->m_alertInfo:Lcom/dexcom/cgm/model/AlertStateRecord;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/dexcom/cgm/a/l;->m_alertInfo:Lcom/dexcom/cgm/model/AlertStateRecord;

    iget-object v3, p1, Lcom/dexcom/cgm/a/l;->m_alertInfo:Lcom/dexcom/cgm/model/AlertStateRecord;

    invoke-virtual {v2, v3}, Lcom/dexcom/cgm/model/AlertStateRecord;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    :cond_5
    move v0, v1

    .line 68
    goto :goto_0

    .line 66
    :cond_6
    iget-object v2, p1, Lcom/dexcom/cgm/a/l;->m_alertInfo:Lcom/dexcom/cgm/model/AlertStateRecord;

    if-nez v2, :cond_5

    .line 69
    :cond_7
    iget-object v2, p0, Lcom/dexcom/cgm/a/l;->m_alertSound:Lcom/dexcom/cgm/model/enums/AlertSound;

    iget-object v3, p1, Lcom/dexcom/cgm/a/l;->m_alertSound:Lcom/dexcom/cgm/model/enums/AlertSound;

    if-eq v2, v3, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public final getAlertKind()Lcom/dexcom/cgm/model/enums/AlertKind;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/dexcom/cgm/a/l;->m_alertInfo:Lcom/dexcom/cgm/model/AlertStateRecord;

    invoke-virtual {v0}, Lcom/dexcom/cgm/model/AlertStateRecord;->getAlertType()Lcom/dexcom/cgm/model/enums/AlertKind;

    move-result-object v0

    return-object v0
.end method

.method public final getAlertSound()Lcom/dexcom/cgm/model/enums/AlertSound;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/dexcom/cgm/a/l;->m_alertSound:Lcom/dexcom/cgm/model/enums/AlertSound;

    return-object v0
.end method

.method public final getAlertStateRecord()Lcom/dexcom/cgm/model/AlertStateRecord;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/dexcom/cgm/a/l;->m_alertInfo:Lcom/dexcom/cgm/model/AlertStateRecord;

    return-object v0
.end method

.method public final hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 77
    iget-object v0, p0, Lcom/dexcom/cgm/a/l;->m_alertInfo:Lcom/dexcom/cgm/model/AlertStateRecord;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/dexcom/cgm/a/l;->m_alertInfo:Lcom/dexcom/cgm/model/AlertStateRecord;

    invoke-virtual {v0}, Lcom/dexcom/cgm/model/AlertStateRecord;->hashCode()I

    move-result v0

    .line 78
    :goto_0
    mul-int/lit8 v2, v0, 0x1f

    iget-boolean v0, p0, Lcom/dexcom/cgm/a/l;->m_isActive:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    add-int/2addr v0, v2

    .line 79
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/dexcom/cgm/a/l;->m_alertSound:Lcom/dexcom/cgm/model/enums/AlertSound;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/dexcom/cgm/a/l;->m_alertSound:Lcom/dexcom/cgm/model/enums/AlertSound;

    invoke-virtual {v1}, Lcom/dexcom/cgm/model/enums/AlertSound;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    .line 80
    return v0

    :cond_1
    move v0, v1

    .line 77
    goto :goto_0

    :cond_2
    move v0, v1

    .line 78
    goto :goto_1
.end method

.method public final isActive()Z
    .locals 1

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/dexcom/cgm/a/l;->m_isActive:Z

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "EvAlert{m_alertInfo="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/dexcom/cgm/a/l;->m_alertInfo:Lcom/dexcom/cgm/model/AlertStateRecord;

    .line 50
    invoke-virtual {v1}, Lcom/dexcom/cgm/model/AlertStateRecord;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", m_isActive="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/dexcom/cgm/a/l;->m_isActive:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", m_alertSound="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/dexcom/cgm/a/l;->m_alertSound:Lcom/dexcom/cgm/model/enums/AlertSound;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

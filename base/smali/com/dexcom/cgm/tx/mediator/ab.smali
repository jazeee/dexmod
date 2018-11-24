.class public final Lcom/dexcom/cgm/tx/mediator/ab;
.super Ljava/lang/Object;
.source "ConnectCriteria.java"


# instance fields
.field private final m_appAuthenticationPrimaryKey:Ljava/lang/String;

.field private final m_appAuthenticationSecondaryKey:Ljava/lang/String;

.field private final m_appAuthenticationTimestamp:Lcom/dexcom/cgm/k/j;

.field private final m_backfillCriteria:Lcom/dexcom/cgm/tx/mediator/h;

.field private final m_commands:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/dexcom/cgm/model/CgmCommand;",
            ">;"
        }
    .end annotation
.end field

.field private final m_deviceAddress:Ljava/lang/String;

.field private final m_transmitterInfo:Lcom/dexcom/cgm/model/TransmitterInfo;


# direct methods
.method public constructor <init>(Lcom/dexcom/cgm/model/TransmitterInfo;Ljava/util/List;Lcom/dexcom/cgm/tx/mediator/h;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/dexcom/cgm/k/j;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dexcom/cgm/model/TransmitterInfo;",
            "Ljava/util/List",
            "<",
            "Lcom/dexcom/cgm/model/CgmCommand;",
            ">;",
            "Lcom/dexcom/cgm/tx/mediator/h;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/dexcom/cgm/k/j;",
            ")V"
        }
    .end annotation

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p4, p0, Lcom/dexcom/cgm/tx/mediator/ab;->m_deviceAddress:Ljava/lang/String;

    .line 36
    iput-object p1, p0, Lcom/dexcom/cgm/tx/mediator/ab;->m_transmitterInfo:Lcom/dexcom/cgm/model/TransmitterInfo;

    .line 37
    iput-object p2, p0, Lcom/dexcom/cgm/tx/mediator/ab;->m_commands:Ljava/util/List;

    .line 38
    iput-object p3, p0, Lcom/dexcom/cgm/tx/mediator/ab;->m_backfillCriteria:Lcom/dexcom/cgm/tx/mediator/h;

    .line 39
    iput-object p5, p0, Lcom/dexcom/cgm/tx/mediator/ab;->m_appAuthenticationPrimaryKey:Ljava/lang/String;

    .line 40
    iput-object p6, p0, Lcom/dexcom/cgm/tx/mediator/ab;->m_appAuthenticationSecondaryKey:Ljava/lang/String;

    .line 41
    iput-object p7, p0, Lcom/dexcom/cgm/tx/mediator/ab;->m_appAuthenticationTimestamp:Lcom/dexcom/cgm/k/j;

    .line 42
    return-void
.end method


# virtual methods
.method public final getAppAuthenticationPrimaryKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/ab;->m_appAuthenticationPrimaryKey:Ljava/lang/String;

    return-object v0
.end method

.method public final getAppAuthenticationSecondaryKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/ab;->m_appAuthenticationSecondaryKey:Ljava/lang/String;

    return-object v0
.end method

.method public final getAppAuthenticationTimestamp()Lcom/dexcom/cgm/k/j;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/ab;->m_appAuthenticationTimestamp:Lcom/dexcom/cgm/k/j;

    return-object v0
.end method

.method public final getBackfillCriteria()Lcom/dexcom/cgm/tx/mediator/h;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/ab;->m_backfillCriteria:Lcom/dexcom/cgm/tx/mediator/h;

    return-object v0
.end method

.method public final getCommandQueue()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/dexcom/cgm/model/CgmCommand;",
            ">;"
        }
    .end annotation

    .prologue
    .line 46
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/ab;->m_commands:Ljava/util/List;

    return-object v0
.end method

.method public final getDeviceAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/ab;->m_deviceAddress:Ljava/lang/String;

    return-object v0
.end method

.method public final getTransmitterId()Lcom/dexcom/cgm/model/TransmitterId;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/ab;->m_transmitterInfo:Lcom/dexcom/cgm/model/TransmitterInfo;

    invoke-virtual {v0}, Lcom/dexcom/cgm/model/TransmitterInfo;->getTransmitterId()Lcom/dexcom/cgm/model/TransmitterId;

    move-result-object v0

    return-object v0
.end method

.method public final getTransmitterInfo()Lcom/dexcom/cgm/model/TransmitterInfo;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/ab;->m_transmitterInfo:Lcom/dexcom/cgm/model/TransmitterInfo;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0x27

    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{deviceAddress=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/dexcom/cgm/tx/mediator/ab;->m_deviceAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", transmitterInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/dexcom/cgm/tx/mediator/ab;->m_transmitterInfo:Lcom/dexcom/cgm/model/TransmitterInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", commands="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/dexcom/cgm/tx/mediator/ab;->m_commands:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", appAuthenticationPrimaryKey=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/dexcom/cgm/tx/mediator/ab;->m_appAuthenticationPrimaryKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", appAuthenticationSecondaryKey=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/dexcom/cgm/tx/mediator/ab;->m_appAuthenticationSecondaryKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", appAuthenticationTimestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/dexcom/cgm/tx/mediator/ab;->m_appAuthenticationTimestamp:Lcom/dexcom/cgm/k/j;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

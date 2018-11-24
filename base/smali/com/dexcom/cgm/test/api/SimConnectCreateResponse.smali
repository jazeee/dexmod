.class public Lcom/dexcom/cgm/test/api/SimConnectCreateResponse;
.super Ljava/lang/Object;
.source "SimConnectCreateResponse.java"


# instance fields
.field private final m_commands:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/dexcom/cgm/test/api/SimCommand;",
            ">;"
        }
    .end annotation
.end field

.field private final m_systemTime:J

.field private final m_transmitterTime:J


# direct methods
.method public constructor <init>(JJLjava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/dexcom/cgm/test/api/SimCommand;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-wide p1, p0, Lcom/dexcom/cgm/test/api/SimConnectCreateResponse;->m_systemTime:J

    .line 24
    iput-wide p3, p0, Lcom/dexcom/cgm/test/api/SimConnectCreateResponse;->m_transmitterTime:J

    .line 25
    iput-object p5, p0, Lcom/dexcom/cgm/test/api/SimConnectCreateResponse;->m_commands:Ljava/util/ArrayList;

    .line 26
    return-void
.end method


# virtual methods
.method public getCommand(I)Lcom/dexcom/cgm/test/api/SimCommand;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/dexcom/cgm/test/api/SimConnectCreateResponse;->m_commands:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/test/api/SimCommand;

    return-object v0
.end method

.method public getCommandsSize()I
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/dexcom/cgm/test/api/SimConnectCreateResponse;->m_commands:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getSystemTime()J
    .locals 2

    .prologue
    .line 30
    iget-wide v0, p0, Lcom/dexcom/cgm/test/api/SimConnectCreateResponse;->m_systemTime:J

    return-wide v0
.end method

.method public getTransmitterTime()J
    .locals 2

    .prologue
    .line 35
    iget-wide v0, p0, Lcom/dexcom/cgm/test/api/SimConnectCreateResponse;->m_transmitterTime:J

    return-wide v0
.end method

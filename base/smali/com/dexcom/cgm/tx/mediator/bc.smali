.class public final Lcom/dexcom/cgm/tx/mediator/bc;
.super Ljava/lang/Object;
.source "StopSessionResponse.java"


# instance fields
.field private m_command:Lcom/dexcom/cgm/model/CgmCommand;

.field private m_isRequestComplete:Z

.field private m_rawResponse:[B

.field private m_requestTime:Lcom/dexcom/cgm/k/m;

.field private m_sensorStopTime:Lcom/dexcom/cgm/k/n;

.field private m_stopSessionResponseCode:Lcom/dexcom/cgm/model/enums/SessionLogType;


# direct methods
.method public constructor <init>(ZLcom/dexcom/cgm/model/CgmCommand;Lcom/dexcom/cgm/k/m;Lcom/dexcom/cgm/k/n;Lcom/dexcom/cgm/model/enums/SessionLogType;[B)V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-boolean p1, p0, Lcom/dexcom/cgm/tx/mediator/bc;->m_isRequestComplete:Z

    .line 51
    iput-object p2, p0, Lcom/dexcom/cgm/tx/mediator/bc;->m_command:Lcom/dexcom/cgm/model/CgmCommand;

    .line 52
    iput-object p3, p0, Lcom/dexcom/cgm/tx/mediator/bc;->m_requestTime:Lcom/dexcom/cgm/k/m;

    .line 53
    iput-object p4, p0, Lcom/dexcom/cgm/tx/mediator/bc;->m_sensorStopTime:Lcom/dexcom/cgm/k/n;

    .line 54
    iput-object p5, p0, Lcom/dexcom/cgm/tx/mediator/bc;->m_stopSessionResponseCode:Lcom/dexcom/cgm/model/enums/SessionLogType;

    .line 55
    iput-object p6, p0, Lcom/dexcom/cgm/tx/mediator/bc;->m_rawResponse:[B

    .line 56
    return-void
.end method

.method public static createComplete(Lcom/dexcom/cgm/model/CgmCommand;Lcom/dexcom/cgm/k/m;Lcom/dexcom/cgm/k/n;Lcom/dexcom/cgm/model/enums/SessionLogType;[B)Lcom/dexcom/cgm/tx/mediator/bc;
    .locals 7

    .prologue
    .line 33
    new-instance v0, Lcom/dexcom/cgm/tx/mediator/bc;

    const/4 v1, 0x1

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/dexcom/cgm/tx/mediator/bc;-><init>(ZLcom/dexcom/cgm/model/CgmCommand;Lcom/dexcom/cgm/k/m;Lcom/dexcom/cgm/k/n;Lcom/dexcom/cgm/model/enums/SessionLogType;[B)V

    return-object v0
.end method


# virtual methods
.method public final getCommand()Lcom/dexcom/cgm/model/CgmCommand;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/bc;->m_command:Lcom/dexcom/cgm/model/CgmCommand;

    return-object v0
.end method

.method public final getRawResponse()[B
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/bc;->m_rawResponse:[B

    return-object v0
.end method

.method public final getRequestTime()Lcom/dexcom/cgm/k/m;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/bc;->m_requestTime:Lcom/dexcom/cgm/k/m;

    return-object v0
.end method

.method public final getSensorStopTime()Lcom/dexcom/cgm/k/n;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/bc;->m_sensorStopTime:Lcom/dexcom/cgm/k/n;

    return-object v0
.end method

.method public final getStopSessionResponseCode()Lcom/dexcom/cgm/model/enums/SessionLogType;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/bc;->m_stopSessionResponseCode:Lcom/dexcom/cgm/model/enums/SessionLogType;

    return-object v0
.end method

.method public final isRequestComplete()Z
    .locals 1

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/dexcom/cgm/tx/mediator/bc;->m_isRequestComplete:Z

    return v0
.end method

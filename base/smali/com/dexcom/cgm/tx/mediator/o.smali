.class public final Lcom/dexcom/cgm/tx/mediator/o;
.super Ljava/lang/Object;
.source "CalibrationResponse.java"


# instance fields
.field private m_command:Lcom/dexcom/cgm/model/CgmCommand;

.field private m_isRequestComplete:Z

.field private m_meterEntryType:Lcom/dexcom/cgm/model/enums/MeterEntryType;

.field private m_rawResponse:[B

.field private m_requestTime:Lcom/dexcom/cgm/k/m;


# direct methods
.method public constructor <init>(ZLcom/dexcom/cgm/model/CgmCommand;Lcom/dexcom/cgm/k/m;Lcom/dexcom/cgm/model/enums/MeterEntryType;[B)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-boolean p1, p0, Lcom/dexcom/cgm/tx/mediator/o;->m_isRequestComplete:Z

    .line 46
    iput-object p2, p0, Lcom/dexcom/cgm/tx/mediator/o;->m_command:Lcom/dexcom/cgm/model/CgmCommand;

    .line 47
    iput-object p3, p0, Lcom/dexcom/cgm/tx/mediator/o;->m_requestTime:Lcom/dexcom/cgm/k/m;

    .line 48
    iput-object p4, p0, Lcom/dexcom/cgm/tx/mediator/o;->m_meterEntryType:Lcom/dexcom/cgm/model/enums/MeterEntryType;

    .line 49
    iput-object p5, p0, Lcom/dexcom/cgm/tx/mediator/o;->m_rawResponse:[B

    .line 50
    return-void
.end method

.method public static createComplete(Lcom/dexcom/cgm/model/CgmCommand;Lcom/dexcom/cgm/k/m;Lcom/dexcom/cgm/model/enums/MeterEntryType;[B)Lcom/dexcom/cgm/tx/mediator/o;
    .locals 6

    .prologue
    .line 30
    new-instance v0, Lcom/dexcom/cgm/tx/mediator/o;

    const/4 v1, 0x1

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/dexcom/cgm/tx/mediator/o;-><init>(ZLcom/dexcom/cgm/model/CgmCommand;Lcom/dexcom/cgm/k/m;Lcom/dexcom/cgm/model/enums/MeterEntryType;[B)V

    return-object v0
.end method


# virtual methods
.method public final getCommand()Lcom/dexcom/cgm/model/CgmCommand;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/o;->m_command:Lcom/dexcom/cgm/model/CgmCommand;

    return-object v0
.end method

.method public final getMeterEntryType()Lcom/dexcom/cgm/model/enums/MeterEntryType;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/o;->m_meterEntryType:Lcom/dexcom/cgm/model/enums/MeterEntryType;

    return-object v0
.end method

.method public final getRawResponse()[B
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/o;->m_rawResponse:[B

    return-object v0
.end method

.method public final getRequestTime()Lcom/dexcom/cgm/k/m;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/o;->m_requestTime:Lcom/dexcom/cgm/k/m;

    return-object v0
.end method

.method public final isRequestComplete()Z
    .locals 1

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/dexcom/cgm/tx/mediator/o;->m_isRequestComplete:Z

    return v0
.end method

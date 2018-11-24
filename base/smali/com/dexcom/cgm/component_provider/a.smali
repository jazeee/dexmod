.class public Lcom/dexcom/cgm/component_provider/a;
.super Ljava/lang/Object;
.source "CgmComponentProvider.java"


# instance fields
.field private final m_alertSystem:Lcom/dexcom/cgm/a/f;

.field private final m_appCompatabilityService$13119d24:Lcom/dexcom/a/a/a;

.field private m_batteryLevelMonitor:Lcom/dexcom/c/a;

.field private final m_bulkDataService:Lcom/dexcom/cgm/bulkdata/BulkDataService;

.field private final m_cgmDal:Lcom/dexcom/cgm/d/a;

.field private final m_cgmDatabase:Lcom/dexcom/cgm/e/f;

.field private final m_cgmProvider:Lcom/dexcom/cgm/b/f;

.field private final m_context:Landroid/content/Context;

.field private m_isAppCompatibilityEnabled:Z

.field private m_isDataPublished:Z

.field private final m_shareService:Lcom/dexcom/cgm/share/ShareService;

.field private m_systemHealthChecker:Lcom/dexcom/cgm/j/c;

.field private final m_txMediator:Lcom/dexcom/cgm/tx/mediator/bh;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1016
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1017
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/dexcom/cgm/b/f;Lcom/dexcom/cgm/a/f;Lcom/dexcom/cgm/e/f;Lcom/dexcom/cgm/d/a;Lcom/dexcom/cgm/tx/mediator/bh;Lcom/dexcom/cgm/share/ShareService;Lcom/dexcom/cgm/bulkdata/BulkDataService;Lcom/dexcom/a/a/a;Lcom/dexcom/cgm/j/c;Lcom/dexcom/c/a;ZZ)V
    .locals 1

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/component_provider/a;->m_context:Landroid/content/Context;

    .line 80
    iput-object p2, p0, Lcom/dexcom/cgm/component_provider/a;->m_cgmProvider:Lcom/dexcom/cgm/b/f;

    .line 81
    iput-object p3, p0, Lcom/dexcom/cgm/component_provider/a;->m_alertSystem:Lcom/dexcom/cgm/a/f;

    .line 82
    iput-object p4, p0, Lcom/dexcom/cgm/component_provider/a;->m_cgmDatabase:Lcom/dexcom/cgm/e/f;

    .line 83
    iput-object p5, p0, Lcom/dexcom/cgm/component_provider/a;->m_cgmDal:Lcom/dexcom/cgm/d/a;

    .line 84
    iput-object p6, p0, Lcom/dexcom/cgm/component_provider/a;->m_txMediator:Lcom/dexcom/cgm/tx/mediator/bh;

    .line 85
    iput-object p7, p0, Lcom/dexcom/cgm/component_provider/a;->m_shareService:Lcom/dexcom/cgm/share/ShareService;

    .line 86
    iput-object p8, p0, Lcom/dexcom/cgm/component_provider/a;->m_bulkDataService:Lcom/dexcom/cgm/bulkdata/BulkDataService;

    .line 87
    iput-object p9, p0, Lcom/dexcom/cgm/component_provider/a;->m_appCompatabilityService$13119d24:Lcom/dexcom/a/a/a;

    .line 88
    iput-object p10, p0, Lcom/dexcom/cgm/component_provider/a;->m_systemHealthChecker:Lcom/dexcom/cgm/j/c;

    .line 89
    iput-object p11, p0, Lcom/dexcom/cgm/component_provider/a;->m_batteryLevelMonitor:Lcom/dexcom/c/a;

    .line 90
    iput-boolean p12, p0, Lcom/dexcom/cgm/component_provider/a;->m_isDataPublished:Z

    .line 91
    iput-boolean p13, p0, Lcom/dexcom/cgm/component_provider/a;->m_isAppCompatibilityEnabled:Z

    .line 92
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/dexcom/cgm/b/f;Lcom/dexcom/cgm/a/f;Lcom/dexcom/cgm/e/f;Lcom/dexcom/cgm/d/a;Lcom/dexcom/cgm/tx/mediator/bh;Lcom/dexcom/cgm/share/ShareService;Lcom/dexcom/cgm/bulkdata/BulkDataService;Lcom/dexcom/a/a/a;Lcom/dexcom/cgm/j/c;Lcom/dexcom/c/a;ZZLcom/dexcom/cgm/component_provider/a;)V
    .locals 0

    .prologue
    .line 48
    invoke-direct/range {p0 .. p13}, Lcom/dexcom/cgm/component_provider/a;-><init>(Landroid/content/Context;Lcom/dexcom/cgm/b/f;Lcom/dexcom/cgm/a/f;Lcom/dexcom/cgm/e/f;Lcom/dexcom/cgm/d/a;Lcom/dexcom/cgm/tx/mediator/bh;Lcom/dexcom/cgm/share/ShareService;Lcom/dexcom/cgm/bulkdata/BulkDataService;Lcom/dexcom/a/a/a;Lcom/dexcom/cgm/j/c;Lcom/dexcom/c/a;ZZ)V

    return-void
.end method

.method public static getStartSessionLogType(B)Lcom/dexcom/cgm/model/enums/SessionLogType;
    .locals 3

    .prologue
    .line 1022
    packed-switch p0, :pswitch_data_0

    .line 1037
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown start session response code: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1025
    :pswitch_0
    sget-object v0, Lcom/dexcom/cgm/model/enums/SessionLogType;->CGMSessionStartedOnTxFromThisDisplay:Lcom/dexcom/cgm/model/enums/SessionLogType;

    .line 1039
    :goto_0
    return-object v0

    .line 1028
    :pswitch_1
    sget-object v0, Lcom/dexcom/cgm/model/enums/SessionLogType;->CGMSessionJoinedOnTx:Lcom/dexcom/cgm/model/enums/SessionLogType;

    goto :goto_0

    .line 1031
    :pswitch_2
    sget-object v0, Lcom/dexcom/cgm/model/enums/SessionLogType;->CGMSessionStaleStartCommand:Lcom/dexcom/cgm/model/enums/SessionLogType;

    goto :goto_0

    .line 1034
    :pswitch_3
    sget-object v0, Lcom/dexcom/cgm/model/enums/SessionLogType;->CGMSessionStoppedDueToTransmitterEndOfLife:Lcom/dexcom/cgm/model/enums/SessionLogType;

    goto :goto_0

    .line 1022
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static getStopSessionLogType(B)Lcom/dexcom/cgm/model/enums/SessionLogType;
    .locals 3

    .prologue
    .line 1045
    packed-switch p0, :pswitch_data_0

    .line 1058
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown stop session response code: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1049
    :pswitch_0
    sget-object v0, Lcom/dexcom/cgm/model/enums/SessionLogType;->CGMSessionStoppedOnTxFromThisDisplay:Lcom/dexcom/cgm/model/enums/SessionLogType;

    .line 1060
    :goto_0
    return-object v0

    .line 1052
    :pswitch_1
    sget-object v0, Lcom/dexcom/cgm/model/enums/SessionLogType;->CGMSessionNotMatchingForStop:Lcom/dexcom/cgm/model/enums/SessionLogType;

    goto :goto_0

    .line 1055
    :pswitch_2
    sget-object v0, Lcom/dexcom/cgm/model/enums/SessionLogType;->CGMSessionStaleStopCommand:Lcom/dexcom/cgm/model/enums/SessionLogType;

    goto :goto_0

    .line 1045
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public final getAlertSystem()Lcom/dexcom/cgm/a/f;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/dexcom/cgm/component_provider/a;->m_alertSystem:Lcom/dexcom/cgm/a/f;

    return-object v0
.end method

.method public final getAppCompatibilityService$41724f43()Lcom/dexcom/a/a/a;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/dexcom/cgm/component_provider/a;->m_appCompatabilityService$13119d24:Lcom/dexcom/a/a/a;

    return-object v0
.end method

.method public final getBulkDataService()Lcom/dexcom/cgm/bulkdata/BulkDataService;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/dexcom/cgm/component_provider/a;->m_bulkDataService:Lcom/dexcom/cgm/bulkdata/BulkDataService;

    return-object v0
.end method

.method public final getCgmDal()Lcom/dexcom/cgm/d/a;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/dexcom/cgm/component_provider/a;->m_cgmDal:Lcom/dexcom/cgm/d/a;

    return-object v0
.end method

.method public final getCgmDatabase()Lcom/dexcom/cgm/e/f;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/dexcom/cgm/component_provider/a;->m_cgmDatabase:Lcom/dexcom/cgm/e/f;

    return-object v0
.end method

.method public final getCgmProvider()Lcom/dexcom/cgm/b/f;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/dexcom/cgm/component_provider/a;->m_cgmProvider:Lcom/dexcom/cgm/b/f;

    return-object v0
.end method

.method public final getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/dexcom/cgm/component_provider/a;->m_context:Landroid/content/Context;

    return-object v0
.end method

.method public final getIsAppCompatibilityEnabled()Z
    .locals 1

    .prologue
    .line 167
    iget-boolean v0, p0, Lcom/dexcom/cgm/component_provider/a;->m_isAppCompatibilityEnabled:Z

    return v0
.end method

.method public final getIsDataPublished()Z
    .locals 1

    .prologue
    .line 162
    iget-boolean v0, p0, Lcom/dexcom/cgm/component_provider/a;->m_isDataPublished:Z

    return v0
.end method

.method public final getShareService()Lcom/dexcom/cgm/share/ShareService;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/dexcom/cgm/component_provider/a;->m_shareService:Lcom/dexcom/cgm/share/ShareService;

    return-object v0
.end method

.method public final getSystemHealthChecker()Lcom/dexcom/cgm/j/c;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/dexcom/cgm/component_provider/a;->m_systemHealthChecker:Lcom/dexcom/cgm/j/c;

    return-object v0
.end method

.method public final getTxMediator()Lcom/dexcom/cgm/tx/mediator/bh;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/dexcom/cgm/component_provider/a;->m_txMediator:Lcom/dexcom/cgm/tx/mediator/bh;

    return-object v0
.end method

.method public final teardown()V
    .locals 0

    .prologue
    .line 99
    return-void
.end method

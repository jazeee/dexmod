.class final Lcom/dexcom/cgm/b/m;
.super Ljava/lang/Object;
.source "CgmProviderComponent.java"

# interfaces
.implements Lcom/dexcom/cgm/tx/mediator/ah;


# instance fields
.field private a:Lcom/dexcom/cgm/tx/mediator/h;

.field private synthetic b:Lcom/dexcom/cgm/b/j;


# direct methods
.method private constructor <init>(Lcom/dexcom/cgm/b/j;)V
    .locals 0

    .prologue
    .line 969
    iput-object p1, p0, Lcom/dexcom/cgm/b/m;->b:Lcom/dexcom/cgm/b/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/dexcom/cgm/b/j;B)V
    .locals 0

    .prologue
    .line 969
    invoke-direct {p0, p1}, Lcom/dexcom/cgm/b/m;-><init>(Lcom/dexcom/cgm/b/j;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/dexcom/cgm/d/a;Lcom/dexcom/cgm/model/TransmitterId;Lcom/dexcom/cgm/k/n;)V
    .locals 4

    .prologue
    .line 989
    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x3

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v0

    .line 990
    invoke-static {p1, p2, p3, v0, v1}, Lcom/dexcom/cgm/tx/mediator/h;->create(Lcom/dexcom/cgm/d/a;Lcom/dexcom/cgm/model/TransmitterId;Lcom/dexcom/cgm/k/n;J)Lcom/dexcom/cgm/tx/mediator/h;

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/b/m;->a:Lcom/dexcom/cgm/tx/mediator/h;

    .line 991
    return-void
.end method

.method public final getConnection()Lcom/dexcom/cgm/tx/mediator/ab;
    .locals 8

    .prologue
    .line 976
    iget-object v0, p0, Lcom/dexcom/cgm/b/m;->b:Lcom/dexcom/cgm/b/j;

    invoke-static {v0}, Lcom/dexcom/cgm/b/j;->access$900(Lcom/dexcom/cgm/b/j;)Lcom/dexcom/cgm/b/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dexcom/cgm/b/o;->a()Ljava/util/List;

    move-result-object v2

    .line 977
    new-instance v0, Lcom/dexcom/cgm/tx/mediator/ab;

    iget-object v1, p0, Lcom/dexcom/cgm/b/m;->b:Lcom/dexcom/cgm/b/j;

    .line 978
    invoke-static {v1}, Lcom/dexcom/cgm/b/j;->access$1000(Lcom/dexcom/cgm/b/j;)Lcom/dexcom/cgm/model/TransmitterInfo;

    move-result-object v1

    iget-object v3, p0, Lcom/dexcom/cgm/b/m;->a:Lcom/dexcom/cgm/tx/mediator/h;

    iget-object v4, p0, Lcom/dexcom/cgm/b/m;->b:Lcom/dexcom/cgm/b/j;

    .line 981
    invoke-static {v4}, Lcom/dexcom/cgm/b/j;->access$1100(Lcom/dexcom/cgm/b/j;)Lcom/dexcom/cgm/model/BluetoothDeviceRecord;

    move-result-object v4

    invoke-virtual {v4}, Lcom/dexcom/cgm/model/BluetoothDeviceRecord;->getDeviceAddress()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/dexcom/cgm/b/m;->b:Lcom/dexcom/cgm/b/j;

    .line 982
    invoke-static {v5}, Lcom/dexcom/cgm/b/j;->access$1100(Lcom/dexcom/cgm/b/j;)Lcom/dexcom/cgm/model/BluetoothDeviceRecord;

    move-result-object v5

    invoke-virtual {v5}, Lcom/dexcom/cgm/model/BluetoothDeviceRecord;->getAppAuthenticationPrimaryKey()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/dexcom/cgm/b/m;->b:Lcom/dexcom/cgm/b/j;

    .line 983
    invoke-static {v6}, Lcom/dexcom/cgm/b/j;->access$1100(Lcom/dexcom/cgm/b/j;)Lcom/dexcom/cgm/model/BluetoothDeviceRecord;

    move-result-object v6

    invoke-virtual {v6}, Lcom/dexcom/cgm/model/BluetoothDeviceRecord;->getAppAuthenticationSecondaryKey()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/dexcom/cgm/b/m;->b:Lcom/dexcom/cgm/b/j;

    .line 984
    invoke-static {v7}, Lcom/dexcom/cgm/b/j;->access$1100(Lcom/dexcom/cgm/b/j;)Lcom/dexcom/cgm/model/BluetoothDeviceRecord;

    move-result-object v7

    invoke-virtual {v7}, Lcom/dexcom/cgm/model/BluetoothDeviceRecord;->getAppAuthenticationTimestamp()Lcom/dexcom/cgm/k/j;

    move-result-object v7

    invoke-direct/range {v0 .. v7}, Lcom/dexcom/cgm/tx/mediator/ab;-><init>(Lcom/dexcom/cgm/model/TransmitterInfo;Ljava/util/List;Lcom/dexcom/cgm/tx/mediator/h;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/dexcom/cgm/k/j;)V

    return-object v0
.end method

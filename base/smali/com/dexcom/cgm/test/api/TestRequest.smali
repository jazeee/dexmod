.class public Lcom/dexcom/cgm/test/api/TestRequest;
.super Ljava/lang/Object;
.source "TestRequest.java"


# static fields
.field private static s_sequenceNumber:J


# instance fields
.field private payload:Ljava/lang/String;

.field private request:Lcom/dexcom/cgm/test/api/TestRequestType;

.field private sequenceNumber:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 15
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/dexcom/cgm/test/api/TestRequest;->s_sequenceNumber:J

    return-void
.end method

.method public constructor <init>(Lcom/dexcom/cgm/test/api/TestRequestType;)V
    .locals 1

    .prologue
    .line 26
    const-string v0, ""

    invoke-direct {p0, p1, v0}, Lcom/dexcom/cgm/test/api/TestRequest;-><init>(Lcom/dexcom/cgm/test/api/TestRequestType;Ljava/lang/String;)V

    .line 27
    return-void
.end method

.method public constructor <init>(Lcom/dexcom/cgm/test/api/TestRequestType;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    invoke-static {}, Lcom/dexcom/cgm/test/api/TestRequest;->getNextSequenceNumber()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/dexcom/cgm/test/api/TestRequest;->sequenceNumber:J

    .line 31
    iput-object p1, p0, Lcom/dexcom/cgm/test/api/TestRequest;->request:Lcom/dexcom/cgm/test/api/TestRequestType;

    .line 32
    iput-object p2, p0, Lcom/dexcom/cgm/test/api/TestRequest;->payload:Ljava/lang/String;

    .line 33
    return-void
.end method

.method private static declared-synchronized getNextSequenceNumber()J
    .locals 6

    .prologue
    .line 18
    const-class v1, Lcom/dexcom/cgm/test/api/TestRequest;

    monitor-enter v1

    :try_start_0
    sget-wide v2, Lcom/dexcom/cgm/test/api/TestRequest;->s_sequenceNumber:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    sput-wide v2, Lcom/dexcom/cgm/test/api/TestRequest;->s_sequenceNumber:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-wide v2

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public getPayload()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/dexcom/cgm/test/api/TestRequest;->payload:Ljava/lang/String;

    return-object v0
.end method

.method public getRequest()Lcom/dexcom/cgm/test/api/TestRequestType;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/dexcom/cgm/test/api/TestRequest;->request:Lcom/dexcom/cgm/test/api/TestRequestType;

    return-object v0
.end method

.method public getSequenceNumber()J
    .locals 2

    .prologue
    .line 37
    iget-wide v0, p0, Lcom/dexcom/cgm/test/api/TestRequest;->sequenceNumber:J

    return-wide v0
.end method

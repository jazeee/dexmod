.class public final Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber;
.super Ljava/lang/Object;
.source "SHealthSubscriber.java"

# interfaces
.implements Lcom/dexcom/cgm/h/c;


# static fields
.field private static m_sHealthSubscriberInstance:Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber;


# instance fields
.field private m_beginTime:Lcom/dexcom/cgm/k/j;

.field private m_cgmProvider:Lcom/dexcom/cgm/i/a;

.field private m_context:Landroid/content/Context;

.field private m_currentTime:Lcom/dexcom/cgm/k/j;

.field private m_endTime:Lcom/dexcom/cgm/k/j;

.field private m_handlerThreadStatus:Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber$SHealthHandlerThreadStatus;

.field private m_insertHandlerThread:Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber$InsertHandlerThread;

.field private m_lastListReached:Ljava/lang/Boolean;

.field private m_offset:J

.field private m_start:J

.field private m_timeStampOfLastGlucoseWrittenToSHealth:Lcom/dexcom/cgm/k/j;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object v0, p0, Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber;->m_endTime:Lcom/dexcom/cgm/k/j;

    .line 45
    iput-object v0, p0, Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber;->m_currentTime:Lcom/dexcom/cgm/k/j;

    .line 46
    iput-object v0, p0, Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber;->m_beginTime:Lcom/dexcom/cgm/k/j;

    .line 47
    iput-object v0, p0, Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber;->m_timeStampOfLastGlucoseWrittenToSHealth:Lcom/dexcom/cgm/k/j;

    .line 53
    sget-object v0, Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber$SHealthHandlerThreadStatus;->FREE:Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber$SHealthHandlerThreadStatus;

    iput-object v0, p0, Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber;->m_handlerThreadStatus:Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber$SHealthHandlerThreadStatus;

    .line 55
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber;->m_lastListReached:Ljava/lang/Boolean;

    .line 62
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/dexcom/cgm/i/a;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object v0, p0, Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber;->m_endTime:Lcom/dexcom/cgm/k/j;

    .line 45
    iput-object v0, p0, Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber;->m_currentTime:Lcom/dexcom/cgm/k/j;

    .line 46
    iput-object v0, p0, Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber;->m_beginTime:Lcom/dexcom/cgm/k/j;

    .line 47
    iput-object v0, p0, Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber;->m_timeStampOfLastGlucoseWrittenToSHealth:Lcom/dexcom/cgm/k/j;

    .line 53
    sget-object v0, Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber$SHealthHandlerThreadStatus;->FREE:Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber$SHealthHandlerThreadStatus;

    iput-object v0, p0, Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber;->m_handlerThreadStatus:Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber$SHealthHandlerThreadStatus;

    .line 55
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber;->m_lastListReached:Ljava/lang/Boolean;

    .line 66
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber;->m_context:Landroid/content/Context;

    .line 67
    iput-object p2, p0, Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber;->m_cgmProvider:Lcom/dexcom/cgm/i/a;

    .line 68
    sput-object p0, Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber;->m_sHealthSubscriberInstance:Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber;

    .line 69
    return-void
.end method

.method static synthetic access$000(Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber;)Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber$InsertHandlerThread;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber;->m_insertHandlerThread:Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber$InsertHandlerThread;

    return-object v0
.end method

.method static synthetic access$002(Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber;Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber$InsertHandlerThread;)Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber$InsertHandlerThread;
    .locals 0

    .prologue
    .line 37
    iput-object p1, p0, Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber;->m_insertHandlerThread:Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber$InsertHandlerThread;

    return-object p1
.end method

.method static synthetic access$100(Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber;)Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber;->m_lastListReached:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$102(Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0

    .prologue
    .line 37
    iput-object p1, p0, Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber;->m_lastListReached:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber;->m_context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber;)Lcom/dexcom/cgm/k/j;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber;->m_currentTime:Lcom/dexcom/cgm/k/j;

    return-object v0
.end method

.method static synthetic access$202(Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber;Lcom/dexcom/cgm/k/j;)Lcom/dexcom/cgm/k/j;
    .locals 0

    .prologue
    .line 37
    iput-object p1, p0, Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber;->m_currentTime:Lcom/dexcom/cgm/k/j;

    return-object p1
.end method

.method static synthetic access$300(Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber;)Lcom/dexcom/cgm/k/j;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber;->m_beginTime:Lcom/dexcom/cgm/k/j;

    return-object v0
.end method

.method static synthetic access$302(Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber;Lcom/dexcom/cgm/k/j;)Lcom/dexcom/cgm/k/j;
    .locals 0

    .prologue
    .line 37
    iput-object p1, p0, Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber;->m_beginTime:Lcom/dexcom/cgm/k/j;

    return-object p1
.end method

.method static synthetic access$400(Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber;)Lcom/dexcom/cgm/i/a;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber;->m_cgmProvider:Lcom/dexcom/cgm/i/a;

    return-object v0
.end method

.method static synthetic access$500(Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber;)Lcom/dexcom/cgm/k/j;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber;->m_endTime:Lcom/dexcom/cgm/k/j;

    return-object v0
.end method

.method static synthetic access$502(Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber;Lcom/dexcom/cgm/k/j;)Lcom/dexcom/cgm/k/j;
    .locals 0

    .prologue
    .line 37
    iput-object p1, p0, Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber;->m_endTime:Lcom/dexcom/cgm/k/j;

    return-object p1
.end method

.method static synthetic access$602(Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber;Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber$SHealthHandlerThreadStatus;)Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber$SHealthHandlerThreadStatus;
    .locals 0

    .prologue
    .line 37
    iput-object p1, p0, Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber;->m_handlerThreadStatus:Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber$SHealthHandlerThreadStatus;

    return-object p1
.end method

.method static synthetic access$700(Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber;)Lcom/dexcom/cgm/k/j;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber;->m_timeStampOfLastGlucoseWrittenToSHealth:Lcom/dexcom/cgm/k/j;

    return-object v0
.end method

.method static synthetic access$702(Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber;Lcom/dexcom/cgm/k/j;)Lcom/dexcom/cgm/k/j;
    .locals 0

    .prologue
    .line 37
    iput-object p1, p0, Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber;->m_timeStampOfLastGlucoseWrittenToSHealth:Lcom/dexcom/cgm/k/j;

    return-object p1
.end method

.method static synthetic access$800(Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber;)J
    .locals 2

    .prologue
    .line 37
    iget-wide v0, p0, Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber;->m_start:J

    return-wide v0
.end method

.method static synthetic access$802(Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber;J)J
    .locals 1

    .prologue
    .line 37
    iput-wide p1, p0, Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber;->m_start:J

    return-wide p1
.end method

.method static synthetic access$900(Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber;)J
    .locals 2

    .prologue
    .line 37
    iget-wide v0, p0, Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber;->m_offset:J

    return-wide v0
.end method

.method static synthetic access$902(Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber;J)J
    .locals 1

    .prologue
    .line 37
    iput-wide p1, p0, Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber;->m_offset:J

    return-wide p1
.end method

.method public static getInstance(Landroid/content/Context;Lcom/dexcom/cgm/i/a;)Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber;
    .locals 1

    .prologue
    .line 73
    sget-object v0, Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber;->m_sHealthSubscriberInstance:Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber;

    if-nez v0, :cond_0

    .line 75
    new-instance v0, Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber;

    invoke-direct {v0, p0, p1}, Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber;-><init>(Landroid/content/Context;Lcom/dexcom/cgm/i/a;)V

    sput-object v0, Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber;->m_sHealthSubscriberInstance:Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber;

    .line 77
    :cond_0
    sget-object v0, Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber;->m_sHealthSubscriberInstance:Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber;

    return-object v0
.end method

.method private isSHealthInstalled()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 109
    iget-object v1, p0, Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber;->m_context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 112
    :try_start_0
    iget-object v2, p0, Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber;->m_context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/dexcom/cgm/activities/R$string;->sHealth_package_name:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static triggerBackFill()V
    .locals 2

    .prologue
    .line 82
    sget-object v0, Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber;->m_sHealthSubscriberInstance:Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber;->evCgmData(Lcom/dexcom/cgm/h/e;)V

    .line 83
    return-void
.end method


# virtual methods
.method public final evCgmData(Lcom/dexcom/cgm/h/e;)V
    .locals 2

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber;->isSHealthInstalled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber;->m_handlerThreadStatus:Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber$SHealthHandlerThreadStatus;

    sget-object v1, Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber$SHealthHandlerThreadStatus;->FREE:Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber$SHealthHandlerThreadStatus;

    if-ne v0, v1, :cond_0

    .line 93
    sget-object v0, Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber$SHealthHandlerThreadStatus;->BUSY:Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber$SHealthHandlerThreadStatus;

    iput-object v0, p0, Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber;->m_handlerThreadStatus:Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber$SHealthHandlerThreadStatus;

    .line 94
    new-instance v0, Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber$InsertHandlerThread;

    const-string v1, "SHealth HandlerThread"

    invoke-direct {v0, p0, v1}, Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber$InsertHandlerThread;-><init>(Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber;->m_insertHandlerThread:Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber$InsertHandlerThread;

    .line 95
    iget-object v0, p0, Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber;->m_insertHandlerThread:Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber$InsertHandlerThread;

    iget-object v0, v0, Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber$InsertHandlerThread;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber$1;

    invoke-direct {v1, p0}, Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber$1;-><init>(Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 105
    :cond_0
    return-void
.end method

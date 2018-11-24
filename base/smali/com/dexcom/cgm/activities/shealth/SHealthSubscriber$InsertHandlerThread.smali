.class Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber$InsertHandlerThread;
.super Landroid/os/HandlerThread;
.source "SHealthSubscriber.java"


# instance fields
.field mHandler:Landroid/os/Handler;

.field private final mResultListener:Lcom/samsung/android/sdk/healthdata/aj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/sdk/healthdata/aj",
            "<",
            "Lcom/samsung/android/sdk/healthdata/HealthResultHolder$BaseResult;",
            ">;"
        }
    .end annotation
.end field

.field m_resolver:Lcom/samsung/android/sdk/healthdata/HealthDataResolver;

.field m_sHealthAdapter:Lcom/dexcom/cgm/activities/shealth/SHealthAdapter;

.field final synthetic this$0:Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber;


# direct methods
.method public constructor <init>(Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 129
    iput-object p1, p0, Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber$InsertHandlerThread;->this$0:Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber;

    .line 130
    invoke-direct {p0, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 124
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber$InsertHandlerThread;->mHandler:Landroid/os/Handler;

    .line 272
    new-instance v0, Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber$InsertHandlerThread$1;

    invoke-direct {v0, p0}, Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber$InsertHandlerThread$1;-><init>(Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber$InsertHandlerThread;)V

    iput-object v0, p0, Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber$InsertHandlerThread;->mResultListener:Lcom/samsung/android/sdk/healthdata/aj;

    .line 131
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber$InsertHandlerThread;->start()V

    .line 132
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber$InsertHandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber$InsertHandlerThread;->mHandler:Landroid/os/Handler;

    .line 133
    return-void
.end method

.method static synthetic access$1000(Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber$InsertHandlerThread;)V
    .locals 0

    .prologue
    .line 122
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber$InsertHandlerThread;->insertionsCompleted()V

    return-void
.end method

.method private convertGlucose(I)Ljava/lang/Float;
    .locals 2

    .prologue
    .line 309
    int-to-float v0, p1

    const v1, 0x419028f6    # 18.02f

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method private getNextGlucoseList()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/dexcom/cgm/h/a/c;",
            ">;"
        }
    .end annotation

    .prologue
    const-wide/16 v8, 0x3

    .line 160
    :cond_0
    iget-object v0, p0, Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber$InsertHandlerThread;->this$0:Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber;

    invoke-static {v0}, Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber;->access$200(Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber;)Lcom/dexcom/cgm/k/j;

    move-result-object v0

    if-nez v0, :cond_1

    .line 162
    iget-object v0, p0, Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber$InsertHandlerThread;->this$0:Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber;

    invoke-static {}, Lcom/dexcom/cgm/k/j;->getCurrentSystemTime()Lcom/dexcom/cgm/k/j;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber;->access$202(Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber;Lcom/dexcom/cgm/k/j;)Lcom/dexcom/cgm/k/j;

    .line 165
    :cond_1
    iget-object v0, p0, Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber$InsertHandlerThread;->this$0:Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber;

    invoke-static {v0}, Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber;->access$300(Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber;)Lcom/dexcom/cgm/k/j;

    move-result-object v0

    if-nez v0, :cond_3

    .line 167
    iget-object v0, p0, Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber$InsertHandlerThread;->this$0:Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber;

    new-instance v1, Lcom/dexcom/cgm/k/j;

    iget-object v2, p0, Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber$InsertHandlerThread;->this$0:Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber;

    invoke-static {v2}, Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber;->access$400(Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber;)Lcom/dexcom/cgm/i/a;

    move-result-object v2

    invoke-interface {v2}, Lcom/dexcom/cgm/i/a;->getKeyValues()Lcom/dexcom/cgm/d/e;

    move-result-object v2

    .line 168
    invoke-virtual {v2}, Lcom/dexcom/cgm/d/e;->getLastSHealthEGVTimeStamp()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Lcom/dexcom/cgm/k/j;-><init>(J)V

    .line 167
    invoke-static {v0, v1}, Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber;->access$302(Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber;Lcom/dexcom/cgm/k/j;)Lcom/dexcom/cgm/k/j;

    .line 169
    iget-object v0, p0, Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber$InsertHandlerThread;->this$0:Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber;

    invoke-static {v0}, Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber;->access$300(Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber;)Lcom/dexcom/cgm/k/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dexcom/cgm/k/j;->getTimeInSeconds()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    .line 172
    iget-object v0, p0, Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber$InsertHandlerThread;->this$0:Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber;

    iget-object v1, p0, Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber$InsertHandlerThread;->this$0:Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber;

    invoke-static {v1}, Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber;->access$200(Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber;)Lcom/dexcom/cgm/k/j;

    move-result-object v1

    sget-object v2, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x1e

    invoke-virtual {v2, v4, v5}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/dexcom/cgm/k/j;->subtractSeconds(J)Lcom/dexcom/cgm/k/j;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber;->access$302(Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber;Lcom/dexcom/cgm/k/j;)Lcom/dexcom/cgm/k/j;

    .line 175
    :cond_2
    iget-object v0, p0, Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber$InsertHandlerThread;->this$0:Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber;

    new-instance v1, Lcom/dexcom/cgm/k/j;

    iget-object v2, p0, Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber$InsertHandlerThread;->this$0:Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber;

    invoke-static {v2}, Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber;->access$300(Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber;)Lcom/dexcom/cgm/k/j;

    move-result-object v2

    invoke-virtual {v2}, Lcom/dexcom/cgm/k/j;->getTimeInSeconds()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Lcom/dexcom/cgm/k/j;-><init>(J)V

    invoke-static {v0, v1}, Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber;->access$502(Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber;Lcom/dexcom/cgm/k/j;)Lcom/dexcom/cgm/k/j;

    .line 181
    :cond_3
    iget-object v0, p0, Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber$InsertHandlerThread;->this$0:Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber;

    iget-object v1, p0, Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber$InsertHandlerThread;->this$0:Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber;

    invoke-static {v1}, Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber;->access$500(Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber;)Lcom/dexcom/cgm/k/j;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber;->access$302(Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber;Lcom/dexcom/cgm/k/j;)Lcom/dexcom/cgm/k/j;

    .line 184
    iget-object v0, p0, Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber$InsertHandlerThread;->this$0:Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber;

    new-instance v1, Lcom/dexcom/cgm/k/j;

    iget-object v2, p0, Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber$InsertHandlerThread;->this$0:Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber;

    invoke-static {v2}, Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber;->access$300(Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber;)Lcom/dexcom/cgm/k/j;

    move-result-object v2

    invoke-virtual {v2}, Lcom/dexcom/cgm/k/j;->getTimeInSeconds()J

    move-result-wide v2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v6, 0x1

    invoke-virtual {v4, v6, v7}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v4

    add-long/2addr v2, v4

    invoke-direct {v1, v2, v3}, Lcom/dexcom/cgm/k/j;-><init>(J)V

    invoke-static {v0, v1}, Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber;->access$502(Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber;Lcom/dexcom/cgm/k/j;)Lcom/dexcom/cgm/k/j;

    .line 186
    iget-object v0, p0, Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber$InsertHandlerThread;->this$0:Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber;

    invoke-static {v0}, Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber;->access$500(Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber;)Lcom/dexcom/cgm/k/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dexcom/cgm/k/j;->getTimeInSeconds()J

    move-result-wide v0

    iget-object v2, p0, Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber$InsertHandlerThread;->this$0:Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber;

    invoke-static {v2}, Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber;->access$200(Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber;)Lcom/dexcom/cgm/k/j;

    move-result-object v2

    invoke-virtual {v2}, Lcom/dexcom/cgm/k/j;->getTimeInSeconds()J

    move-result-wide v2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    .line 187
    invoke-virtual {v4, v8, v9}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v4

    sub-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-lez v0, :cond_4

    .line 189
    iget-object v0, p0, Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber$InsertHandlerThread;->this$0:Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber;

    iget-object v1, p0, Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber$InsertHandlerThread;->this$0:Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber;

    invoke-static {v1}, Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber;->access$200(Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber;)Lcom/dexcom/cgm/k/j;

    move-result-object v1

    sget-object v2, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v8, v9}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/dexcom/cgm/k/j;->subtractSeconds(J)Lcom/dexcom/cgm/k/j;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber;->access$502(Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber;Lcom/dexcom/cgm/k/j;)Lcom/dexcom/cgm/k/j;

    .line 190
    iget-object v0, p0, Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber$InsertHandlerThread;->this$0:Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber;->access$102(Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 193
    :cond_4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 194
    iget-object v0, p0, Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber$InsertHandlerThread;->this$0:Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber;

    invoke-static {v0}, Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber;->access$400(Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber;)Lcom/dexcom/cgm/i/a;

    move-result-object v0

    iget-object v2, p0, Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber$InsertHandlerThread;->this$0:Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber;

    invoke-static {v2}, Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber;->access$300(Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber;)Lcom/dexcom/cgm/k/j;

    move-result-object v2

    iget-object v3, p0, Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber$InsertHandlerThread;->this$0:Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber;

    invoke-static {v3}, Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber;->access$500(Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber;)Lcom/dexcom/cgm/k/j;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lcom/dexcom/cgm/i/a;->getCgmDataInInterval(Lcom/dexcom/cgm/k/j;Lcom/dexcom/cgm/k/j;)Ljava/util/List;

    move-result-object v0

    .line 197
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/h/a/c;

    .line 199
    invoke-virtual {v0}, Lcom/dexcom/cgm/h/a/c;->getGlucoseValue()I

    move-result v3

    const/16 v4, 0x27

    if-lt v3, v4, :cond_5

    invoke-virtual {v0}, Lcom/dexcom/cgm/h/a/c;->getGlucoseValue()I

    move-result v3

    const/16 v4, 0x191

    if-gt v3, v4, :cond_5

    .line 202
    invoke-virtual {v0}, Lcom/dexcom/cgm/h/a/c;->isDisplayOnly()Z

    move-result v3

    if-nez v3, :cond_5

    .line 204
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 208
    :cond_6
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 210
    iget-object v0, p0, Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber$InsertHandlerThread;->this$0:Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber;

    invoke-static {v0}, Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber;->access$100(Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 215
    :cond_7
    return-object v1
.end method

.method private insertGlucose(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/dexcom/cgm/h/a/c;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 234
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 238
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/h/a/c;

    .line 240
    iget-object v3, p0, Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber$InsertHandlerThread;->this$0:Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber;

    invoke-virtual {v0}, Lcom/dexcom/cgm/h/a/c;->getSystemTimeStamp()Lcom/dexcom/cgm/k/j;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber;->access$702(Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber;Lcom/dexcom/cgm/k/j;)Lcom/dexcom/cgm/k/j;

    .line 241
    iget-object v3, p0, Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber$InsertHandlerThread;->this$0:Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber;

    invoke-virtual {v0}, Lcom/dexcom/cgm/h/a/c;->getSystemTimeStamp()Lcom/dexcom/cgm/k/j;

    move-result-object v4

    invoke-virtual {v4}, Lcom/dexcom/cgm/k/j;->getTimeInSeconds()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    invoke-static {v3, v4, v5}, Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber;->access$802(Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber;J)J

    .line 242
    iget-object v3, p0, Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber$InsertHandlerThread;->this$0:Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber;

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v4

    iget-object v5, p0, Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber$InsertHandlerThread;->this$0:Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber;

    invoke-static {v5}, Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber;->access$800(Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber;)J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v4

    int-to-long v4, v4

    invoke-static {v3, v4, v5}, Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber;->access$902(Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber;J)J

    .line 243
    invoke-virtual {v0}, Lcom/dexcom/cgm/h/a/c;->getGlucoseValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber$InsertHandlerThread;->convertGlucose(I)Ljava/lang/Float;

    move-result-object v0

    .line 244
    new-instance v3, Lcom/samsung/android/sdk/healthdata/HealthData;

    invoke-direct {v3}, Lcom/samsung/android/sdk/healthdata/HealthData;-><init>()V

    .line 245
    const-string v4, "start_time"

    iget-object v5, p0, Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber$InsertHandlerThread;->this$0:Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber;

    invoke-static {v5}, Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber;->access$800(Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber;)J

    move-result-wide v6

    invoke-virtual {v3, v4, v6, v7}, Lcom/samsung/android/sdk/healthdata/HealthData;->putLong(Ljava/lang/String;J)V

    .line 246
    const-string v4, "time_offset"

    iget-object v5, p0, Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber$InsertHandlerThread;->this$0:Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber;

    invoke-static {v5}, Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber;->access$900(Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber;)J

    move-result-wide v6

    invoke-virtual {v3, v4, v6, v7}, Lcom/samsung/android/sdk/healthdata/HealthData;->putLong(Ljava/lang/String;J)V

    .line 247
    const-string v4, "glucose"

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {v3, v4, v0}, Lcom/samsung/android/sdk/healthdata/HealthData;->putFloat(Ljava/lang/String;F)V

    .line 248
    const-string v0, "measurement_type"

    const v4, 0x15f91

    invoke-virtual {v3, v0, v4}, Lcom/samsung/android/sdk/healthdata/HealthData;->putInt(Ljava/lang/String;I)V

    .line 250
    new-instance v0, Lcom/samsung/android/sdk/healthdata/ae;

    iget-object v4, p0, Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber$InsertHandlerThread;->m_sHealthAdapter:Lcom/dexcom/cgm/activities/shealth/SHealthAdapter;

    iget-object v4, v4, Lcom/dexcom/cgm/activities/shealth/SHealthAdapter;->dataStore:Lcom/samsung/android/sdk/healthdata/w;

    invoke-direct {v0, v4}, Lcom/samsung/android/sdk/healthdata/ae;-><init>(Lcom/samsung/android/sdk/healthdata/w;)V

    .line 251
    invoke-virtual {v0}, Lcom/samsung/android/sdk/healthdata/ae;->getLocalDevice()Lcom/samsung/android/sdk/healthdata/HealthDevice;

    move-result-object v0

    .line 252
    invoke-virtual {v0}, Lcom/samsung/android/sdk/healthdata/HealthDevice;->getUuid()Ljava/lang/String;

    move-result-object v0

    .line 250
    invoke-virtual {v3, v0}, Lcom/samsung/android/sdk/healthdata/HealthData;->setSourceDevice(Ljava/lang/String;)V

    .line 253
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 265
    :catch_0
    move-exception v0

    .line 267
    const-string v1, "S-Health"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to insert glucose values to S Health DataStore "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 268
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 267
    invoke-static {v1, v0}, Lcom/dexcom/cgm/f/b;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    :goto_1
    return-void

    .line 256
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber$InsertHandlerThread;->this$0:Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber;

    new-instance v2, Lcom/dexcom/cgm/k/j;

    iget-object v3, p0, Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber$InsertHandlerThread;->this$0:Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber;

    invoke-static {v3}, Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber;->access$500(Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber;)Lcom/dexcom/cgm/k/j;

    move-result-object v3

    invoke-virtual {v3}, Lcom/dexcom/cgm/k/j;->getTimeInSeconds()J

    move-result-wide v4

    const-wide/16 v6, 0xa

    add-long/2addr v4, v6

    invoke-direct {v2, v4, v5}, Lcom/dexcom/cgm/k/j;-><init>(J)V

    invoke-static {v0, v2}, Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber;->access$502(Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber;Lcom/dexcom/cgm/k/j;)Lcom/dexcom/cgm/k/j;

    .line 258
    new-instance v0, Lcom/samsung/android/sdk/healthdata/t;

    invoke-direct {v0}, Lcom/samsung/android/sdk/healthdata/t;-><init>()V

    const-string v2, "com.samsung.health.blood_glucose"

    .line 260
    invoke-virtual {v0, v2}, Lcom/samsung/android/sdk/healthdata/t;->setDataType(Ljava/lang/String;)Lcom/samsung/android/sdk/healthdata/t;

    move-result-object v0

    .line 261
    invoke-virtual {v0}, Lcom/samsung/android/sdk/healthdata/t;->build()Lcom/samsung/android/sdk/healthdata/s;

    move-result-object v0

    .line 262
    invoke-interface {v0, v1}, Lcom/samsung/android/sdk/healthdata/s;->addHealthData(Ljava/util/List;)V

    .line 263
    iget-object v1, p0, Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber$InsertHandlerThread;->m_resolver:Lcom/samsung/android/sdk/healthdata/HealthDataResolver;

    invoke-virtual {v1, v0}, Lcom/samsung/android/sdk/healthdata/HealthDataResolver;->insert(Lcom/samsung/android/sdk/healthdata/s;)Lcom/samsung/android/sdk/healthdata/HealthResultHolder;

    move-result-object v0

    iget-object v1, p0, Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber$InsertHandlerThread;->mResultListener:Lcom/samsung/android/sdk/healthdata/aj;

    invoke-interface {v0, v1}, Lcom/samsung/android/sdk/healthdata/HealthResultHolder;->setResultListener(Lcom/samsung/android/sdk/healthdata/aj;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private insertionsCompleted()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 220
    iget-object v0, p0, Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber$InsertHandlerThread;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 221
    iget-object v0, p0, Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber$InsertHandlerThread;->m_sHealthAdapter:Lcom/dexcom/cgm/activities/shealth/SHealthAdapter;

    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/shealth/SHealthAdapter;->disconnect()V

    .line 222
    iget-object v0, p0, Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber$InsertHandlerThread;->this$0:Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber;

    invoke-static {v0}, Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber;->access$000(Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber;)Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber$InsertHandlerThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber$InsertHandlerThread;->quit()Z

    .line 223
    iget-object v0, p0, Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber$InsertHandlerThread;->this$0:Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber;

    invoke-static {v0, v2}, Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber;->access$002(Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber;Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber$InsertHandlerThread;)Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber$InsertHandlerThread;

    .line 224
    iget-object v0, p0, Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber$InsertHandlerThread;->this$0:Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber;->access$102(Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 225
    iget-object v0, p0, Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber$InsertHandlerThread;->this$0:Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber;

    invoke-static {v0, v2}, Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber;->access$302(Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber;Lcom/dexcom/cgm/k/j;)Lcom/dexcom/cgm/k/j;

    .line 226
    iget-object v0, p0, Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber$InsertHandlerThread;->this$0:Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber;

    invoke-static {v0, v2}, Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber;->access$502(Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber;Lcom/dexcom/cgm/k/j;)Lcom/dexcom/cgm/k/j;

    .line 227
    iget-object v0, p0, Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber$InsertHandlerThread;->this$0:Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber;

    invoke-static {v0, v2}, Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber;->access$202(Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber;Lcom/dexcom/cgm/k/j;)Lcom/dexcom/cgm/k/j;

    .line 228
    iget-object v0, p0, Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber$InsertHandlerThread;->this$0:Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber;

    sget-object v1, Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber$SHealthHandlerThreadStatus;->FREE:Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber$SHealthHandlerThreadStatus;

    invoke-static {v0, v1}, Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber;->access$602(Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber;Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber$SHealthHandlerThreadStatus;)Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber$SHealthHandlerThreadStatus;

    .line 229
    return-void
.end method


# virtual methods
.method public connectToSHealth()V
    .locals 2

    .prologue
    .line 314
    new-instance v0, Lcom/dexcom/cgm/activities/shealth/SHealthAdapter;

    iget-object v1, p0, Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber$InsertHandlerThread;->this$0:Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber;

    invoke-static {v1}, Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber;->access$1100(Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/dexcom/cgm/activities/shealth/SHealthAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber$InsertHandlerThread;->m_sHealthAdapter:Lcom/dexcom/cgm/activities/shealth/SHealthAdapter;

    .line 315
    iget-object v0, p0, Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber$InsertHandlerThread;->m_sHealthAdapter:Lcom/dexcom/cgm/activities/shealth/SHealthAdapter;

    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/shealth/SHealthAdapter;->getResolver()Lcom/samsung/android/sdk/healthdata/HealthDataResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber$InsertHandlerThread;->m_resolver:Lcom/samsung/android/sdk/healthdata/HealthDataResolver;

    .line 316
    iget-object v0, p0, Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber$InsertHandlerThread;->m_sHealthAdapter:Lcom/dexcom/cgm/activities/shealth/SHealthAdapter;

    new-instance v1, Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber$InsertHandlerThread$2;

    invoke-direct {v1, p0}, Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber$InsertHandlerThread$2;-><init>(Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber$InsertHandlerThread;)V

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/shealth/SHealthAdapter;->connectForReadOrWrite(Lcom/dexcom/cgm/activities/shealth/SHealthAdapter$SHealthCallback;)V

    .line 360
    return-void
.end method

.method insertNextList()V
    .locals 2

    .prologue
    .line 137
    iget-object v0, p0, Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber$InsertHandlerThread;->this$0:Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber;

    invoke-static {v0}, Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber;->access$100(Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 143
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber$InsertHandlerThread;->getNextGlucoseList()Ljava/util/List;

    move-result-object v0

    .line 144
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 146
    invoke-direct {p0, v0}, Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber$InsertHandlerThread;->insertGlucose(Ljava/util/List;)V

    .line 154
    :goto_0
    return-void

    .line 150
    :cond_0
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber$InsertHandlerThread;->insertionsCompleted()V

    goto :goto_0
.end method

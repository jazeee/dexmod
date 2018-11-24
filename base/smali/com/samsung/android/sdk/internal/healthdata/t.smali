.class public Lcom/samsung/android/sdk/internal/healthdata/t;
.super Ljava/lang/Object;
.source "IpcUtil.java"


# static fields
.field public static final KEY_CODE:Ljava/lang/String; = "key"

.field public static final KEY_COUNT:Ljava/lang/String; = "count"

.field public static final KEY_PARCEL:Ljava/lang/String; = "parcel"

.field public static final KEY_TYPE:Ljava/lang/String; = "type"

.field public static final TYPE_AGGREGATE:I = 0x2

.field public static final TYPE_NONE:I = 0x0

.field public static final TYPE_PERMISSION:I = 0x3

.field public static final TYPE_READ:I = 0x1


# instance fields
.field private final m_opcode:B

.field private final m_requestCode:B

.field private final m_success:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 1146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1148
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 1149
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    iput-byte v2, p0, Lcom/samsung/android/sdk/internal/healthdata/t;->m_opcode:B

    .line 1150
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    iput-byte v2, p0, Lcom/samsung/android/sdk/internal/healthdata/t;->m_requestCode:B

    .line 1151
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    if-ne v0, v1, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/samsung/android/sdk/internal/healthdata/t;->m_success:Z

    .line 1152
    return-void

    .line 1151
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getAsyncResultHolder(Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$ForwardAsync;Landroid/os/Looper;)Lcom/samsung/android/sdk/healthdata/HealthResultHolder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/samsung/android/sdk/healthdata/HealthResultHolder$BaseResult;",
            ">(",
            "Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$ForwardAsync;",
            "Landroid/os/Looper;",
            ")",
            "Lcom/samsung/android/sdk/healthdata/HealthResultHolder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 66
    new-instance v0, Lcom/samsung/android/sdk/internal/healthdata/u;

    invoke-direct {v0, p1, p0}, Lcom/samsung/android/sdk/internal/healthdata/u;-><init>(Landroid/os/Looper;Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$ForwardAsync;)V

    .line 73
    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$ForwardAsync;->registerListener(Lcom/samsung/android/sdk/internal/healthdata/x;)V

    .line 75
    return-object v0
.end method

.method public static sendBlob(Lcom/samsung/android/sdk/healthdata/HealthData;Ljava/lang/String;)V
    .locals 9

    .prologue
    .line 79
    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/healthdata/HealthData;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 80
    if-nez v0, :cond_0

    .line 123
    :goto_0
    return-void

    .line 84
    :cond_0
    new-instance v3, Landroid/net/LocalSocket;

    invoke-direct {v3}, Landroid/net/LocalSocket;-><init>()V

    .line 85
    const/4 v1, 0x0

    .line 87
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/samsung/android/sdk/healthdata/w;->getPlatformPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ".BlobSocketServer"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 88
    invoke-static {}, Lcom/samsung/android/sdk/healthdata/w;->getMyUserId()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_1

    .line 89
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/samsung/android/sdk/healthdata/w;->getMyUserId()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 91
    :cond_1
    new-instance v4, Landroid/net/LocalSocketAddress;

    invoke-direct {v4, v2}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V

    .line 92
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-virtual {v3}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 94
    :try_start_1
    invoke-static {}, Lcom/samsung/android/sdk/healthdata/w;->getSocketKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 96
    new-instance v1, Ljava/lang/String;

    const-string v4, "UTF-8"

    invoke-direct {v1, v0, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 97
    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/healthdata/HealthData;->getBlob(Ljava/lang/String;)[B

    move-result-object v0

    .line 98
    if-eqz v0, :cond_2

    .line 100
    array-length v1, v0

    invoke-virtual {v2, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 102
    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->write([B)V

    .line 106
    :goto_1
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->flush()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 112
    :try_start_2
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 119
    :goto_2
    :try_start_3
    invoke-virtual {v3}, Landroid/net/LocalSocket;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 123
    :catch_0
    move-exception v0

    goto :goto_0

    .line 104
    :cond_2
    const/4 v0, 0x0

    :try_start_4
    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeInt(I)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_1

    .line 108
    :catch_1
    move-exception v0

    move-object v0, v2

    :goto_3
    :try_start_5
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Blob data sending failure"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 110
    :catchall_0
    move-exception v1

    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    :goto_4
    if-eqz v1, :cond_3

    .line 112
    :try_start_6
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 119
    :cond_3
    :goto_5
    :try_start_7
    invoke-virtual {v3}, Landroid/net/LocalSocket;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    .line 122
    :goto_6
    throw v0

    :catch_2
    move-exception v0

    goto :goto_2

    :catch_3
    move-exception v1

    goto :goto_5

    :catch_4
    move-exception v1

    goto :goto_6

    .line 110
    :catchall_1
    move-exception v0

    goto :goto_4

    :catchall_2
    move-exception v0

    move-object v1, v2

    goto :goto_4

    .line 108
    :catch_5
    move-exception v0

    move-object v0, v1

    goto :goto_3
.end method


# virtual methods
.method public isSuccess()Z
    .locals 1

    .prologue
    .line 1156
    iget-boolean v0, p0, Lcom/samsung/android/sdk/internal/healthdata/t;->m_success:Z

    return v0
.end method

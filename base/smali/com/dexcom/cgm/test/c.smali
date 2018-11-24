.class final Lcom/dexcom/cgm/test/c;
.super Ljava/lang/Object;
.source "TestService.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:Ljava/net/ServerSocket;

.field private b:Z

.field private final c:I

.field private synthetic d:Lcom/dexcom/cgm/test/TestService;


# direct methods
.method public constructor <init>(Lcom/dexcom/cgm/test/TestService;I)V
    .locals 1

    .prologue
    .line 106
    iput-object p1, p0, Lcom/dexcom/cgm/test/c;->d:Lcom/dexcom/cgm/test/TestService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dexcom/cgm/test/c;->b:Z

    .line 107
    iput p2, p0, Lcom/dexcom/cgm/test/c;->c:I

    .line 108
    return-void
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 176
    :try_start_0
    const-string v0, "TestSocket"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Request: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/dexcom/cgm/f/b;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    invoke-static {}, Lcom/dexcom/cgm/model/GsonFactory;->get()Lcom/google/gson/Gson;

    move-result-object v0

    const-class v1, Lcom/dexcom/cgm/test/api/TestRequest;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/test/api/TestRequest;

    .line 178
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/dexcom/cgm/test/api/TestRequest;->getRequest()Lcom/dexcom/cgm/test/api/TestRequestType;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/dexcom/cgm/test/api/TestRequest;->getPayload()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    .line 180
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Missing fields"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Lcom/dexcom/cgm/test/a; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 191
    :catch_0
    move-exception v0

    .line 193
    throw v0

    .line 183
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/dexcom/cgm/test/c;->d:Lcom/dexcom/cgm/test/TestService;

    invoke-static {v1}, Lcom/dexcom/cgm/test/TestService;->access$100(Lcom/dexcom/cgm/test/TestService;)Lcom/dexcom/cgm/test/api/TestDispatcher;

    move-result-object v1

    if-nez v1, :cond_2

    .line 185
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Test Dispatcher not set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Lcom/dexcom/cgm/test/a; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 195
    :catch_1
    move-exception v0

    .line 197
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to process test command: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 198
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/dexcom/cgm/test/api/TestResponse;->failure(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/dexcom/cgm/test/api/TestResponse;

    move-result-object v0

    .line 199
    invoke-static {}, Lcom/dexcom/cgm/model/GsonFactory;->get()Lcom/google/gson/Gson;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 188
    :cond_2
    :try_start_2
    iget-object v1, p0, Lcom/dexcom/cgm/test/c;->d:Lcom/dexcom/cgm/test/TestService;

    invoke-static {v1}, Lcom/dexcom/cgm/test/TestService;->access$100(Lcom/dexcom/cgm/test/TestService;)Lcom/dexcom/cgm/test/api/TestDispatcher;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/dexcom/cgm/test/api/TestDispatcher;->dispatch(Lcom/dexcom/cgm/test/api/TestRequest;)Lcom/dexcom/cgm/test/api/TestResponse;

    move-result-object v0

    .line 189
    invoke-static {}, Lcom/dexcom/cgm/model/GsonFactory;->get()Lcom/google/gson/Gson;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_2
    .catch Lcom/dexcom/cgm/test/a; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v0

    goto :goto_0
.end method

.method private a(Ljava/net/Socket;)V
    .locals 9

    .prologue
    const/4 v2, 0x0

    .line 142
    :try_start_0
    new-instance v3, Ljava/io/PrintWriter;

    invoke-virtual {p1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {v3, v0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 143
    :try_start_1
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/InputStreamReader;

    .line 144
    invoke-virtual {p1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v4, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 147
    :try_start_2
    iget-object v0, p0, Lcom/dexcom/cgm/test/c;->d:Lcom/dexcom/cgm/test/TestService;

    const-string v1, "power"

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/test/TestService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 149
    const/4 v1, 0x1

    const-string v5, "TestService"

    invoke-virtual {v0, v1, v5}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    .line 150
    :goto_0
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 152
    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 155
    :try_start_3
    invoke-direct {p0, v0}, Lcom/dexcom/cgm/test/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 156
    const-string v5, "TestSocket"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Response: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/dexcom/cgm/f/b;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 161
    :try_start_4
    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    goto :goto_0

    .line 142
    :catch_0
    move-exception v0

    :try_start_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 164
    :catchall_0
    move-exception v1

    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    :goto_1
    if-eqz v1, :cond_1

    :try_start_6
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    :goto_2
    :try_start_7
    throw v0
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 142
    :catch_1
    move-exception v0

    :try_start_8
    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 164
    :catchall_1
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    :goto_3
    if-eqz v2, :cond_2

    :try_start_9
    invoke-virtual {v3}, Ljava/io/PrintWriter;->close()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_4
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2

    :goto_4
    :try_start_a
    throw v0
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_2

    .line 165
    :catch_2
    move-exception v0

    .line 167
    const-string v1, "TestSocket"

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/dexcom/cgm/f/b;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 170
    :goto_5
    return-void

    .line 161
    :catchall_2
    move-exception v0

    :try_start_b
    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    throw v0
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .line 164
    :catchall_3
    move-exception v0

    move-object v1, v2

    goto :goto_1

    :cond_0
    :try_start_c
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_1
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    :try_start_d
    invoke-virtual {v3}, Ljava/io/PrintWriter;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_2

    goto :goto_5

    :catch_3
    move-exception v4

    :try_start_e
    invoke-virtual {v1, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :catchall_4
    move-exception v0

    goto :goto_3

    :cond_1
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_1
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    goto :goto_2

    :catch_4
    move-exception v1

    :try_start_f
    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_4

    :cond_2
    invoke-virtual {v3}, Ljava/io/PrintWriter;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_2

    goto :goto_4
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 208
    :try_start_0
    iget-object v0, p0, Lcom/dexcom/cgm/test/c;->a:Ljava/net/ServerSocket;

    if-eqz v0, :cond_0

    .line 212
    iget-object v0, p0, Lcom/dexcom/cgm/test/c;->a:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 219
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final run()V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 115
    .line 1121
    :goto_0
    const-string v0, "TestSocket"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Waiting on port: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/dexcom/cgm/test/c;->c:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/dexcom/cgm/f/b;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1122
    :try_start_0
    new-instance v3, Ljava/net/ServerSocket;

    iget v0, p0, Lcom/dexcom/cgm/test/c;->c:I

    invoke-direct {v3, v0}, Ljava/net/ServerSocket;-><init>(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1124
    :try_start_1
    iput-object v3, p0, Lcom/dexcom/cgm/test/c;->a:Ljava/net/ServerSocket;

    .line 1125
    invoke-virtual {v3}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result-object v4

    .line 1127
    :try_start_2
    const-string v0, "TestSocket"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, "Test socket opened: "

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1128
    invoke-virtual {v4}, Ljava/net/Socket;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v5

    invoke-virtual {v5}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ":"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v5, p0, Lcom/dexcom/cgm/test/c;->c:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1127
    invoke-static {v0, v1}, Lcom/dexcom/cgm/f/b;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1130
    invoke-direct {p0, v4}, Lcom/dexcom/cgm/test/c;->a(Ljava/net/Socket;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 1131
    if-eqz v4, :cond_0

    :try_start_3
    invoke-virtual {v4}, Ljava/net/Socket;->close()V

    .line 1132
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dexcom/cgm/test/c;->a:Ljava/net/ServerSocket;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 1133
    :try_start_4
    invoke-virtual {v3}, Ljava/net/ServerSocket;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    .line 1134
    :catch_0
    move-exception v0

    .line 1136
    const-string v1, "TestSocket"

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v0}, Lcom/dexcom/cgm/f/b;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1125
    :catch_1
    move-exception v0

    :try_start_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1131
    :catchall_0
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    :goto_1
    if-eqz v4, :cond_1

    if-eqz v1, :cond_2

    :try_start_6
    invoke-virtual {v4}, Ljava/net/Socket;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :cond_1
    :goto_2
    :try_start_7
    throw v0
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 1122
    :catch_2
    move-exception v0

    :try_start_8
    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 1133
    :catchall_1
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    :goto_3
    if-eqz v1, :cond_3

    :try_start_9
    invoke-virtual {v3}, Ljava/net/ServerSocket;->close()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_4
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_0

    :goto_4
    :try_start_a
    throw v0
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_0

    .line 1131
    :catch_3
    move-exception v4

    :try_start_b
    invoke-virtual {v1, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    .line 1133
    :catchall_2
    move-exception v0

    move-object v1, v2

    goto :goto_3

    .line 1131
    :cond_2
    invoke-virtual {v4}, Ljava/net/Socket;->close()V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_2
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    goto :goto_2

    .line 1133
    :catch_4
    move-exception v3

    :try_start_c
    invoke-virtual {v1, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_4

    :cond_3
    invoke-virtual {v3}, Ljava/net/ServerSocket;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_0

    goto :goto_4

    .line 1131
    :catchall_3
    move-exception v0

    move-object v1, v2

    goto :goto_1
.end method
